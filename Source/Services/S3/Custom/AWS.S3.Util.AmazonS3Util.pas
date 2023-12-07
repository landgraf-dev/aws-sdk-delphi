unit AWS.S3.Util.AmazonS3Util;

interface

uses
  System.Generics.Collections, System.Generics.Defaults, System.Classes,
  AWS.SDKUtils;

type
  TAmazonS3Util = class
  strict private
    class var FExtensionToMime: TDictionary<string, string>;
  strict private
    class constructor Create;
    class destructor Destroy;
  public
    class function MimeTypeFromExtension(const Ext: string): string; static;
    class function GenerateMD5ChecksumForStream(Stream: TStream): string; static;
  end;

implementation

{ TAmazonS3Util }

class constructor TAmazonS3Util.Create;
begin
  FExtensionToMime := TDictionary<string, string>.Create(TIStringComparer.Ordinal);
  FExtensionToMime.Add('.ai', 'application/postscript');
  FExtensionToMime.Add('.aif', 'audio/x-aiff');
  FExtensionToMime.Add('.aifc', 'audio/x-aiff');
  FExtensionToMime.Add('.aiff', 'audio/x-aiff');
  FExtensionToMime.Add('.asc', 'text/plain');
  FExtensionToMime.Add('.au', 'audio/basic');
  FExtensionToMime.Add('.avi', 'video/x-msvideo');
  FExtensionToMime.Add('.bcpio', 'application/x-bcpio');
  FExtensionToMime.Add('.bin', 'application/octet-stream');
  FExtensionToMime.Add('.c', 'text/plain');
  FExtensionToMime.Add('.cc', 'text/plain');
  FExtensionToMime.Add('.ccad', 'application/clariscad');
  FExtensionToMime.Add('.cdf', 'application/x-netcdf');
  FExtensionToMime.Add('.class', 'application/octet-stream');
  FExtensionToMime.Add('.cpio', 'application/x-cpio');
  FExtensionToMime.Add('.cpp', 'text/plain');
  FExtensionToMime.Add('.cpt', 'application/mac-compactpro');
  FExtensionToMime.Add('.cs', 'text/plain');
  FExtensionToMime.Add('.csh', 'application/x-csh');
  FExtensionToMime.Add('.css', 'text/css');
  FExtensionToMime.Add('.dcr', 'application/x-director');
  FExtensionToMime.Add('.dir', 'application/x-director');
  FExtensionToMime.Add('.dms', 'application/octet-stream');
  FExtensionToMime.Add('.doc', 'application/msword');
  FExtensionToMime.Add('.docx', 'application/vnd.openxmlformats-officedocument.wordprocessingml.document');
  FExtensionToMime.Add('.dot', 'application/msword');
  FExtensionToMime.Add('.drw', 'application/drafting');
  FExtensionToMime.Add('.dvi', 'application/x-dvi');
  FExtensionToMime.Add('.dwg', 'application/acad');
  FExtensionToMime.Add('.dxf', 'application/dxf');
  FExtensionToMime.Add('.dxr', 'application/x-director');
  FExtensionToMime.Add('.eps', 'application/postscript');
  FExtensionToMime.Add('.etx', 'text/x-setext');
  FExtensionToMime.Add('.exe', 'application/octet-stream');
  FExtensionToMime.Add('.ez', 'application/andrew-inset');
  FExtensionToMime.Add('.f', 'text/plain');
  FExtensionToMime.Add('.f90', 'text/plain');
  FExtensionToMime.Add('.fli', 'video/x-fli');
  FExtensionToMime.Add('.gif', 'image/gif');
  FExtensionToMime.Add('.gtar', 'application/x-gtar');
  FExtensionToMime.Add('.gz', 'application/x-gzip');
  FExtensionToMime.Add('.h', 'text/plain');
  FExtensionToMime.Add('.hdf', 'application/x-hdf');
  FExtensionToMime.Add('.hh', 'text/plain');
  FExtensionToMime.Add('.hqx', 'application/mac-binhex40');
  FExtensionToMime.Add('.htm', 'text/html');
  FExtensionToMime.Add('.html', 'text/html');
  FExtensionToMime.Add('.ice', 'x-conference/x-cooltalk');
  FExtensionToMime.Add('.ief', 'image/ief');
  FExtensionToMime.Add('.iges', 'model/iges');
  FExtensionToMime.Add('.igs', 'model/iges');
  FExtensionToMime.Add('.ips', 'application/x-ipscript');
  FExtensionToMime.Add('.ipx', 'application/x-ipix');
  FExtensionToMime.Add('.jpe', 'image/jpeg');
  FExtensionToMime.Add('.jpeg', 'image/jpeg');
  FExtensionToMime.Add('.jpg', 'image/jpeg');
  FExtensionToMime.Add('.js', 'application/x-javascript');
  FExtensionToMime.Add('.json', 'application/json');
  FExtensionToMime.Add('.kar', 'audio/midi');
  FExtensionToMime.Add('.latex', 'application/x-latex');
  FExtensionToMime.Add('.lha', 'application/octet-stream');
  FExtensionToMime.Add('.lsp', 'application/x-lisp');
  FExtensionToMime.Add('.lzh', 'application/octet-stream');
  FExtensionToMime.Add('.m', 'text/plain');
  FExtensionToMime.Add('.m3u8', 'application/x-mpegURL');
  FExtensionToMime.Add('.man', 'application/x-troff-man');
  FExtensionToMime.Add('.me', 'application/x-troff-me');
  FExtensionToMime.Add('.mesh', 'model/mesh');
  FExtensionToMime.Add('.mid', 'audio/midi');
  FExtensionToMime.Add('.midi', 'audio/midi');
  FExtensionToMime.Add('.mime', 'www/mime');
  FExtensionToMime.Add('.mov', 'video/quicktime');
  FExtensionToMime.Add('.movie', 'video/x-sgi-movie');
  FExtensionToMime.Add('.mp2', 'audio/mpeg');
  FExtensionToMime.Add('.mp3', 'audio/mpeg');
  FExtensionToMime.Add('.mpe', 'video/mpeg');
  FExtensionToMime.Add('.mpeg', 'video/mpeg');
  FExtensionToMime.Add('.mpg', 'video/mpeg');
  FExtensionToMime.Add('.mpga', 'audio/mpeg');
  FExtensionToMime.Add('.ms', 'application/x-troff-ms');
  FExtensionToMime.Add('.msi', 'application/x-ole-storage');
  FExtensionToMime.Add('.msh', 'model/mesh');
  FExtensionToMime.Add('.nc', 'application/x-netcdf');
  FExtensionToMime.Add('.oda', 'application/oda');
  FExtensionToMime.Add('.pbm', 'image/x-portable-bitmap');
  FExtensionToMime.Add('.pdb', 'chemical/x-pdb');
  FExtensionToMime.Add('.pdf', 'application/pdf');
  FExtensionToMime.Add('.pgm', 'image/x-portable-graymap');
  FExtensionToMime.Add('.pgn', 'application/x-chess-pgn');
  FExtensionToMime.Add('.png', 'image/png');
  FExtensionToMime.Add('.pnm', 'image/x-portable-anymap');
  FExtensionToMime.Add('.pot', 'application/mspowerpoint');
  FExtensionToMime.Add('.ppm', 'image/x-portable-pixmap');
  FExtensionToMime.Add('.pps', 'application/mspowerpoint');
  FExtensionToMime.Add('.ppt', 'application/mspowerpoint');
  FExtensionToMime.Add('.pptx', 'application/vnd.openxmlformats-officedocument.presentationml.presentation');
  FExtensionToMime.Add('.ppz', 'application/mspowerpoint');
  FExtensionToMime.Add('.pre', 'application/x-freelance');
  FExtensionToMime.Add('.prt', 'application/pro_eng');
  FExtensionToMime.Add('.ps', 'application/postscript');
  FExtensionToMime.Add('.qt', 'video/quicktime');
  FExtensionToMime.Add('.ra', 'audio/x-realaudio');
  FExtensionToMime.Add('.ram', 'audio/x-pn-realaudio');
  FExtensionToMime.Add('.ras', 'image/cmu-raster');
  FExtensionToMime.Add('.rgb', 'image/x-rgb');
  FExtensionToMime.Add('.rm', 'audio/x-pn-realaudio');
  FExtensionToMime.Add('.roff', 'application/x-troff');
  FExtensionToMime.Add('.rpm', 'audio/x-pn-realaudio-plugin');
  FExtensionToMime.Add('.rtf', 'text/rtf');
  FExtensionToMime.Add('.rtx', 'text/richtext');
  FExtensionToMime.Add('.scm', 'application/x-lotusscreencam');
  FExtensionToMime.Add('.set', 'application/set');
  FExtensionToMime.Add('.sgm', 'text/sgml');
  FExtensionToMime.Add('.sgml', 'text/sgml');
  FExtensionToMime.Add('.sh', 'application/x-sh');
  FExtensionToMime.Add('.shar', 'application/x-shar');
  FExtensionToMime.Add('.silo', 'model/mesh');
  FExtensionToMime.Add('.sit', 'application/x-stuffit');
  FExtensionToMime.Add('.skd', 'application/x-koan');
  FExtensionToMime.Add('.skm', 'application/x-koan');
  FExtensionToMime.Add('.skp', 'application/x-koan');
  FExtensionToMime.Add('.skt', 'application/x-koan');
  FExtensionToMime.Add('.smi', 'application/smil');
  FExtensionToMime.Add('.smil', 'application/smil');
  FExtensionToMime.Add('.snd', 'audio/basic');
  FExtensionToMime.Add('.sol', 'application/solids');
  FExtensionToMime.Add('.spl', 'application/x-futuresplash');
  FExtensionToMime.Add('.src', 'application/x-wais-source');
  FExtensionToMime.Add('.step', 'application/STEP');
  FExtensionToMime.Add('.stl', 'application/SLA');
  FExtensionToMime.Add('.stp', 'application/STEP');
  FExtensionToMime.Add('.sv4cpio', 'application/x-sv4cpio');
  FExtensionToMime.Add('.sv4crc', 'application/x-sv4crc');
  FExtensionToMime.Add('.svg', 'image/svg+xml');
  FExtensionToMime.Add('.swf', 'application/x-shockwave-flash');
  FExtensionToMime.Add('.t', 'application/x-troff');
  FExtensionToMime.Add('.tar', 'application/x-tar');
  FExtensionToMime.Add('.tcl', 'application/x-tcl');
  FExtensionToMime.Add('.tex', 'application/x-tex');
  FExtensionToMime.Add('.tif', 'image/tiff');
  FExtensionToMime.Add('.tiff', 'image/tiff');
  FExtensionToMime.Add('.tr', 'application/x-troff');
  FExtensionToMime.Add('.ts', 'video/MP2T');
  FExtensionToMime.Add('.tsi', 'audio/TSP-audio');
  FExtensionToMime.Add('.tsp', 'application/dsptype');
  FExtensionToMime.Add('.tsv', 'text/tab-separated-values');
  FExtensionToMime.Add('.txt', 'text/plain');
  FExtensionToMime.Add('.unv', 'application/i-deas');
  FExtensionToMime.Add('.ustar', 'application/x-ustar');
  FExtensionToMime.Add('.vcd', 'application/x-cdlink');
  FExtensionToMime.Add('.vda', 'application/vda');
  FExtensionToMime.Add('.vrml', 'model/vrml');
  FExtensionToMime.Add('.wav', 'audio/x-wav');
  FExtensionToMime.Add('.wrl', 'model/vrml');
  FExtensionToMime.Add('.xbm', 'image/x-xbitmap');
  FExtensionToMime.Add('.xlc', 'application/vnd.ms-excel');
  FExtensionToMime.Add('.xll', 'application/vnd.ms-excel');
  FExtensionToMime.Add('.xlm', 'application/vnd.ms-excel');
  FExtensionToMime.Add('.xls', 'application/vnd.ms-excel');
  FExtensionToMime.Add('.xlsx', 'application/vnd.openxmlformats-officedocument.spreadsheetml.sheet');
  FExtensionToMime.Add('.xlw', 'application/vnd.ms-excel');
  FExtensionToMime.Add('.xml', 'text/xml');
  FExtensionToMime.Add('.xpm', 'image/x-xpixmap');
  FExtensionToMime.Add('.xwd', 'image/x-xwindowdump');
  FExtensionToMime.Add('.xyz', 'chemical/x-pdb');
  FExtensionToMime.Add('.zip', 'application/zip');
  FExtensionToMime.Add('.m4v', 'video/x-m4v');
  FExtensionToMime.Add('.webm', 'video/webm');
  FExtensionToMime.Add('.ogv', 'video/ogv');
  FExtensionToMime.Add('.xap', 'application/x-silverlight-app');
  FExtensionToMime.Add('.mp4', 'video/mp4');
  FExtensionToMime.Add('.wmv', 'video/x-ms-wm');
end;

class destructor TAmazonS3Util.Destroy;
begin
  FExtensionToMime.Free;
end;

class function TAmazonS3Util.GenerateMD5ChecksumForStream(Stream: TStream): string;
begin
  Result := TAWSSDKUtils.GenerateMD5ChecksumForStream(Stream);
end;

class function TAmazonS3Util.MimeTypeFromExtension(const Ext: string): string;
begin
  if not FExtensionToMime.TryGetValue(ext, Result) then
    Result := 'application/octet-stream';
end;

end.
