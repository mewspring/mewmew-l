; ModuleID = 'coreutils-8.27/src/stty.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.option = type { i8*, i32, i32*, i32 }
%struct.termios = type { i32, i32, i32, i32, i8, [32 x i8], i32, i32 }
%struct.control_info = type { i8*, i8, i64 }
%struct.mode_info = type { i8*, i32, i8, i64, i64 }
%struct.speed_map = type { i8*, i32, i64 }
%struct.quoting_options = type { i32, i32, [8 x i32], i8*, i8* }
%struct.slotvec = type { i64, i8* }
%struct.winsize = type { i16, i16, i16, i16 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct.__mbstate_t = type { i32, %union.anon }
%union.anon = type { i32 }

@stderr = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [39 x i8] c"Try '%s --help' for more information.\0A\00", align 1
@.str.1 = private unnamed_addr constant [151 x i8] c"Usage: %s [-F DEVICE | --file=DEVICE] [SETTING]...\0A  or:  %s [-F DEVICE | --file=DEVICE] [-a|--all]\0A  or:  %s [-F DEVICE | --file=DEVICE] [-g|--save]\0A\00", align 1
@.str.2 = private unnamed_addr constant [43 x i8] c"Print or change terminal characteristics.\0A\00", align 1
@stdout = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.111 = private unnamed_addr constant [75 x i8] c"\0AMandatory arguments to long options are mandatory for short options too.\0A\00", align 1
@.str.3 = private unnamed_addr constant [216 x i8] c"  -a, --all          print all current settings in human-readable form\0A  -g, --save         print all current settings in a stty-readable form\0A  -F, --file=DEVICE  open and use the specified DEVICE instead of stdin\0A\00", align 1
@.str.4 = private unnamed_addr constant [45 x i8] c"      --help     display this help and exit\0A\00", align 1
@.str.5 = private unnamed_addr constant [54 x i8] c"      --version  output version information and exit\0A\00", align 1
@.str.6 = private unnamed_addr constant [141 x i8] c"\0AOptional - before SETTING indicates negation.  An * marks non-POSIX\0Asettings.  The underlying system defines which settings are available.\0A\00", align 1
@.str.7 = private unnamed_addr constant [22 x i8] c"\0ASpecial characters:\0A\00", align 1
@.str.8 = private unnamed_addr constant [56 x i8] c" * discard CHAR  CHAR will toggle discarding of output\0A\00", align 1
@.str.9 = private unnamed_addr constant [110 x i8] c"   eof CHAR      CHAR will send an end of file (terminate the input)\0A   eol CHAR      CHAR will end the line\0A\00", align 1
@.str.10 = private unnamed_addr constant [53 x i8] c" * eol2 CHAR     alternate CHAR for ending the line\0A\00", align 1
@.str.11 = private unnamed_addr constant [161 x i8] c"   erase CHAR    CHAR will erase the last character typed\0A   intr CHAR     CHAR will send an interrupt signal\0A   kill CHAR     CHAR will erase the current line\0A\00", align 1
@.str.12 = private unnamed_addr constant [60 x i8] c" * lnext CHAR    CHAR will enter the next character quoted\0A\00", align 1
@.str.13 = private unnamed_addr constant [47 x i8] c"   quit CHAR     CHAR will send a quit signal\0A\00", align 1
@.str.14 = private unnamed_addr constant [52 x i8] c" * rprnt CHAR    CHAR will redraw the current line\0A\00", align 1
@.str.15 = private unnamed_addr constant [163 x i8] c"   start CHAR    CHAR will restart the output after stopping it\0A   stop CHAR     CHAR will stop the output\0A   susp CHAR     CHAR will send a terminal stop signal\0A\00", align 1
@.str.16 = private unnamed_addr constant [62 x i8] c" * swtch CHAR    CHAR will switch to a different shell layer\0A\00", align 1
@.str.17 = private unnamed_addr constant [54 x i8] c" * werase CHAR   CHAR will erase the last word typed\0A\00", align 1
@.str.18 = private unnamed_addr constant [80 x i8] c"\0ASpecial settings:\0A   N             set the input and output speeds to N bauds\0A\00", align 1
@.str.19 = private unnamed_addr constant [98 x i8] c" * cols N        tell the kernel that the terminal has N columns\0A * columns N     same as cols N\0A\00", align 1
@.str.20 = private unnamed_addr constant [81 x i8] c" * [-]drain      wait for transmission before applying settings (%s by default)\0A\00", align 1
@tcsetattr_options = internal unnamed_addr global i32 1, align 4
@.str.21 = private unnamed_addr constant [3 x i8] c"on\00", align 1
@.str.22 = private unnamed_addr constant [4 x i8] c"off\00", align 1
@.str.23 = private unnamed_addr constant [43 x i8] c"   ispeed N      set the input speed to N\0A\00", align 1
@.str.24 = private unnamed_addr constant [40 x i8] c" * line N        use line discipline N\0A\00", align 1
@.str.25 = private unnamed_addr constant [121 x i8] c"   min N         with -icanon, set N characters minimum for a completed read\0A   ospeed N      set the output speed to N\0A\00", align 1
@.str.26 = private unnamed_addr constant [141 x i8] c" * rows N        tell the kernel that the terminal has N rows\0A * size          print the number of rows and columns according to the kernel\0A\00", align 1
@.str.27 = private unnamed_addr constant [115 x i8] c"   speed         print the terminal speed\0A   time N        with -icanon, set read timeout of N tenths of a second\0A\00", align 1
@.str.28 = private unnamed_addr constant [111 x i8] c"\0AControl settings:\0A   [-]clocal     disable modem control signals\0A   [-]cread      allow input to be received\0A\00", align 1
@.str.29 = private unnamed_addr constant [45 x i8] c" * [-]crtscts    enable RTS/CTS handshaking\0A\00", align 1
@.str.30 = private unnamed_addr constant [60 x i8] c"   csN           set character size to N bits, N in [5..8]\0A\00", align 1
@.str.31 = private unnamed_addr constant [308 x i8] c"   [-]cstopb     use two stop bits per character (one with '-')\0A   [-]hup        send a hangup signal when the last process closes the tty\0A   [-]hupcl      same as [-]hup\0A   [-]parenb     generate parity bit in output and expect parity bit in input\0A   [-]parodd     set odd parity (or even parity with '-')\0A\00", align 1
@.str.32 = private unnamed_addr constant [50 x i8] c" * [-]cmspar     use \22stick\22 (mark/space) parity\0A\00", align 1
@.str.33 = private unnamed_addr constant [257 x i8] c"\0AInput settings:\0A   [-]brkint     breaks cause an interrupt signal\0A   [-]icrnl      translate carriage return to newline\0A   [-]ignbrk     ignore break characters\0A   [-]igncr      ignore carriage return\0A   [-]ignpar     ignore characters with parity errors\0A\00", align 1
@.str.34 = private unnamed_addr constant [75 x i8] c" * [-]imaxbel    beep and do not flush a full input buffer on a character\0A\00", align 1
@.str.35 = private unnamed_addr constant [159 x i8] c"   [-]inlcr      translate newline to carriage return\0A   [-]inpck      enable input parity checking\0A   [-]istrip     clear high (8th) bit of input characters\0A\00", align 1
@.str.36 = private unnamed_addr constant [60 x i8] c" * [-]iutf8      assume input characters are UTF-8 encoded\0A\00", align 1
@.str.37 = private unnamed_addr constant [62 x i8] c" * [-]iuclc      translate uppercase characters to lowercase\0A\00", align 1
@.str.38 = private unnamed_addr constant [77 x i8] c" * [-]ixany      let any character restart output, not only start character\0A\00", align 1
@.str.39 = private unnamed_addr constant [208 x i8] c"   [-]ixoff      enable sending of start/stop characters\0A   [-]ixon       enable XON/XOFF flow control\0A   [-]parmrk     mark parity errors (with a 255-0-character sequence)\0A   [-]tandem     same as [-]ixoff\0A\00", align 1
@.str.40 = private unnamed_addr constant [19 x i8] c"\0AOutput settings:\0A\00", align 1
@.str.41 = private unnamed_addr constant [53 x i8] c" * bsN           backspace delay style, N in [0..1]\0A\00", align 1
@.str.42 = private unnamed_addr constant [59 x i8] c" * crN           carriage return delay style, N in [0..3]\0A\00", align 1
@.str.43 = private unnamed_addr constant [53 x i8] c" * ffN           form feed delay style, N in [0..1]\0A\00", align 1
@.str.44 = private unnamed_addr constant [51 x i8] c" * nlN           newline delay style, N in [0..1]\0A\00", align 1
@.str.45 = private unnamed_addr constant [55 x i8] c" * [-]ocrnl      translate carriage return to newline\0A\00", align 1
@.str.46 = private unnamed_addr constant [75 x i8] c" * [-]ofdel      use delete characters for fill instead of NUL characters\0A\00", align 1
@.str.47 = private unnamed_addr constant [77 x i8] c" * [-]ofill      use fill (padding) characters instead of timing for delays\0A\00", align 1
@.str.48 = private unnamed_addr constant [62 x i8] c" * [-]olcuc      translate lowercase characters to uppercase\0A\00", align 1
@.str.49 = private unnamed_addr constant [63 x i8] c" * [-]onlcr      translate newline to carriage return-newline\0A\00", align 1
@.str.50 = private unnamed_addr constant [53 x i8] c" * [-]onlret     newline performs a carriage return\0A\00", align 1
@.str.51 = private unnamed_addr constant [68 x i8] c" * [-]onocr      do not print carriage returns in the first column\0A\00", align 1
@.str.52 = private unnamed_addr constant [37 x i8] c"   [-]opost      postprocess output\0A\00", align 1
@.str.53 = private unnamed_addr constant [118 x i8] c" * tabN          horizontal tab delay style, N in [0..3]\0A * tabs          same as tab0\0A * -tabs         same as tab3\0A\00", align 1
@.str.54 = private unnamed_addr constant [56 x i8] c" * vtN           vertical tab delay style, N in [0..1]\0A\00", align 1
@.str.55 = private unnamed_addr constant [86 x i8] c"\0ALocal settings:\0A   [-]crterase   echo erase characters as backspace-space-backspace\0A\00", align 1
@.str.56 = private unnamed_addr constant [147 x i8] c" * crtkill       kill all line by obeying the echoprt and echoe settings\0A * -crtkill      kill all line by obeying the echoctl and echok settings\0A\00", align 1
@.str.57 = private unnamed_addr constant [65 x i8] c" * [-]ctlecho    echo control characters in hat notation ('^c')\0A\00", align 1
@.str.58 = private unnamed_addr constant [40 x i8] c"   [-]echo       echo input characters\0A\00", align 1
@.str.59 = private unnamed_addr constant [37 x i8] c" * [-]echoctl    same as [-]ctlecho\0A\00", align 1
@.str.60 = private unnamed_addr constant [93 x i8] c"   [-]echoe      same as [-]crterase\0A   [-]echok      echo a newline after a kill character\0A\00", align 1
@.str.61 = private unnamed_addr constant [37 x i8] c" * [-]echoke     same as [-]crtkill\0A\00", align 1
@.str.62 = private unnamed_addr constant [68 x i8] c"   [-]echonl     echo newline even if not echoing other characters\0A\00", align 1
@.str.63 = private unnamed_addr constant [71 x i8] c" * [-]echoprt    echo erased characters backward, between '\5C' and '/'\0A\00", align 1
@.str.64 = private unnamed_addr constant [68 x i8] c" * [-]extproc    enable \22LINEMODE\22; useful with high latency links\0A\00", align 1
@.str.65 = private unnamed_addr constant [33 x i8] c" * [-]flusho     discard output\0A\00", align 1
@.str.66 = private unnamed_addr constant [101 x i8] c"   [-]icanon     enable special characters: %s\0A   [-]iexten     enable non-POSIX special characters\0A\00", align 1
@.str.67 = private unnamed_addr constant [27 x i8] c"erase, kill, werase, rprnt\00", align 1
@.str.68 = private unnamed_addr constant [151 x i8] c"   [-]isig       enable interrupt, quit, and suspend special characters\0A   [-]noflsh     disable flushing after interrupt and quit special characters\0A\00", align 1
@.str.69 = private unnamed_addr constant [37 x i8] c" * [-]prterase   same as [-]echoprt\0A\00", align 1
@.str.70 = private unnamed_addr constant [73 x i8] c" * [-]tostop     stop background jobs that try to write to the terminal\0A\00", align 1
@.str.71 = private unnamed_addr constant [72 x i8] c" * [-]xcase      with icanon, escape with '\5C' for uppercase characters\0A\00", align 1
@.str.72 = private unnamed_addr constant [24 x i8] c"\0ACombination settings:\0A\00", align 1
@.str.73 = private unnamed_addr constant [35 x i8] c" * [-]LCASE      same as [-]lcase\0A\00", align 1
@.str.74 = private unnamed_addr constant [66 x i8] c"   cbreak        same as -icanon\0A   -cbreak       same as icanon\0A\00", align 1
@.str.75 = private unnamed_addr constant [170 x i8] c"   cooked        same as brkint ignpar istrip icrnl ixon opost isig\0A                 icanon, eof and eol characters to their default values\0A   -cooked       same as raw\0A\00", align 1
@.str.76 = private unnamed_addr constant [29 x i8] c"   crt           same as %s\0A\00", align 1
@.str.77 = private unnamed_addr constant [21 x i8] c"echoe echoctl echoke\00", align 1
@.str.78 = private unnamed_addr constant [73 x i8] c"   dec           same as %s intr ^c erase 0177\0A                 kill ^u\0A\00", align 1
@.str.79 = private unnamed_addr constant [28 x i8] c"echoe echoctl echoke -ixany\00", align 1
@.str.80 = private unnamed_addr constant [35 x i8] c" * [-]decctlq    same as [-]ixany\0A\00", align 1
@.str.81 = private unnamed_addr constant [149 x i8] c"   ek            erase and kill characters to their default values\0A   evenp         same as parenb -parodd cs7\0A   -evenp        same as -parenb cs8\0A\00", align 1
@.str.82 = private unnamed_addr constant [44 x i8] c" * [-]lcase      same as xcase iuclc olcuc\0A\00", align 1
@.str.83 = private unnamed_addr constant [102 x i8] c"   litout        same as -parenb -istrip -opost cs8\0A   -litout       same as parenb istrip opost cs7\0A\00", align 1
@.str.84 = private unnamed_addr constant [57 x i8] c"   nl            same as %s\0A   -nl           same as %s\0A\00", align 1
@.str.85 = private unnamed_addr constant [14 x i8] c"-icrnl -onlcr\00", align 1
@.str.86 = private unnamed_addr constant [41 x i8] c"icrnl -inlcr -igncr onlcr -ocrnl -onlret\00", align 1
@.str.87 = private unnamed_addr constant [203 x i8] c"   oddp          same as parenb parodd cs7\0A   -oddp         same as -parenb cs8\0A   [-]parity     same as [-]evenp\0A   pass8         same as -parenb -istrip cs8\0A   -pass8        same as parenb istrip cs7\0A\00", align 1
@.str.88 = private unnamed_addr constant [209 x i8] c"   raw           same as -ignbrk -brkint -ignpar -parmrk -inpck -istrip\0A                 -inlcr -igncr -icrnl -ixon -ixoff -icanon -opost\0A                 -isig%s min 1 time 0\0A   -raw          same as cooked\0A\00", align 1
@.str.89 = private unnamed_addr constant [31 x i8] c" -iuclc -ixany -imaxbel -xcase\00", align 1
@.str.90 = private unnamed_addr constant [256 x i8] c"   sane          same as cread -ignbrk brkint -inlcr -igncr icrnl\0A                 icanon iexten echo echoe echok -echonl -noflsh\0A                 %s\0A                 %s\0A                 %s,\0A                 all special characters to their default values\0A\00", align 1
@.str.91 = private unnamed_addr constant [57 x i8] c"-ixoff -iutf8 -iuclc -ixany imaxbel -xcase -olcuc -ocrnl\00", align 1
@.str.92 = private unnamed_addr constant [59 x i8] c"opost -ofill onlcr -onocr -onlret nl0 cr0 tab0 bs0 vt0 ff0\00", align 1
@.str.93 = private unnamed_addr constant [61 x i8] c"isig -tostop -ofdel -echoprt echoctl echoke -extproc -flusho\00", align 1
@.str.94 = private unnamed_addr constant [277 x i8] c"\0AHandle the tty line connected to standard input.  Without arguments,\0Aprints baud rate, line discipline, and deviations from stty sane.  In\0Asettings, CHAR is taken literally, or coded as in ^c, 0x37, 0177 or\0A127; special values ^- or undef used to disable special characters.\0A\00", align 1
@.str.95 = private unnamed_addr constant [5 x i8] c"stty\00", align 1
@.str.120 = private unnamed_addr constant [23 x i8] c"\0A%s online help: <%s>\0A\00", align 1
@.str.101 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.121 = private unnamed_addr constant [39 x i8] c"http://www.gnu.org/software/coreutils/\00", align 1
@.str.122 = private unnamed_addr constant [4 x i8] c"en_\00", align 1
@.str.123 = private unnamed_addr constant [69 x i8] c"Report %s translation bugs to <http://translationproject.org/team/>\0A\00", align 1
@.str.124 = private unnamed_addr constant [31 x i8] c"Full documentation at: <%s%s>\0A\00", align 1
@.str.125 = private unnamed_addr constant [51 x i8] c"or available locally via: info '(coreutils) %s%s'\0A\00", align 1
@.str.126 = private unnamed_addr constant [12 x i8] c" invocation\00", align 1
@.str.96 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.97 = private unnamed_addr constant [10 x i8] c"coreutils\00", align 1
@.str.98 = private unnamed_addr constant [24 x i8] c"/usr/local/share/locale\00", align 1
@opterr = external local_unnamed_addr global i32, align 4
@.str.99 = private unnamed_addr constant [6 x i8] c"-agF:\00", align 1
@longopts = internal constant [6 x %struct.option] [%struct.option { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.127, i32 0, i32 0), i32 0, i32* null, i32 97 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.128, i32 0, i32 0), i32 0, i32* null, i32 103 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.129, i32 0, i32 0), i32 1, i32* null, i32 70 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.130, i32 0, i32 0), i32 0, i32* null, i32 -130 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.131, i32 0, i32 0), i32 0, i32* null, i32 -131 }, %struct.option zeroinitializer], align 16
@.str.100 = private unnamed_addr constant [33 x i8] c"only one device may be specified\00", align 1
@optarg = external local_unnamed_addr global i8*, align 8
@.str.102 = private unnamed_addr constant [16 x i8] c"David MacKenzie\00", align 1
@.str.103 = private unnamed_addr constant [7 x i8] c"-drain\00", align 1
@.str.104 = private unnamed_addr constant [6 x i8] c"drain\00", align 1
@optind = external local_unnamed_addr global i32, align 4
@.str.105 = private unnamed_addr constant [79 x i8] c"the options for verbose and stty-readable output styles are\0Amutually exclusive\00", align 1
@.str.106 = private unnamed_addr constant [54 x i8] c"when specifying an output style, modes may not be set\00", align 1
@.str.107 = private unnamed_addr constant [15 x i8] c"standard input\00", align 1
@main.check_mode = internal global %struct.termios zeroinitializer, align 4
@.str.108 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.109 = private unnamed_addr constant [37 x i8] c"%s: couldn't reset non-blocking mode\00", align 1
@main.mode = internal global %struct.termios zeroinitializer, align 4
@.str.297 = private unnamed_addr constant [8 x i8] c"COLUMNS\00", align 1
@max_col = internal unnamed_addr global i32 0, align 4
@current_col = internal unnamed_addr global i32 0, align 4
@.str.298 = private unnamed_addr constant [11 x i8] c"line = %d;\00", align 1
@control_info = internal constant [19 x %struct.control_info] [%struct.control_info { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.234, i32 0, i32 0), i8 3, i64 0 }, %struct.control_info { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.235, i32 0, i32 0), i8 28, i64 1 }, %struct.control_info { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.236, i32 0, i32 0), i8 127, i64 2 }, %struct.control_info { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.237, i32 0, i32 0), i8 21, i64 3 }, %struct.control_info { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.238, i32 0, i32 0), i8 4, i64 4 }, %struct.control_info { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.239, i32 0, i32 0), i8 0, i64 11 }, %struct.control_info { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.240, i32 0, i32 0), i8 0, i64 16 }, %struct.control_info { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.241, i32 0, i32 0), i8 0, i64 7 }, %struct.control_info { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.242, i32 0, i32 0), i8 17, i64 8 }, %struct.control_info { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.243, i32 0, i32 0), i8 19, i64 9 }, %struct.control_info { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.244, i32 0, i32 0), i8 26, i64 10 }, %struct.control_info { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.245, i32 0, i32 0), i8 18, i64 12 }, %struct.control_info { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.246, i32 0, i32 0), i8 23, i64 14 }, %struct.control_info { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.247, i32 0, i32 0), i8 22, i64 15 }, %struct.control_info { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.248, i32 0, i32 0), i8 15, i64 13 }, %struct.control_info { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.249, i32 0, i32 0), i8 15, i64 13 }, %struct.control_info { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.250, i32 0, i32 0), i8 1, i64 6 }, %struct.control_info { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.251, i32 0, i32 0), i8 0, i64 5 }, %struct.control_info zeroinitializer], align 16
@.str.248 = private unnamed_addr constant [6 x i8] c"flush\00", align 1
@visible.buf = internal global [10 x i8] zeroinitializer, align 1
@.str.302 = private unnamed_addr constant [8 x i8] c"<undef>\00", align 1
@.str.299 = private unnamed_addr constant [9 x i8] c"%s = %s;\00", align 1
@.str.300 = private unnamed_addr constant [24 x i8] c"min = %lu; time = %lu;\0A\00", align 1
@mode_info = internal constant [90 x %struct.mode_info] [%struct.mode_info { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.143, i32 0, i32 0), i32 0, i8 4, i64 256, i64 0 }, %struct.mode_info { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.144, i32 0, i32 0), i32 0, i8 4, i64 512, i64 0 }, %struct.mode_info { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.145, i32 0, i32 0), i32 0, i8 4, i64 1073741824, i64 0 }, %struct.mode_info { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.146, i32 0, i32 0), i32 0, i8 0, i64 0, i64 48 }, %struct.mode_info { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.147, i32 0, i32 0), i32 0, i8 0, i64 16, i64 48 }, %struct.mode_info { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.148, i32 0, i32 0), i32 0, i8 0, i64 32, i64 48 }, %struct.mode_info { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.149, i32 0, i32 0), i32 0, i8 0, i64 48, i64 48 }, %struct.mode_info { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.150, i32 0, i32 0), i32 0, i8 4, i64 1024, i64 0 }, %struct.mode_info { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.151, i32 0, i32 0), i32 0, i8 12, i64 1024, i64 0 }, %struct.mode_info { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.152, i32 0, i32 0), i32 0, i8 4, i64 64, i64 0 }, %struct.mode_info { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.153, i32 0, i32 0), i32 0, i8 5, i64 128, i64 0 }, %struct.mode_info { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.154, i32 0, i32 0), i32 0, i8 4, i64 2048, i64 0 }, %struct.mode_info { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.155, i32 0, i32 0), i32 0, i8 4, i64 2147483648, i64 0 }, %struct.mode_info { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.156, i32 0, i32 0), i32 1, i8 6, i64 1, i64 0 }, %struct.mode_info { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.157, i32 0, i32 0), i32 1, i8 5, i64 2, i64 0 }, %struct.mode_info { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.158, i32 0, i32 0), i32 1, i8 4, i64 4, i64 0 }, %struct.mode_info { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.159, i32 0, i32 0), i32 1, i8 4, i64 8, i64 0 }, %struct.mode_info { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.160, i32 0, i32 0), i32 1, i8 4, i64 16, i64 0 }, %struct.mode_info { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.161, i32 0, i32 0), i32 1, i8 4, i64 32, i64 0 }, %struct.mode_info { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.162, i32 0, i32 0), i32 1, i8 6, i64 64, i64 0 }, %struct.mode_info { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.163, i32 0, i32 0), i32 1, i8 6, i64 128, i64 0 }, %struct.mode_info { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.164, i32 0, i32 0), i32 1, i8 5, i64 256, i64 0 }, %struct.mode_info { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.165, i32 0, i32 0), i32 1, i8 4, i64 1024, i64 0 }, %struct.mode_info { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.166, i32 0, i32 0), i32 1, i8 6, i64 4096, i64 0 }, %struct.mode_info { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.167, i32 0, i32 0), i32 1, i8 12, i64 4096, i64 0 }, %struct.mode_info { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.168, i32 0, i32 0), i32 1, i8 6, i64 512, i64 0 }, %struct.mode_info { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.169, i32 0, i32 0), i32 1, i8 6, i64 2048, i64 0 }, %struct.mode_info { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.170, i32 0, i32 0), i32 1, i8 5, i64 8192, i64 0 }, %struct.mode_info { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.171, i32 0, i32 0), i32 1, i8 6, i64 16384, i64 0 }, %struct.mode_info { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.172, i32 0, i32 0), i32 2, i8 5, i64 1, i64 0 }, %struct.mode_info { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.173, i32 0, i32 0), i32 2, i8 6, i64 2, i64 0 }, %struct.mode_info { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.174, i32 0, i32 0), i32 2, i8 6, i64 8, i64 0 }, %struct.mode_info { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.175, i32 0, i32 0), i32 2, i8 5, i64 4, i64 0 }, %struct.mode_info { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.176, i32 0, i32 0), i32 2, i8 6, i64 16, i64 0 }, %struct.mode_info { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.177, i32 0, i32 0), i32 2, i8 6, i64 32, i64 0 }, %struct.mode_info { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.178, i32 0, i32 0), i32 2, i8 6, i64 64, i64 0 }, %struct.mode_info { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.179, i32 0, i32 0), i32 2, i8 6, i64 128, i64 0 }, %struct.mode_info { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.180, i32 0, i32 0), i32 2, i8 2, i64 256, i64 256 }, %struct.mode_info { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.181, i32 0, i32 0), i32 2, i8 1, i64 0, i64 256 }, %struct.mode_info { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.182, i32 0, i32 0), i32 2, i8 2, i64 1536, i64 1536 }, %struct.mode_info { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.183, i32 0, i32 0), i32 2, i8 2, i64 1024, i64 1536 }, %struct.mode_info { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.184, i32 0, i32 0), i32 2, i8 2, i64 512, i64 1536 }, %struct.mode_info { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.185, i32 0, i32 0), i32 2, i8 1, i64 0, i64 1536 }, %struct.mode_info { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.186, i32 0, i32 0), i32 2, i8 2, i64 6144, i64 6144 }, %struct.mode_info { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.187, i32 0, i32 0), i32 2, i8 2, i64 4096, i64 6144 }, %struct.mode_info { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.188, i32 0, i32 0), i32 2, i8 2, i64 2048, i64 6144 }, %struct.mode_info { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.189, i32 0, i32 0), i32 2, i8 1, i64 0, i64 6144 }, %struct.mode_info { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.190, i32 0, i32 0), i32 2, i8 2, i64 8192, i64 8192 }, %struct.mode_info { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.191, i32 0, i32 0), i32 2, i8 1, i64 0, i64 8192 }, %struct.mode_info { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.192, i32 0, i32 0), i32 2, i8 2, i64 16384, i64 16384 }, %struct.mode_info { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.193, i32 0, i32 0), i32 2, i8 1, i64 0, i64 16384 }, %struct.mode_info { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.194, i32 0, i32 0), i32 2, i8 2, i64 32768, i64 32768 }, %struct.mode_info { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.195, i32 0, i32 0), i32 2, i8 1, i64 0, i64 32768 }, %struct.mode_info { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.196, i32 0, i32 0), i32 3, i8 5, i64 1, i64 0 }, %struct.mode_info { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.197, i32 0, i32 0), i32 3, i8 5, i64 2, i64 0 }, %struct.mode_info { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.198, i32 0, i32 0), i32 3, i8 5, i64 32768, i64 0 }, %struct.mode_info { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.199, i32 0, i32 0), i32 3, i8 5, i64 8, i64 0 }, %struct.mode_info { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.200, i32 0, i32 0), i32 3, i8 5, i64 16, i64 0 }, %struct.mode_info { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.201, i32 0, i32 0), i32 3, i8 12, i64 16, i64 0 }, %struct.mode_info { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.202, i32 0, i32 0), i32 3, i8 5, i64 32, i64 0 }, %struct.mode_info { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.203, i32 0, i32 0), i32 3, i8 6, i64 64, i64 0 }, %struct.mode_info { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.204, i32 0, i32 0), i32 3, i8 6, i64 128, i64 0 }, %struct.mode_info { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.205, i32 0, i32 0), i32 3, i8 6, i64 4, i64 0 }, %struct.mode_info { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.206, i32 0, i32 0), i32 3, i8 6, i64 256, i64 0 }, %struct.mode_info { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.207, i32 0, i32 0), i32 3, i8 6, i64 1024, i64 0 }, %struct.mode_info { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.208, i32 0, i32 0), i32 3, i8 12, i64 1024, i64 0 }, %struct.mode_info { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.209, i32 0, i32 0), i32 3, i8 5, i64 512, i64 0 }, %struct.mode_info { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.210, i32 0, i32 0), i32 3, i8 12, i64 512, i64 0 }, %struct.mode_info { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.211, i32 0, i32 0), i32 3, i8 5, i64 2048, i64 0 }, %struct.mode_info { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.212, i32 0, i32 0), i32 3, i8 12, i64 2048, i64 0 }, %struct.mode_info { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.213, i32 0, i32 0), i32 3, i8 6, i64 4096, i64 0 }, %struct.mode_info { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.214, i32 0, i32 0), i32 3, i8 6, i64 65536, i64 0 }, %struct.mode_info { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.215, i32 0, i32 0), i32 4, i8 12, i64 0, i64 0 }, %struct.mode_info { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.216, i32 0, i32 0), i32 4, i8 12, i64 0, i64 0 }, %struct.mode_info { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.217, i32 0, i32 0), i32 4, i8 12, i64 0, i64 0 }, %struct.mode_info { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.218, i32 0, i32 0), i32 4, i8 12, i64 0, i64 0 }, %struct.mode_info { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.219, i32 0, i32 0), i32 4, i8 8, i64 0, i64 0 }, %struct.mode_info { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.220, i32 0, i32 0), i32 4, i8 8, i64 0, i64 0 }, %struct.mode_info { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.221, i32 0, i32 0), i32 4, i8 12, i64 0, i64 0 }, %struct.mode_info { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.222, i32 0, i32 0), i32 4, i8 12, i64 0, i64 0 }, %struct.mode_info { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.223, i32 0, i32 0), i32 4, i8 12, i64 0, i64 0 }, %struct.mode_info { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.224, i32 0, i32 0), i32 4, i8 12, i64 0, i64 0 }, %struct.mode_info { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.225, i32 0, i32 0), i32 4, i8 12, i64 0, i64 0 }, %struct.mode_info { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.226, i32 0, i32 0), i32 4, i8 12, i64 0, i64 0 }, %struct.mode_info { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.227, i32 0, i32 0), i32 4, i8 12, i64 0, i64 0 }, %struct.mode_info { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.228, i32 0, i32 0), i32 4, i8 12, i64 0, i64 0 }, %struct.mode_info { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.229, i32 0, i32 0), i32 4, i8 12, i64 0, i64 0 }, %struct.mode_info { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.230, i32 0, i32 0), i32 4, i8 8, i64 0, i64 0 }, %struct.mode_info { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.231, i32 0, i32 0), i32 4, i8 8, i64 0, i64 0 }, %struct.mode_info zeroinitializer], align 16
@switch.table.306 = private unnamed_addr constant [5 x i32*] [i32* getelementptr inbounds (%struct.termios, %struct.termios* @main.mode, i64 0, i32 2), i32* getelementptr inbounds (%struct.termios, %struct.termios* @main.mode, i64 0, i32 0), i32* getelementptr inbounds (%struct.termios, %struct.termios* @main.mode, i64 0, i32 1), i32* getelementptr inbounds (%struct.termios, %struct.termios* @main.mode, i64 0, i32 3), i32* null]
@.str.232 = private unnamed_addr constant [6 x i8] c"bitsp\00", align 1
@.str.233 = private unnamed_addr constant [11 x i8] c"src/stty.c\00", align 1
@__PRETTY_FUNCTION__.display_changed = private unnamed_addr constant [39 x i8] c"void display_changed(struct termios *)\00", align 1
@.str.301 = private unnamed_addr constant [4 x i8] c"-%s\00", align 1
@.str.303 = private unnamed_addr constant [23 x i8] c"min = %lu; time = %lu;\00", align 1
@__PRETTY_FUNCTION__.display_all = private unnamed_addr constant [49 x i8] c"void display_all(struct termios *, const char *)\00", align 1
@.str.304 = private unnamed_addr constant [16 x i8] c"%lx:%lx:%lx:%lx\00", align 1
@.str.305 = private unnamed_addr constant [5 x i8] c":%lx\00", align 1
@main.new_mode = internal global %struct.termios zeroinitializer, align 4
@.str.110 = private unnamed_addr constant [47 x i8] c"%s: unable to perform all requested operations\00", align 1
@.str.256 = private unnamed_addr constant [40 x i8] c"%s: no size information for this device\00", align 1
@.str.257 = private unnamed_addr constant [21 x i8] c"rows %d; columns %d;\00", align 1
@.str.258 = private unnamed_addr constant [7 x i8] c"%d %d\0A\00", align 1
@.str.143 = private unnamed_addr constant [7 x i8] c"parenb\00", align 1
@.str.144 = private unnamed_addr constant [7 x i8] c"parodd\00", align 1
@.str.145 = private unnamed_addr constant [7 x i8] c"cmspar\00", align 1
@.str.146 = private unnamed_addr constant [4 x i8] c"cs5\00", align 1
@.str.147 = private unnamed_addr constant [4 x i8] c"cs6\00", align 1
@.str.148 = private unnamed_addr constant [4 x i8] c"cs7\00", align 1
@.str.149 = private unnamed_addr constant [4 x i8] c"cs8\00", align 1
@.str.150 = private unnamed_addr constant [6 x i8] c"hupcl\00", align 1
@.str.151 = private unnamed_addr constant [4 x i8] c"hup\00", align 1
@.str.152 = private unnamed_addr constant [7 x i8] c"cstopb\00", align 1
@.str.153 = private unnamed_addr constant [6 x i8] c"cread\00", align 1
@.str.154 = private unnamed_addr constant [7 x i8] c"clocal\00", align 1
@.str.155 = private unnamed_addr constant [8 x i8] c"crtscts\00", align 1
@.str.156 = private unnamed_addr constant [7 x i8] c"ignbrk\00", align 1
@.str.157 = private unnamed_addr constant [7 x i8] c"brkint\00", align 1
@.str.158 = private unnamed_addr constant [7 x i8] c"ignpar\00", align 1
@.str.159 = private unnamed_addr constant [7 x i8] c"parmrk\00", align 1
@.str.160 = private unnamed_addr constant [6 x i8] c"inpck\00", align 1
@.str.161 = private unnamed_addr constant [7 x i8] c"istrip\00", align 1
@.str.162 = private unnamed_addr constant [6 x i8] c"inlcr\00", align 1
@.str.163 = private unnamed_addr constant [6 x i8] c"igncr\00", align 1
@.str.164 = private unnamed_addr constant [6 x i8] c"icrnl\00", align 1
@.str.165 = private unnamed_addr constant [5 x i8] c"ixon\00", align 1
@.str.166 = private unnamed_addr constant [6 x i8] c"ixoff\00", align 1
@.str.167 = private unnamed_addr constant [7 x i8] c"tandem\00", align 1
@.str.168 = private unnamed_addr constant [6 x i8] c"iuclc\00", align 1
@.str.169 = private unnamed_addr constant [6 x i8] c"ixany\00", align 1
@.str.170 = private unnamed_addr constant [8 x i8] c"imaxbel\00", align 1
@.str.171 = private unnamed_addr constant [6 x i8] c"iutf8\00", align 1
@.str.172 = private unnamed_addr constant [6 x i8] c"opost\00", align 1
@.str.173 = private unnamed_addr constant [6 x i8] c"olcuc\00", align 1
@.str.174 = private unnamed_addr constant [6 x i8] c"ocrnl\00", align 1
@.str.175 = private unnamed_addr constant [6 x i8] c"onlcr\00", align 1
@.str.176 = private unnamed_addr constant [6 x i8] c"onocr\00", align 1
@.str.177 = private unnamed_addr constant [7 x i8] c"onlret\00", align 1
@.str.178 = private unnamed_addr constant [6 x i8] c"ofill\00", align 1
@.str.179 = private unnamed_addr constant [6 x i8] c"ofdel\00", align 1
@.str.180 = private unnamed_addr constant [4 x i8] c"nl1\00", align 1
@.str.181 = private unnamed_addr constant [4 x i8] c"nl0\00", align 1
@.str.182 = private unnamed_addr constant [4 x i8] c"cr3\00", align 1
@.str.183 = private unnamed_addr constant [4 x i8] c"cr2\00", align 1
@.str.184 = private unnamed_addr constant [4 x i8] c"cr1\00", align 1
@.str.185 = private unnamed_addr constant [4 x i8] c"cr0\00", align 1
@.str.186 = private unnamed_addr constant [5 x i8] c"tab3\00", align 1
@.str.187 = private unnamed_addr constant [5 x i8] c"tab2\00", align 1
@.str.188 = private unnamed_addr constant [5 x i8] c"tab1\00", align 1
@.str.189 = private unnamed_addr constant [5 x i8] c"tab0\00", align 1
@.str.190 = private unnamed_addr constant [4 x i8] c"bs1\00", align 1
@.str.191 = private unnamed_addr constant [4 x i8] c"bs0\00", align 1
@.str.192 = private unnamed_addr constant [4 x i8] c"vt1\00", align 1
@.str.193 = private unnamed_addr constant [4 x i8] c"vt0\00", align 1
@.str.194 = private unnamed_addr constant [4 x i8] c"ff1\00", align 1
@.str.195 = private unnamed_addr constant [4 x i8] c"ff0\00", align 1
@.str.196 = private unnamed_addr constant [5 x i8] c"isig\00", align 1
@.str.197 = private unnamed_addr constant [7 x i8] c"icanon\00", align 1
@.str.198 = private unnamed_addr constant [7 x i8] c"iexten\00", align 1
@.str.199 = private unnamed_addr constant [5 x i8] c"echo\00", align 1
@.str.200 = private unnamed_addr constant [6 x i8] c"echoe\00", align 1
@.str.201 = private unnamed_addr constant [9 x i8] c"crterase\00", align 1
@.str.202 = private unnamed_addr constant [6 x i8] c"echok\00", align 1
@.str.203 = private unnamed_addr constant [7 x i8] c"echonl\00", align 1
@.str.204 = private unnamed_addr constant [7 x i8] c"noflsh\00", align 1
@.str.205 = private unnamed_addr constant [6 x i8] c"xcase\00", align 1
@.str.206 = private unnamed_addr constant [7 x i8] c"tostop\00", align 1
@.str.207 = private unnamed_addr constant [8 x i8] c"echoprt\00", align 1
@.str.208 = private unnamed_addr constant [9 x i8] c"prterase\00", align 1
@.str.209 = private unnamed_addr constant [8 x i8] c"echoctl\00", align 1
@.str.210 = private unnamed_addr constant [8 x i8] c"ctlecho\00", align 1
@.str.211 = private unnamed_addr constant [7 x i8] c"echoke\00", align 1
@.str.212 = private unnamed_addr constant [8 x i8] c"crtkill\00", align 1
@.str.213 = private unnamed_addr constant [7 x i8] c"flusho\00", align 1
@.str.214 = private unnamed_addr constant [8 x i8] c"extproc\00", align 1
@.str.215 = private unnamed_addr constant [6 x i8] c"evenp\00", align 1
@.str.216 = private unnamed_addr constant [7 x i8] c"parity\00", align 1
@.str.217 = private unnamed_addr constant [5 x i8] c"oddp\00", align 1
@.str.218 = private unnamed_addr constant [3 x i8] c"nl\00", align 1
@.str.219 = private unnamed_addr constant [3 x i8] c"ek\00", align 1
@.str.220 = private unnamed_addr constant [5 x i8] c"sane\00", align 1
@.str.221 = private unnamed_addr constant [7 x i8] c"cooked\00", align 1
@.str.222 = private unnamed_addr constant [4 x i8] c"raw\00", align 1
@.str.223 = private unnamed_addr constant [6 x i8] c"pass8\00", align 1
@.str.224 = private unnamed_addr constant [7 x i8] c"litout\00", align 1
@.str.225 = private unnamed_addr constant [7 x i8] c"cbreak\00", align 1
@.str.226 = private unnamed_addr constant [8 x i8] c"decctlq\00", align 1
@.str.227 = private unnamed_addr constant [5 x i8] c"tabs\00", align 1
@.str.228 = private unnamed_addr constant [6 x i8] c"lcase\00", align 1
@.str.229 = private unnamed_addr constant [6 x i8] c"LCASE\00", align 1
@.str.230 = private unnamed_addr constant [4 x i8] c"crt\00", align 1
@.str.231 = private unnamed_addr constant [4 x i8] c"dec\00", align 1
@.str.234 = private unnamed_addr constant [5 x i8] c"intr\00", align 1
@.str.235 = private unnamed_addr constant [5 x i8] c"quit\00", align 1
@.str.236 = private unnamed_addr constant [6 x i8] c"erase\00", align 1
@.str.237 = private unnamed_addr constant [5 x i8] c"kill\00", align 1
@.str.238 = private unnamed_addr constant [4 x i8] c"eof\00", align 1
@.str.239 = private unnamed_addr constant [4 x i8] c"eol\00", align 1
@.str.240 = private unnamed_addr constant [5 x i8] c"eol2\00", align 1
@.str.241 = private unnamed_addr constant [6 x i8] c"swtch\00", align 1
@.str.242 = private unnamed_addr constant [6 x i8] c"start\00", align 1
@.str.243 = private unnamed_addr constant [5 x i8] c"stop\00", align 1
@.str.244 = private unnamed_addr constant [5 x i8] c"susp\00", align 1
@.str.245 = private unnamed_addr constant [6 x i8] c"rprnt\00", align 1
@.str.246 = private unnamed_addr constant [7 x i8] c"werase\00", align 1
@.str.247 = private unnamed_addr constant [6 x i8] c"lnext\00", align 1
@.str.249 = private unnamed_addr constant [8 x i8] c"discard\00", align 1
@.str.250 = private unnamed_addr constant [4 x i8] c"min\00", align 1
@.str.251 = private unnamed_addr constant [5 x i8] c"time\00", align 1
@.str.259 = private unnamed_addr constant [16 x i8] c"speed %lu baud;\00", align 1
@.str.260 = private unnamed_addr constant [5 x i8] c"%lu\0A\00", align 1
@speeds = internal unnamed_addr constant [35 x %struct.speed_map] [%struct.speed_map { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.263, i32 0, i32 0), i32 0, i64 0 }, %struct.speed_map { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.264, i32 0, i32 0), i32 1, i64 50 }, %struct.speed_map { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.265, i32 0, i32 0), i32 2, i64 75 }, %struct.speed_map { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.266, i32 0, i32 0), i32 3, i64 110 }, %struct.speed_map { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.267, i32 0, i32 0), i32 4, i64 134 }, %struct.speed_map { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.268, i32 0, i32 0), i32 4, i64 134 }, %struct.speed_map { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.269, i32 0, i32 0), i32 5, i64 150 }, %struct.speed_map { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.270, i32 0, i32 0), i32 6, i64 200 }, %struct.speed_map { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.271, i32 0, i32 0), i32 7, i64 300 }, %struct.speed_map { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.272, i32 0, i32 0), i32 8, i64 600 }, %struct.speed_map { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.273, i32 0, i32 0), i32 9, i64 1200 }, %struct.speed_map { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.274, i32 0, i32 0), i32 10, i64 1800 }, %struct.speed_map { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.275, i32 0, i32 0), i32 11, i64 2400 }, %struct.speed_map { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.276, i32 0, i32 0), i32 12, i64 4800 }, %struct.speed_map { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.277, i32 0, i32 0), i32 13, i64 9600 }, %struct.speed_map { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.278, i32 0, i32 0), i32 14, i64 19200 }, %struct.speed_map { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.279, i32 0, i32 0), i32 15, i64 38400 }, %struct.speed_map { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.280, i32 0, i32 0), i32 14, i64 19200 }, %struct.speed_map { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.281, i32 0, i32 0), i32 15, i64 38400 }, %struct.speed_map { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.282, i32 0, i32 0), i32 4097, i64 57600 }, %struct.speed_map { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.283, i32 0, i32 0), i32 4098, i64 115200 }, %struct.speed_map { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.284, i32 0, i32 0), i32 4099, i64 230400 }, %struct.speed_map { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.285, i32 0, i32 0), i32 4100, i64 460800 }, %struct.speed_map { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.286, i32 0, i32 0), i32 4101, i64 500000 }, %struct.speed_map { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.287, i32 0, i32 0), i32 4102, i64 576000 }, %struct.speed_map { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.288, i32 0, i32 0), i32 4103, i64 921600 }, %struct.speed_map { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.289, i32 0, i32 0), i32 4104, i64 1000000 }, %struct.speed_map { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.290, i32 0, i32 0), i32 4105, i64 1152000 }, %struct.speed_map { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.291, i32 0, i32 0), i32 4106, i64 1500000 }, %struct.speed_map { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.292, i32 0, i32 0), i32 4107, i64 2000000 }, %struct.speed_map { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.293, i32 0, i32 0), i32 4108, i64 2500000 }, %struct.speed_map { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.294, i32 0, i32 0), i32 4109, i64 3000000 }, %struct.speed_map { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.295, i32 0, i32 0), i32 4110, i64 3500000 }, %struct.speed_map { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.296, i32 0, i32 0), i32 4111, i64 4000000 }, %struct.speed_map zeroinitializer], align 16
@.str.261 = private unnamed_addr constant [34 x i8] c"ispeed %lu baud; ospeed %lu baud;\00", align 1
@.str.262 = private unnamed_addr constant [9 x i8] c"%lu %lu\0A\00", align 1
@.str.263 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.264 = private unnamed_addr constant [3 x i8] c"50\00", align 1
@.str.265 = private unnamed_addr constant [3 x i8] c"75\00", align 1
@.str.266 = private unnamed_addr constant [4 x i8] c"110\00", align 1
@.str.267 = private unnamed_addr constant [4 x i8] c"134\00", align 1
@.str.268 = private unnamed_addr constant [6 x i8] c"134.5\00", align 1
@.str.269 = private unnamed_addr constant [4 x i8] c"150\00", align 1
@.str.270 = private unnamed_addr constant [4 x i8] c"200\00", align 1
@.str.271 = private unnamed_addr constant [4 x i8] c"300\00", align 1
@.str.272 = private unnamed_addr constant [4 x i8] c"600\00", align 1
@.str.273 = private unnamed_addr constant [5 x i8] c"1200\00", align 1
@.str.274 = private unnamed_addr constant [5 x i8] c"1800\00", align 1
@.str.275 = private unnamed_addr constant [5 x i8] c"2400\00", align 1
@.str.276 = private unnamed_addr constant [5 x i8] c"4800\00", align 1
@.str.277 = private unnamed_addr constant [5 x i8] c"9600\00", align 1
@.str.278 = private unnamed_addr constant [6 x i8] c"19200\00", align 1
@.str.279 = private unnamed_addr constant [6 x i8] c"38400\00", align 1
@.str.280 = private unnamed_addr constant [5 x i8] c"exta\00", align 1
@.str.281 = private unnamed_addr constant [5 x i8] c"extb\00", align 1
@.str.282 = private unnamed_addr constant [6 x i8] c"57600\00", align 1
@.str.283 = private unnamed_addr constant [7 x i8] c"115200\00", align 1
@.str.284 = private unnamed_addr constant [7 x i8] c"230400\00", align 1
@.str.285 = private unnamed_addr constant [7 x i8] c"460800\00", align 1
@.str.286 = private unnamed_addr constant [7 x i8] c"500000\00", align 1
@.str.287 = private unnamed_addr constant [7 x i8] c"576000\00", align 1
@.str.288 = private unnamed_addr constant [7 x i8] c"921600\00", align 1
@.str.289 = private unnamed_addr constant [8 x i8] c"1000000\00", align 1
@.str.290 = private unnamed_addr constant [8 x i8] c"1152000\00", align 1
@.str.291 = private unnamed_addr constant [8 x i8] c"1500000\00", align 1
@.str.292 = private unnamed_addr constant [8 x i8] c"2000000\00", align 1
@.str.293 = private unnamed_addr constant [8 x i8] c"2500000\00", align 1
@.str.294 = private unnamed_addr constant [8 x i8] c"3000000\00", align 1
@.str.295 = private unnamed_addr constant [8 x i8] c"3500000\00", align 1
@.str.296 = private unnamed_addr constant [8 x i8] c"4000000\00", align 1
@__PRETTY_FUNCTION__.sane_mode = private unnamed_addr constant [33 x i8] c"void sane_mode(struct termios *)\00", align 1
@.str.132 = private unnamed_addr constant [20 x i8] c"invalid argument %s\00", align 1
@.str.133 = private unnamed_addr constant [23 x i8] c"missing argument to %s\00", align 1
@.str.255 = private unnamed_addr constant [25 x i8] c"invalid integer argument\00", align 1
@.str.254 = private unnamed_addr constant [3 x i8] c"bB\00", align 1
@.str.253 = private unnamed_addr constant [6 x i8] c"undef\00", align 1
@.str.134 = private unnamed_addr constant [7 x i8] c"ispeed\00", align 1
@.str.135 = private unnamed_addr constant [7 x i8] c"ospeed\00", align 1
@.str.136 = private unnamed_addr constant [5 x i8] c"rows\00", align 1
@.str.137 = private unnamed_addr constant [5 x i8] c"cols\00", align 1
@.str.138 = private unnamed_addr constant [8 x i8] c"columns\00", align 1
@.str.139 = private unnamed_addr constant [5 x i8] c"size\00", align 1
@.str.140 = private unnamed_addr constant [5 x i8] c"line\00", align 1
@.str.141 = private unnamed_addr constant [27 x i8] c"invalid line discipline %s\00", align 1
@.str.142 = private unnamed_addr constant [6 x i8] c"speed\00", align 1
@.str.127 = private unnamed_addr constant [4 x i8] c"all\00", align 1
@.str.128 = private unnamed_addr constant [5 x i8] c"save\00", align 1
@.str.129 = private unnamed_addr constant [5 x i8] c"file\00", align 1
@.str.130 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.131 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@Version = local_unnamed_addr global i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.112, i64 0, i64 0), align 8
@.str.112 = private unnamed_addr constant [5 x i8] c"8.27\00", align 1
@file_name = internal unnamed_addr global i8* null, align 8
@ignore_EPIPE = internal unnamed_addr global i8 0, align 1
@.str.115 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.1.116 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.2.117 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@exit_failure = global i32 1, align 4
@program_name = local_unnamed_addr global i8* null, align 8
@.str.252 = private unnamed_addr constant [56 x i8] c"A NULL argv[0] was passed through an exec system call.\0A\00", align 1
@.str.1.253 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1
@.str.2.254 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1
@program_invocation_short_name = external local_unnamed_addr global i8*, align 8
@program_invocation_name = external local_unnamed_addr global i8*, align 8
@quoting_style_args = local_unnamed_addr constant [11 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.306, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.307, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2.308, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3.309, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4.310, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.311, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6.312, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7.313, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8.314, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9.315, i32 0, i32 0), i8* null], align 16
@.str.306 = private unnamed_addr constant [8 x i8] c"literal\00", align 1
@.str.1.307 = private unnamed_addr constant [6 x i8] c"shell\00", align 1
@.str.2.308 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1
@.str.3.309 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1
@.str.4.310 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1
@.str.5.311 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str.6.312 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1
@.str.7.313 = private unnamed_addr constant [7 x i8] c"escape\00", align 1
@.str.8.314 = private unnamed_addr constant [7 x i8] c"locale\00", align 1
@.str.9.315 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1
@quoting_style_vals = local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 16
@quote_quoting_options = global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, i8* null, i8* null }, align 8
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8
@.str.11.316 = private unnamed_addr constant [2 x i8] c"`\00", align 1
@.str.12.317 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.10.318 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.14.319 = private unnamed_addr constant [4 x i8] c"\E2\80\98\00", align 1
@.str.15.320 = private unnamed_addr constant [4 x i8] c"\E2\80\99\00", align 1
@.str.17.321 = private unnamed_addr constant [4 x i8] c"\A1\07e\00", align 1
@.str.18.322 = private unnamed_addr constant [3 x i8] c"\A1\AF\00", align 1
@slotvec = internal unnamed_addr global %struct.slotvec* @slotvec0, align 8
@nslots = internal unnamed_addr global i32 1, align 4
@slot0 = internal global [256 x i8] zeroinitializer, align 16
@slotvec0 = internal global %struct.slotvec { i64 256, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i32 0, i32 0) }, align 8
@.str.329 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1
@.str.1.330 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1
@.str.2.331 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1
@.str.3.332 = private unnamed_addr constant [203 x i8] c"\0ALicense GPLv3+: GNU GPL version 3 or later <http://gnu.org/licenses/gpl.html>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\0A\00", align 1
@.str.4.333 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1
@.str.5.334 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1
@.str.6.335 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1
@.str.7.336 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.8.337 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.9.338 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1
@.str.10.339 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1
@.str.11.340 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.12.341 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.13.342 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1
@.str.14.345 = private unnamed_addr constant [21 x i8] c"\0AReport bugs to: %s\0A\00", align 1
@.str.15.346 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1
@.str.16.347 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1
@.str.17.348 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.18.349 = private unnamed_addr constant [39 x i8] c"http://www.gnu.org/software/coreutils/\00", align 1
@.str.19.350 = private unnamed_addr constant [64 x i8] c"General help using GNU software: <http://www.gnu.org/gethelp/>\0A\00", align 1
@version_etc_copyright = constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 16
@.str.1.361 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@.str.362 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.365 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.368 = private unnamed_addr constant [38 x i8] c"0 <= strtol_base && strtol_base <= 36\00", align 1
@.str.1.369 = private unnamed_addr constant [14 x i8] c"lib/xstrtol.c\00", align 1
@__PRETTY_FUNCTION__.xstrtol = private unnamed_addr constant [71 x i8] c"strtol_error xstrtol(const char *, char **, int, long *, const char *)\00", align 1
@.str.372 = private unnamed_addr constant [38 x i8] c"0 <= strtol_base && strtol_base <= 36\00", align 1
@.str.1.373 = private unnamed_addr constant [16 x i8] c"./lib/xstrtol.c\00", align 1
@__PRETTY_FUNCTION__.xstrtoumax = private unnamed_addr constant [79 x i8] c"strtol_error xstrtoumax(const char *, char **, int, uintmax_t *, const char *)\00", align 1
@rpl_fcntl.have_dupfd_cloexec = internal unnamed_addr global i32 0, align 4
@.str.1.384 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1
@.str.387 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@charset_aliases = internal global i8* null, align 8
@.str.3.388 = private unnamed_addr constant [16 x i8] c"CHARSETALIASDIR\00", align 1
@.str.4.389 = private unnamed_addr constant [15 x i8] c"/usr/local/lib\00", align 1
@.str.2.390 = private unnamed_addr constant [14 x i8] c"charset.alias\00", align 1
@.str.5.391 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.6.392 = private unnamed_addr constant [10 x i8] c"%50s %50s\00", align 1
@.str.1.393 = private unnamed_addr constant [6 x i8] c"ASCII\00", align 1

; Function Attrs: noreturn nounwind sspstrong uwtable
define void @usage(i32) local_unnamed_addr #0 {
  %2 = icmp eq i32 %0, 0
  br i1 %2, label %8, label %3

; <label>:3:                                      ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 5) #9
  %6 = load i8*, i8** @program_name, align 8
  %7 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %4, i32 1, i8* %5, i8* %6) #9
  br label %273

; <label>:8:                                      ; preds = %1
  %9 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([151 x i8], [151 x i8]* @.str.1, i64 0, i64 0), i32 5) #9
  %10 = load i8*, i8** @program_name, align 8
  %11 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %9, i8* %10, i8* %10, i8* %10) #9
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0), i32 5) #9
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %14 = tail call i32 @fputs_unlocked(i8* %12, %struct._IO_FILE* %13) #9
  %15 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.111, i64 0, i64 0), i32 5) #9
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %17 = tail call i32 @fputs_unlocked(i8* %15, %struct._IO_FILE* %16) #9
  %18 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([216 x i8], [216 x i8]* @.str.3, i64 0, i64 0), i32 5) #9
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %20 = tail call i32 @fputs_unlocked(i8* %18, %struct._IO_FILE* %19) #9
  %21 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.4, i64 0, i64 0), i32 5) #9
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %23 = tail call i32 @fputs_unlocked(i8* %21, %struct._IO_FILE* %22) #9
  %24 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.5, i64 0, i64 0), i32 5) #9
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %26 = tail call i32 @fputs_unlocked(i8* %24, %struct._IO_FILE* %25) #9
  %27 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([141 x i8], [141 x i8]* @.str.6, i64 0, i64 0), i32 5) #9
  %28 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %29 = tail call i32 @fputs_unlocked(i8* %27, %struct._IO_FILE* %28) #9
  %30 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i64 0, i64 0), i32 5) #9
  %31 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %32 = tail call i32 @fputs_unlocked(i8* %30, %struct._IO_FILE* %31) #9
  %33 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.8, i64 0, i64 0), i32 5) #9
  %34 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %35 = tail call i32 @fputs_unlocked(i8* %33, %struct._IO_FILE* %34) #9
  %36 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([110 x i8], [110 x i8]* @.str.9, i64 0, i64 0), i32 5) #9
  %37 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %38 = tail call i32 @fputs_unlocked(i8* %36, %struct._IO_FILE* %37) #9
  %39 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.10, i64 0, i64 0), i32 5) #9
  %40 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %41 = tail call i32 @fputs_unlocked(i8* %39, %struct._IO_FILE* %40) #9
  %42 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([161 x i8], [161 x i8]* @.str.11, i64 0, i64 0), i32 5) #9
  %43 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %44 = tail call i32 @fputs_unlocked(i8* %42, %struct._IO_FILE* %43) #9
  %45 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.12, i64 0, i64 0), i32 5) #9
  %46 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %47 = tail call i32 @fputs_unlocked(i8* %45, %struct._IO_FILE* %46) #9
  %48 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.13, i64 0, i64 0), i32 5) #9
  %49 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %50 = tail call i32 @fputs_unlocked(i8* %48, %struct._IO_FILE* %49) #9
  %51 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.14, i64 0, i64 0), i32 5) #9
  %52 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %53 = tail call i32 @fputs_unlocked(i8* %51, %struct._IO_FILE* %52) #9
  %54 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([163 x i8], [163 x i8]* @.str.15, i64 0, i64 0), i32 5) #9
  %55 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %56 = tail call i32 @fputs_unlocked(i8* %54, %struct._IO_FILE* %55) #9
  %57 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.16, i64 0, i64 0), i32 5) #9
  %58 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %59 = tail call i32 @fputs_unlocked(i8* %57, %struct._IO_FILE* %58) #9
  %60 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.17, i64 0, i64 0), i32 5) #9
  %61 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %62 = tail call i32 @fputs_unlocked(i8* %60, %struct._IO_FILE* %61) #9
  %63 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str.18, i64 0, i64 0), i32 5) #9
  %64 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %65 = tail call i32 @fputs_unlocked(i8* %63, %struct._IO_FILE* %64) #9
  %66 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([98 x i8], [98 x i8]* @.str.19, i64 0, i64 0), i32 5) #9
  %67 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %68 = tail call i32 @fputs_unlocked(i8* %66, %struct._IO_FILE* %67) #9
  %69 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.20, i64 0, i64 0), i32 5) #9
  %70 = load i32, i32* @tcsetattr_options, align 4
  %71 = icmp eq i32 %70, 1
  %72 = select i1 %71, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.21, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.22, i64 0, i64 0)
  %73 = tail call i8* @dcgettext(i8* null, i8* %72, i32 5) #9
  %74 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %69, i8* %73) #9
  %75 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.23, i64 0, i64 0), i32 5) #9
  %76 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %77 = tail call i32 @fputs_unlocked(i8* %75, %struct._IO_FILE* %76) #9
  %78 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.24, i64 0, i64 0), i32 5) #9
  %79 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %80 = tail call i32 @fputs_unlocked(i8* %78, %struct._IO_FILE* %79) #9
  %81 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([121 x i8], [121 x i8]* @.str.25, i64 0, i64 0), i32 5) #9
  %82 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %83 = tail call i32 @fputs_unlocked(i8* %81, %struct._IO_FILE* %82) #9
  %84 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([141 x i8], [141 x i8]* @.str.26, i64 0, i64 0), i32 5) #9
  %85 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %86 = tail call i32 @fputs_unlocked(i8* %84, %struct._IO_FILE* %85) #9
  %87 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([115 x i8], [115 x i8]* @.str.27, i64 0, i64 0), i32 5) #9
  %88 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %89 = tail call i32 @fputs_unlocked(i8* %87, %struct._IO_FILE* %88) #9
  %90 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([111 x i8], [111 x i8]* @.str.28, i64 0, i64 0), i32 5) #9
  %91 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %92 = tail call i32 @fputs_unlocked(i8* %90, %struct._IO_FILE* %91) #9
  %93 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.29, i64 0, i64 0), i32 5) #9
  %94 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %95 = tail call i32 @fputs_unlocked(i8* %93, %struct._IO_FILE* %94) #9
  %96 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.30, i64 0, i64 0), i32 5) #9
  %97 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %98 = tail call i32 @fputs_unlocked(i8* %96, %struct._IO_FILE* %97) #9
  %99 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([308 x i8], [308 x i8]* @.str.31, i64 0, i64 0), i32 5) #9
  %100 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %101 = tail call i32 @fputs_unlocked(i8* %99, %struct._IO_FILE* %100) #9
  %102 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.32, i64 0, i64 0), i32 5) #9
  %103 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %104 = tail call i32 @fputs_unlocked(i8* %102, %struct._IO_FILE* %103) #9
  %105 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([257 x i8], [257 x i8]* @.str.33, i64 0, i64 0), i32 5) #9
  %106 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %107 = tail call i32 @fputs_unlocked(i8* %105, %struct._IO_FILE* %106) #9
  %108 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.34, i64 0, i64 0), i32 5) #9
  %109 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %110 = tail call i32 @fputs_unlocked(i8* %108, %struct._IO_FILE* %109) #9
  %111 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([159 x i8], [159 x i8]* @.str.35, i64 0, i64 0), i32 5) #9
  %112 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %113 = tail call i32 @fputs_unlocked(i8* %111, %struct._IO_FILE* %112) #9
  %114 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.36, i64 0, i64 0), i32 5) #9
  %115 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %116 = tail call i32 @fputs_unlocked(i8* %114, %struct._IO_FILE* %115) #9
  %117 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.37, i64 0, i64 0), i32 5) #9
  %118 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %119 = tail call i32 @fputs_unlocked(i8* %117, %struct._IO_FILE* %118) #9
  %120 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.38, i64 0, i64 0), i32 5) #9
  %121 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %122 = tail call i32 @fputs_unlocked(i8* %120, %struct._IO_FILE* %121) #9
  %123 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([208 x i8], [208 x i8]* @.str.39, i64 0, i64 0), i32 5) #9
  %124 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %125 = tail call i32 @fputs_unlocked(i8* %123, %struct._IO_FILE* %124) #9
  %126 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.40, i64 0, i64 0), i32 5) #9
  %127 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %128 = tail call i32 @fputs_unlocked(i8* %126, %struct._IO_FILE* %127) #9
  %129 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.41, i64 0, i64 0), i32 5) #9
  %130 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %131 = tail call i32 @fputs_unlocked(i8* %129, %struct._IO_FILE* %130) #9
  %132 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.42, i64 0, i64 0), i32 5) #9
  %133 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %134 = tail call i32 @fputs_unlocked(i8* %132, %struct._IO_FILE* %133) #9
  %135 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.43, i64 0, i64 0), i32 5) #9
  %136 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %137 = tail call i32 @fputs_unlocked(i8* %135, %struct._IO_FILE* %136) #9
  %138 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.44, i64 0, i64 0), i32 5) #9
  %139 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %140 = tail call i32 @fputs_unlocked(i8* %138, %struct._IO_FILE* %139) #9
  %141 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.45, i64 0, i64 0), i32 5) #9
  %142 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %143 = tail call i32 @fputs_unlocked(i8* %141, %struct._IO_FILE* %142) #9
  %144 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.46, i64 0, i64 0), i32 5) #9
  %145 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %146 = tail call i32 @fputs_unlocked(i8* %144, %struct._IO_FILE* %145) #9
  %147 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.47, i64 0, i64 0), i32 5) #9
  %148 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %149 = tail call i32 @fputs_unlocked(i8* %147, %struct._IO_FILE* %148) #9
  %150 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.48, i64 0, i64 0), i32 5) #9
  %151 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %152 = tail call i32 @fputs_unlocked(i8* %150, %struct._IO_FILE* %151) #9
  %153 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.49, i64 0, i64 0), i32 5) #9
  %154 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %155 = tail call i32 @fputs_unlocked(i8* %153, %struct._IO_FILE* %154) #9
  %156 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.50, i64 0, i64 0), i32 5) #9
  %157 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %158 = tail call i32 @fputs_unlocked(i8* %156, %struct._IO_FILE* %157) #9
  %159 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.51, i64 0, i64 0), i32 5) #9
  %160 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %161 = tail call i32 @fputs_unlocked(i8* %159, %struct._IO_FILE* %160) #9
  %162 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.52, i64 0, i64 0), i32 5) #9
  %163 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %164 = tail call i32 @fputs_unlocked(i8* %162, %struct._IO_FILE* %163) #9
  %165 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([118 x i8], [118 x i8]* @.str.53, i64 0, i64 0), i32 5) #9
  %166 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %167 = tail call i32 @fputs_unlocked(i8* %165, %struct._IO_FILE* %166) #9
  %168 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.54, i64 0, i64 0), i32 5) #9
  %169 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %170 = tail call i32 @fputs_unlocked(i8* %168, %struct._IO_FILE* %169) #9
  %171 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([86 x i8], [86 x i8]* @.str.55, i64 0, i64 0), i32 5) #9
  %172 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %173 = tail call i32 @fputs_unlocked(i8* %171, %struct._IO_FILE* %172) #9
  %174 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([147 x i8], [147 x i8]* @.str.56, i64 0, i64 0), i32 5) #9
  %175 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %176 = tail call i32 @fputs_unlocked(i8* %174, %struct._IO_FILE* %175) #9
  %177 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.57, i64 0, i64 0), i32 5) #9
  %178 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %179 = tail call i32 @fputs_unlocked(i8* %177, %struct._IO_FILE* %178) #9
  %180 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.58, i64 0, i64 0), i32 5) #9
  %181 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %182 = tail call i32 @fputs_unlocked(i8* %180, %struct._IO_FILE* %181) #9
  %183 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.59, i64 0, i64 0), i32 5) #9
  %184 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %185 = tail call i32 @fputs_unlocked(i8* %183, %struct._IO_FILE* %184) #9
  %186 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([93 x i8], [93 x i8]* @.str.60, i64 0, i64 0), i32 5) #9
  %187 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %188 = tail call i32 @fputs_unlocked(i8* %186, %struct._IO_FILE* %187) #9
  %189 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.61, i64 0, i64 0), i32 5) #9
  %190 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %191 = tail call i32 @fputs_unlocked(i8* %189, %struct._IO_FILE* %190) #9
  %192 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.62, i64 0, i64 0), i32 5) #9
  %193 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %194 = tail call i32 @fputs_unlocked(i8* %192, %struct._IO_FILE* %193) #9
  %195 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.63, i64 0, i64 0), i32 5) #9
  %196 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %197 = tail call i32 @fputs_unlocked(i8* %195, %struct._IO_FILE* %196) #9
  %198 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.64, i64 0, i64 0), i32 5) #9
  %199 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %200 = tail call i32 @fputs_unlocked(i8* %198, %struct._IO_FILE* %199) #9
  %201 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.65, i64 0, i64 0), i32 5) #9
  %202 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %203 = tail call i32 @fputs_unlocked(i8* %201, %struct._IO_FILE* %202) #9
  %204 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([101 x i8], [101 x i8]* @.str.66, i64 0, i64 0), i32 5) #9
  %205 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %204, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.67, i64 0, i64 0)) #9
  %206 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([151 x i8], [151 x i8]* @.str.68, i64 0, i64 0), i32 5) #9
  %207 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %208 = tail call i32 @fputs_unlocked(i8* %206, %struct._IO_FILE* %207) #9
  %209 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.69, i64 0, i64 0), i32 5) #9
  %210 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %211 = tail call i32 @fputs_unlocked(i8* %209, %struct._IO_FILE* %210) #9
  %212 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.70, i64 0, i64 0), i32 5) #9
  %213 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %214 = tail call i32 @fputs_unlocked(i8* %212, %struct._IO_FILE* %213) #9
  %215 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.71, i64 0, i64 0), i32 5) #9
  %216 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %217 = tail call i32 @fputs_unlocked(i8* %215, %struct._IO_FILE* %216) #9
  %218 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.72, i64 0, i64 0), i32 5) #9
  %219 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %220 = tail call i32 @fputs_unlocked(i8* %218, %struct._IO_FILE* %219) #9
  %221 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.73, i64 0, i64 0), i32 5) #9
  %222 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %223 = tail call i32 @fputs_unlocked(i8* %221, %struct._IO_FILE* %222) #9
  %224 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.74, i64 0, i64 0), i32 5) #9
  %225 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %226 = tail call i32 @fputs_unlocked(i8* %224, %struct._IO_FILE* %225) #9
  %227 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([170 x i8], [170 x i8]* @.str.75, i64 0, i64 0), i32 5) #9
  %228 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %229 = tail call i32 @fputs_unlocked(i8* %227, %struct._IO_FILE* %228) #9
  %230 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.76, i64 0, i64 0), i32 5) #9
  %231 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %230, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.77, i64 0, i64 0)) #9
  %232 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.78, i64 0, i64 0), i32 5) #9
  %233 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %232, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.79, i64 0, i64 0)) #9
  %234 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.80, i64 0, i64 0), i32 5) #9
  %235 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %236 = tail call i32 @fputs_unlocked(i8* %234, %struct._IO_FILE* %235) #9
  %237 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([149 x i8], [149 x i8]* @.str.81, i64 0, i64 0), i32 5) #9
  %238 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %239 = tail call i32 @fputs_unlocked(i8* %237, %struct._IO_FILE* %238) #9
  %240 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.82, i64 0, i64 0), i32 5) #9
  %241 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %242 = tail call i32 @fputs_unlocked(i8* %240, %struct._IO_FILE* %241) #9
  %243 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([102 x i8], [102 x i8]* @.str.83, i64 0, i64 0), i32 5) #9
  %244 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %245 = tail call i32 @fputs_unlocked(i8* %243, %struct._IO_FILE* %244) #9
  %246 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.84, i64 0, i64 0), i32 5) #9
  %247 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %246, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.85, i64 0, i64 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.86, i64 0, i64 0)) #9
  %248 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([203 x i8], [203 x i8]* @.str.87, i64 0, i64 0), i32 5) #9
  %249 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %250 = tail call i32 @fputs_unlocked(i8* %248, %struct._IO_FILE* %249) #9
  %251 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([209 x i8], [209 x i8]* @.str.88, i64 0, i64 0), i32 5) #9
  %252 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %251, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.89, i64 0, i64 0)) #9
  %253 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @.str.90, i64 0, i64 0), i32 5) #9
  %254 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %253, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.91, i64 0, i64 0), i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.92, i64 0, i64 0), i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.93, i64 0, i64 0)) #9
  %255 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([277 x i8], [277 x i8]* @.str.94, i64 0, i64 0), i32 5) #9
  %256 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %257 = tail call i32 @fputs_unlocked(i8* %255, %struct._IO_FILE* %256) #9
  %258 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.120, i64 0, i64 0), i32 5) #9
  %259 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %258, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.101, i64 0, i64 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.121, i64 0, i64 0)) #9
  %260 = tail call i8* @setlocale(i32 5, i8* null) #9
  %261 = icmp eq i8* %260, null
  br i1 %261, label %268, label %262

; <label>:262:                                    ; preds = %8
  %263 = tail call i32 @strncmp(i8* nonnull %260, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.122, i64 0, i64 0), i64 3) #13
  %264 = icmp eq i32 %263, 0
  br i1 %264, label %268, label %265

; <label>:265:                                    ; preds = %262
  %266 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.123, i64 0, i64 0), i32 5) #9
  %267 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %266, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.95, i64 0, i64 0)) #9
  br label %268

; <label>:268:                                    ; preds = %8, %262, %265
  %269 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.124, i64 0, i64 0), i32 5) #9
  %270 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %269, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.121, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.95, i64 0, i64 0)) #9
  %271 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.125, i64 0, i64 0), i32 5) #9
  %272 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %271, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.95, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.126, i64 0, i64 0)) #9
  br label %273

; <label>:273:                                    ; preds = %268, %3
  tail call void @exit(i32 %0) #14
  unreachable
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata, metadata) #1

; Function Attrs: nounwind
declare i8* @dcgettext(i8*, i8*, i32) local_unnamed_addr #2

declare i32 @__fprintf_chk(%struct._IO_FILE*, i32, i8*, ...) local_unnamed_addr #3

declare i32 @__printf_chk(i32, i8*, ...) local_unnamed_addr #3

declare i32 @fputs_unlocked(i8*, %struct._IO_FILE*) local_unnamed_addr #3

; Function Attrs: nounwind
declare i8* @setlocale(i32, i8*) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @strncmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #4

; Function Attrs: noreturn nounwind
declare void @exit(i32) local_unnamed_addr #5

; Function Attrs: nounwind sspstrong uwtable
define i32 @main(i32, i8**) local_unnamed_addr #6 {
  %3 = alloca %struct.winsize, align 2
  %4 = alloca i64, align 8
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  call void @llvm.lifetime.start(i64 1, i8* nonnull %5) #9
  call void @llvm.lifetime.start(i64 1, i8* nonnull %6) #9
  %7 = load i8*, i8** %1, align 8
  tail call void @set_program_name(i8* %7) #9
  %8 = tail call i8* @setlocale(i32 6, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.96, i64 0, i64 0)) #9
  %9 = tail call i8* @bindtextdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.97, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.98, i64 0, i64 0)) #9
  %10 = tail call i8* @textdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.97, i64 0, i64 0)) #9
  %11 = tail call i32 @atexit(void ()* nonnull @close_stdout) #9
  store i32 0, i32* @opterr, align 4
  br label %16

; <label>:12:                                     ; preds = %94
  br label %13

; <label>:13:                                     ; preds = %89, %12
  %14 = phi i64 [ %91, %89 ], [ %96, %12 ]
  %15 = trunc i64 %14 to i32
  br label %62

; <label>:16:                                     ; preds = %62, %2
  %17 = phi i8* [ null, %2 ], [ %53, %62 ]
  %18 = phi i8 [ 1, %2 ], [ %54, %62 ]
  %19 = phi i8 [ 0, %2 ], [ %55, %62 ]
  %20 = phi i8 [ 0, %2 ], [ %56, %62 ]
  %21 = phi i32 [ 1, %2 ], [ %63, %62 ]
  %22 = phi i32 [ 0, %2 ], [ %58, %62 ]
  %23 = phi i32 [ 0, %2 ], [ %59, %62 ]
  %24 = sub nsw i32 %0, %22
  %25 = sext i32 %22 to i64
  %26 = getelementptr inbounds i8*, i8** %1, i64 %25
  %27 = tail call i32 @getopt_long(i32 %24, i8** %26, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.99, i64 0, i64 0), %struct.option* getelementptr inbounds ([6 x %struct.option], [6 x %struct.option]* @longopts, i64 0, i64 0), i32* null) #9
  switch i32 %27, label %39 [
    i32 -1, label %98
    i32 97, label %52
    i32 103, label %28
    i32 70, label %29
    i32 -130, label %35
    i32 -131, label %36
  ]

; <label>:28:                                     ; preds = %16
  br label %52

; <label>:29:                                     ; preds = %16
  %30 = icmp eq i8* %17, null
  br i1 %30, label %33, label %31

; <label>:31:                                     ; preds = %29
  %32 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.100, i64 0, i64 0), i32 5) #9
  tail call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %32) #9
  unreachable

; <label>:33:                                     ; preds = %29
  %34 = load i8*, i8** @optarg, align 8
  br label %52

; <label>:35:                                     ; preds = %16
  tail call void @usage(i32 0) #15
  unreachable

; <label>:36:                                     ; preds = %16
  %37 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %38 = load i8*, i8** @Version, align 8
  tail call void (%struct._IO_FILE*, i8*, i8*, i8*, ...) @version_etc(%struct._IO_FILE* %37, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.95, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.101, i64 0, i64 0), i8* %38, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.102, i64 0, i64 0), i8* null) #9
  tail call void @exit(i32 0) #14
  unreachable

; <label>:39:                                     ; preds = %16
  %40 = add nsw i32 %22, %21
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i8*, i8** %1, i64 %41
  %43 = load i8*, i8** %42, align 8
  %44 = tail call i32 @strcmp(i8* %43, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.103, i64 0, i64 0)) #9
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %50, label %46

; <label>:46:                                     ; preds = %39
  %47 = tail call i32 @strcmp(i8* %43, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.104, i64 0, i64 0)) #9
  %48 = icmp eq i32 %47, 0
  %49 = select i1 %48, i8 %18, i8 0
  br label %50

; <label>:50:                                     ; preds = %46, %39
  %51 = phi i8 [ %18, %39 ], [ %49, %46 ]
  store i32 0, i32* @optind, align 4
  br label %52

; <label>:52:                                     ; preds = %50, %33, %28, %16
  %53 = phi i8* [ %17, %16 ], [ %17, %28 ], [ %34, %33 ], [ %17, %50 ]
  %54 = phi i8 [ %18, %16 ], [ %18, %28 ], [ %18, %33 ], [ %51, %50 ]
  %55 = phi i8 [ %19, %16 ], [ 1, %28 ], [ %19, %33 ], [ %19, %50 ]
  %56 = phi i8 [ 1, %16 ], [ %20, %28 ], [ %20, %33 ], [ %20, %50 ]
  %57 = phi i32 [ %21, %16 ], [ %21, %28 ], [ %21, %33 ], [ 1, %50 ]
  %58 = phi i32 [ %22, %16 ], [ %22, %28 ], [ %22, %33 ], [ %40, %50 ]
  %59 = phi i32 [ 1, %16 ], [ 2, %28 ], [ %23, %33 ], [ %23, %50 ]
  %60 = load i32, i32* @optind, align 4
  %61 = icmp slt i32 %57, %60
  br i1 %61, label %64, label %62

; <label>:62:                                     ; preds = %52, %13
  %63 = phi i32 [ %57, %52 ], [ %15, %13 ]
  br label %16

; <label>:64:                                     ; preds = %52
  %65 = sext i32 %57 to i64
  %66 = sext i32 %58 to i64
  %67 = sext i32 %60 to i64
  %68 = add nsw i64 %65, %66
  %69 = getelementptr i8*, i8** %1, i64 %68
  %70 = bitcast i8** %69 to i8*
  %71 = add nsw i64 %65, 1
  %72 = icmp sgt i64 %71, %67
  %73 = select i1 %72, i64 %71, i64 %67
  %74 = sub nsw i64 %73, %65
  %75 = shl nsw i64 %74, 3
  call void @llvm.memset.p0i8.i64(i8* %70, i8 0, i64 %75, i32 8, i1 false)
  %76 = sub nsw i64 %67, %65
  %77 = add nsw i64 %67, -1
  %78 = sub nsw i64 %77, %65
  %79 = and i64 %76, 7
  %80 = icmp eq i64 %79, 0
  br i1 %80, label %89, label %81

; <label>:81:                                     ; preds = %64
  br label %82

; <label>:82:                                     ; preds = %82, %81
  %83 = phi i64 [ %65, %81 ], [ %85, %82 ]
  %84 = phi i64 [ %79, %81 ], [ %86, %82 ]
  %85 = add nsw i64 %83, 1
  %86 = add i64 %84, -1
  %87 = icmp eq i64 %86, 0
  br i1 %87, label %88, label %82

; <label>:88:                                     ; preds = %82
  br label %89

; <label>:89:                                     ; preds = %64, %88
  %90 = phi i64 [ %65, %64 ], [ %85, %88 ]
  %91 = phi i64 [ undef, %64 ], [ %85, %88 ]
  %92 = icmp ult i64 %78, 7
  br i1 %92, label %13, label %93

; <label>:93:                                     ; preds = %89
  br label %94

; <label>:94:                                     ; preds = %94, %93
  %95 = phi i64 [ %90, %93 ], [ %96, %94 ]
  %96 = add nsw i64 %95, 8
  %97 = icmp slt i64 %96, %67
  br i1 %97, label %94, label %12

; <label>:98:                                     ; preds = %16
  %99 = and i8 %19, 1
  %100 = and i8 %99, %20
  %101 = icmp eq i8 %100, 0
  br i1 %101, label %104, label %102

; <label>:102:                                    ; preds = %98
  %103 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.105, i64 0, i64 0), i32 5) #9
  tail call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %103) #9
  unreachable

; <label>:104:                                    ; preds = %98
  %105 = and i8 %18, 1
  %106 = icmp ne i8 %105, 0
  %107 = or i8 %20, %19
  %108 = and i8 %107, 1
  %109 = icmp eq i8 %108, 0
  %110 = or i1 %106, %109
  br i1 %110, label %113, label %111

; <label>:111:                                    ; preds = %104
  %112 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.106, i64 0, i64 0), i32 5) #9
  tail call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %112) #9
  unreachable

; <label>:113:                                    ; preds = %104
  %114 = icmp ne i8* %17, null
  br i1 %114, label %117, label %115

; <label>:115:                                    ; preds = %113
  %116 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.107, i64 0, i64 0), i32 5) #9
  br label %117

; <label>:117:                                    ; preds = %113, %115
  %118 = phi i8* [ %116, %115 ], [ %17, %113 ]
  %119 = or i8 %19, %18
  %120 = or i8 %119, %20
  %121 = and i8 %120, 1
  %122 = icmp eq i8 %121, 0
  br i1 %122, label %123, label %124

; <label>:123:                                    ; preds = %117
  call fastcc void @apply_settings(i1 zeroext true, i8* %118, i8** %1, i32 %0, %struct.termios* nonnull @main.check_mode, i8* nonnull %6, i8* nonnull %5)
  br label %124

; <label>:124:                                    ; preds = %117, %123
  br i1 %114, label %125, label %144

; <label>:125:                                    ; preds = %124
  %126 = tail call i32 @fd_reopen(i32 0, i8* %118, i32 2048, i32 0) #9
  %127 = icmp slt i32 %126, 0
  br i1 %127, label %128, label %132

; <label>:128:                                    ; preds = %125
  %129 = tail call i32* @__errno_location() #1
  %130 = load i32, i32* %129, align 4
  %131 = tail call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %118) #9
  tail call void (i32, i32, i8*, ...) @error(i32 1, i32 %130, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.108, i64 0, i64 0), i8* %131) #9
  unreachable

; <label>:132:                                    ; preds = %125
  %133 = tail call i32 (i32, i32, ...) @rpl_fcntl(i32 0, i32 3) #9
  %134 = icmp eq i32 %133, -1
  br i1 %134, label %139, label %135

; <label>:135:                                    ; preds = %132
  %136 = and i32 %133, -2049
  %137 = tail call i32 (i32, i32, ...) @rpl_fcntl(i32 0, i32 4, i32 %136) #9
  %138 = icmp slt i32 %137, 0
  br i1 %138, label %139, label %144

; <label>:139:                                    ; preds = %135, %132
  %140 = tail call i32* @__errno_location() #1
  %141 = load i32, i32* %140, align 4
  %142 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.109, i64 0, i64 0), i32 5) #9
  %143 = tail call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %118) #9
  tail call void (i32, i32, i8*, ...) @error(i32 1, i32 %141, i8* %142, i8* %143) #9
  unreachable

; <label>:144:                                    ; preds = %135, %124
  %145 = tail call i32 @tcgetattr(i32 0, %struct.termios* nonnull @main.mode) #9
  %146 = icmp eq i32 %145, 0
  br i1 %146, label %151, label %147

; <label>:147:                                    ; preds = %144
  %148 = tail call i32* @__errno_location() #1
  %149 = load i32, i32* %148, align 4
  %150 = tail call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %118) #9
  tail call void (i32, i32, i8*, ...) @error(i32 1, i32 %149, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.108, i64 0, i64 0), i8* %150) #9
  unreachable

; <label>:151:                                    ; preds = %144
  br i1 %122, label %548, label %152

; <label>:152:                                    ; preds = %151
  %153 = bitcast %struct.winsize* %3 to i8*
  call void @llvm.lifetime.start(i64 8, i8* nonnull %153) #9
  %154 = call i32 (i32, i64, ...) @ioctl(i32 1, i64 21523, %struct.winsize* nonnull %3) #9
  %155 = icmp eq i32 %154, 0
  br i1 %155, label %156, label %162

; <label>:156:                                    ; preds = %152
  %157 = getelementptr inbounds %struct.winsize, %struct.winsize* %3, i64 0, i32 1
  %158 = load i16, i16* %157, align 2
  %159 = icmp eq i16 %158, 0
  br i1 %159, label %162, label %160

; <label>:160:                                    ; preds = %156
  %161 = zext i16 %158 to i32
  br label %177

; <label>:162:                                    ; preds = %156, %152
  %163 = call i8* @getenv(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.297, i64 0, i64 0)) #9
  %164 = bitcast i64* %4 to i8*
  call void @llvm.lifetime.start(i64 8, i8* nonnull %164) #9
  %165 = icmp eq i8* %163, null
  br i1 %165, label %173, label %166

; <label>:166:                                    ; preds = %162
  %167 = call i32 @xstrtol(i8* nonnull %163, i8** null, i32 0, i64* nonnull %4, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.96, i64 0, i64 0)) #9
  %168 = icmp eq i32 %167, 0
  %169 = load i64, i64* %4, align 8
  %170 = add i64 %169, -1
  %171 = icmp ult i64 %170, 2147483647
  %172 = and i1 %168, %171
  br i1 %172, label %174, label %173

; <label>:173:                                    ; preds = %166, %162
  store i64 80, i64* %4, align 8
  br label %174

; <label>:174:                                    ; preds = %173, %166
  %175 = phi i64 [ %169, %166 ], [ 80, %173 ]
  %176 = trunc i64 %175 to i32
  call void @llvm.lifetime.end(i64 8, i8* nonnull %164) #9
  br label %177

; <label>:177:                                    ; preds = %160, %174
  %178 = phi i32 [ %161, %160 ], [ %176, %174 ]
  call void @llvm.lifetime.end(i64 8, i8* nonnull %153) #9
  store i32 %178, i32* @max_col, align 4
  store i32 0, i32* @current_col, align 4
  switch i32 %23, label %580 [
    i32 0, label %179
    i32 1, label %361
    i32 2, label %519
  ]

; <label>:179:                                    ; preds = %177
  call fastcc void @display_speed(%struct.termios* nonnull @main.mode, i1 zeroext true) #9
  %180 = load i8, i8* getelementptr inbounds (%struct.termios, %struct.termios* @main.mode, i64 0, i32 4), align 4
  %181 = zext i8 %180 to i32
  call void (i8*, ...) @wrapf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.298, i64 0, i64 0), i32 %181) #9
  %182 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %183 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %182, i64 0, i32 5
  %184 = load i8*, i8** %183, align 8
  %185 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %182, i64 0, i32 6
  %186 = load i8*, i8** %185, align 8
  %187 = icmp ult i8* %184, %186
  br i1 %187, label %190, label %188

; <label>:188:                                    ; preds = %179
  %189 = call i32 @__overflow(%struct._IO_FILE* %182, i32 10) #9
  br label %192

; <label>:190:                                    ; preds = %179
  %191 = getelementptr inbounds i8, i8* %184, i64 1
  store i8* %191, i8** %183, align 8
  store i8 10, i8* %184, align 1
  br label %192

; <label>:192:                                    ; preds = %190, %188
  store i32 0, i32* @current_col, align 4
  br label %193

; <label>:193:                                    ; preds = %248, %192
  %194 = phi i64 [ %250, %248 ], [ 0, %192 ]
  %195 = phi i8 [ %249, %248 ], [ 1, %192 ]
  %196 = getelementptr inbounds [19 x %struct.control_info], [19 x %struct.control_info]* @control_info, i64 0, i64 %194, i32 0
  %197 = load i8*, i8** %196, align 8
  %198 = load i8, i8* %197, align 1
  %199 = icmp eq i8 %198, 109
  br i1 %199, label %200, label %212

; <label>:200:                                    ; preds = %193
  %201 = getelementptr inbounds i8, i8* %197, i64 1
  %202 = load i8, i8* %201, align 1
  %203 = icmp eq i8 %202, 105
  br i1 %203, label %204, label %212

; <label>:204:                                    ; preds = %200
  %205 = getelementptr inbounds i8, i8* %197, i64 2
  %206 = load i8, i8* %205, align 1
  %207 = icmp eq i8 %206, 110
  br i1 %207, label %208, label %212

; <label>:208:                                    ; preds = %204
  %209 = getelementptr inbounds i8, i8* %197, i64 3
  %210 = load i8, i8* %209, align 1
  %211 = icmp eq i8 %210, 0
  br i1 %211, label %251, label %212

; <label>:212:                                    ; preds = %208, %204, %200, %193
  %213 = getelementptr inbounds [19 x %struct.control_info], [19 x %struct.control_info]* @control_info, i64 0, i64 %194, i32 2
  %214 = load i64, i64* %213, align 8
  %215 = getelementptr inbounds %struct.termios, %struct.termios* @main.mode, i64 0, i32 5, i64 %214
  %216 = load i8, i8* %215, align 1
  %217 = getelementptr inbounds [19 x %struct.control_info], [19 x %struct.control_info]* @control_info, i64 0, i64 %194, i32 1
  %218 = load i8, i8* %217, align 8
  %219 = icmp eq i8 %216, %218
  br i1 %219, label %248, label %220

; <label>:220:                                    ; preds = %212
  %221 = call i32 @strcmp(i8* %197, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.248, i64 0, i64 0)) #9
  %222 = icmp eq i32 %221, 0
  br i1 %222, label %248, label %223

; <label>:223:                                    ; preds = %220
  %224 = icmp eq i8 %216, 0
  br i1 %224, label %246, label %225

; <label>:225:                                    ; preds = %223
  %226 = icmp ugt i8 %216, 31
  br i1 %226, label %227, label %242

; <label>:227:                                    ; preds = %225
  %228 = icmp ult i8 %216, 127
  br i1 %228, label %229, label %230

; <label>:229:                                    ; preds = %227
  store i8 %216, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @visible.buf, i64 0, i64 0), align 1
  br label %244

; <label>:230:                                    ; preds = %227
  %231 = icmp eq i8 %216, 127
  br i1 %231, label %232, label %233

; <label>:232:                                    ; preds = %230
  store i8 94, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @visible.buf, i64 0, i64 0), align 1
  store i8 63, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @visible.buf, i64 0, i64 1), align 1
  br label %244

; <label>:233:                                    ; preds = %230
  store i8 77, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @visible.buf, i64 0, i64 0), align 1
  store i8 45, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @visible.buf, i64 0, i64 1), align 1
  %234 = icmp ugt i8 %216, -97
  br i1 %234, label %235, label %240

; <label>:235:                                    ; preds = %233
  %236 = icmp eq i8 %216, -1
  br i1 %236, label %239, label %237

; <label>:237:                                    ; preds = %235
  %238 = xor i8 %216, -128
  store i8 %238, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @visible.buf, i64 0, i64 2), align 1
  br label %244

; <label>:239:                                    ; preds = %235
  store i8 94, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @visible.buf, i64 0, i64 2), align 1
  store i8 63, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @visible.buf, i64 0, i64 3), align 1
  br label %244

; <label>:240:                                    ; preds = %233
  store i8 94, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @visible.buf, i64 0, i64 2), align 1
  %241 = add i8 %216, -64
  store i8 %241, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @visible.buf, i64 0, i64 3), align 1
  br label %244

; <label>:242:                                    ; preds = %225
  store i8 94, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @visible.buf, i64 0, i64 0), align 1
  %243 = add i8 %216, 64
  store i8 %243, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @visible.buf, i64 0, i64 1), align 1
  br label %244

; <label>:244:                                    ; preds = %242, %240, %239, %237, %232, %229
  %245 = phi i8* [ getelementptr inbounds ([10 x i8], [10 x i8]* @visible.buf, i64 0, i64 1), %229 ], [ getelementptr inbounds ([10 x i8], [10 x i8]* @visible.buf, i64 0, i64 2), %232 ], [ getelementptr inbounds ([10 x i8], [10 x i8]* @visible.buf, i64 0, i64 3), %237 ], [ getelementptr inbounds ([10 x i8], [10 x i8]* @visible.buf, i64 0, i64 4), %239 ], [ getelementptr inbounds ([10 x i8], [10 x i8]* @visible.buf, i64 0, i64 4), %240 ], [ getelementptr inbounds ([10 x i8], [10 x i8]* @visible.buf, i64 0, i64 2), %242 ]
  store i8 0, i8* %245, align 1
  br label %246

; <label>:246:                                    ; preds = %244, %223
  %247 = phi i8* [ getelementptr inbounds ([10 x i8], [10 x i8]* @visible.buf, i64 0, i64 0), %244 ], [ getelementptr inbounds ([8 x i8], [8 x i8]* @.str.302, i64 0, i64 0), %223 ]
  call void (i8*, ...) @wrapf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.299, i64 0, i64 0), i8* %197, i8* nonnull %247) #9
  br label %248

; <label>:248:                                    ; preds = %246, %220, %212
  %249 = phi i8 [ %195, %212 ], [ %195, %220 ], [ 0, %246 ]
  %250 = add nuw i64 %194, 1
  br label %193

; <label>:251:                                    ; preds = %208
  %252 = load i32, i32* getelementptr inbounds (%struct.termios, %struct.termios* @main.mode, i64 0, i32 3), align 4
  %253 = and i32 %252, 2
  %254 = icmp eq i32 %253, 0
  br i1 %254, label %255, label %260

; <label>:255:                                    ; preds = %251
  %256 = load i8, i8* getelementptr inbounds (%struct.termios, %struct.termios* @main.mode, i64 0, i32 5, i64 6), align 1
  %257 = zext i8 %256 to i64
  %258 = load i8, i8* getelementptr inbounds (%struct.termios, %struct.termios* @main.mode, i64 0, i32 5, i64 5), align 1
  %259 = zext i8 %258 to i64
  call void (i8*, ...) @wrapf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.300, i64 0, i64 0), i64 %257, i64 %259) #9
  br label %274

; <label>:260:                                    ; preds = %251
  %261 = and i8 %195, 1
  %262 = icmp eq i8 %261, 0
  br i1 %262, label %263, label %274

; <label>:263:                                    ; preds = %260
  %264 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %265 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %264, i64 0, i32 5
  %266 = load i8*, i8** %265, align 8
  %267 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %264, i64 0, i32 6
  %268 = load i8*, i8** %267, align 8
  %269 = icmp ult i8* %266, %268
  br i1 %269, label %272, label %270

; <label>:270:                                    ; preds = %263
  %271 = call i32 @__overflow(%struct._IO_FILE* %264, i32 10) #9
  br label %274

; <label>:272:                                    ; preds = %263
  %273 = getelementptr inbounds i8, i8* %266, i64 1
  store i8* %273, i8** %265, align 8
  store i8 10, i8* %266, align 1
  br label %274

; <label>:274:                                    ; preds = %272, %270, %260, %255
  store i32 0, i32* @current_col, align 4
  br label %275

; <label>:275:                                    ; preds = %340, %274
  %276 = phi i64 [ 0, %274 ], [ %343, %340 ]
  %277 = phi i8** [ getelementptr inbounds ([90 x %struct.mode_info], [90 x %struct.mode_info]* @mode_info, i64 0, i64 0, i32 0), %274 ], [ %344, %340 ]
  %278 = phi i8 [ 1, %274 ], [ %342, %340 ]
  %279 = phi i32 [ 0, %274 ], [ %341, %340 ]
  %280 = getelementptr inbounds [90 x %struct.mode_info], [90 x %struct.mode_info]* @mode_info, i64 0, i64 %276, i32 2
  %281 = load i8, i8* %280, align 4
  %282 = and i8 %281, 8
  %283 = icmp eq i8 %282, 0
  br i1 %283, label %284, label %340

; <label>:284:                                    ; preds = %275
  %285 = getelementptr inbounds [90 x %struct.mode_info], [90 x %struct.mode_info]* @mode_info, i64 0, i64 %276, i32 1
  %286 = load i32, i32* %285, align 8
  %287 = icmp eq i32 %286, %279
  br i1 %287, label %303, label %288

; <label>:288:                                    ; preds = %284
  %289 = and i8 %278, 1
  %290 = icmp eq i8 %289, 0
  br i1 %290, label %291, label %303

; <label>:291:                                    ; preds = %288
  %292 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %293 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %292, i64 0, i32 5
  %294 = load i8*, i8** %293, align 8
  %295 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %292, i64 0, i32 6
  %296 = load i8*, i8** %295, align 8
  %297 = icmp ult i8* %294, %296
  br i1 %297, label %300, label %298

; <label>:298:                                    ; preds = %291
  %299 = call i32 @__overflow(%struct._IO_FILE* %292, i32 10) #9
  br label %302

; <label>:300:                                    ; preds = %291
  %301 = getelementptr inbounds i8, i8* %294, i64 1
  store i8* %301, i8** %293, align 8
  store i8 10, i8* %294, align 1
  br label %302

; <label>:302:                                    ; preds = %300, %298
  store i32 0, i32* @current_col, align 4
  br label %303

; <label>:303:                                    ; preds = %302, %288, %284
  %304 = phi i32 [ %279, %284 ], [ %286, %288 ], [ %286, %302 ]
  %305 = phi i8 [ %278, %284 ], [ %278, %288 ], [ 1, %302 ]
  %306 = icmp ult i32 %304, 5
  br i1 %306, label %308, label %307

; <label>:307:                                    ; preds = %303
  call void @abort() #14
  unreachable

; <label>:308:                                    ; preds = %303
  %309 = sext i32 %304 to i64
  %310 = getelementptr inbounds [5 x i32*], [5 x i32*]* @switch.table.306, i64 0, i64 %309
  %311 = load i32*, i32** %310, align 8
  %312 = getelementptr inbounds [90 x %struct.mode_info], [90 x %struct.mode_info]* @mode_info, i64 0, i64 %276, i32 4
  %313 = load i64, i64* %312, align 8
  %314 = icmp eq i64 %313, 0
  br i1 %314, label %315, label %318

; <label>:315:                                    ; preds = %308
  %316 = getelementptr inbounds [90 x %struct.mode_info], [90 x %struct.mode_info]* @mode_info, i64 0, i64 %276, i32 3
  %317 = load i64, i64* %316, align 16
  br label %318

; <label>:318:                                    ; preds = %315, %308
  %319 = phi i64 [ %317, %315 ], [ %313, %308 ]
  %320 = icmp eq i32 %304, 4
  br i1 %320, label %321, label %322

; <label>:321:                                    ; preds = %318
  call void @__assert_fail(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.232, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.233, i64 0, i64 0), i32 1968, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @__PRETTY_FUNCTION__.display_changed, i64 0, i64 0)) #14
  unreachable

; <label>:322:                                    ; preds = %318
  %323 = load i32, i32* %311, align 4
  %324 = zext i32 %323 to i64
  %325 = and i64 %324, %319
  %326 = getelementptr inbounds [90 x %struct.mode_info], [90 x %struct.mode_info]* @mode_info, i64 0, i64 %276, i32 3
  %327 = load i64, i64* %326, align 16
  %328 = icmp eq i64 %325, %327
  %329 = sext i8 %281 to i32
  br i1 %328, label %330, label %335

; <label>:330:                                    ; preds = %322
  %331 = and i32 %329, 2
  %332 = icmp eq i32 %331, 0
  br i1 %332, label %340, label %333

; <label>:333:                                    ; preds = %330
  %334 = load i8*, i8** %277, align 16
  call void (i8*, ...) @wrapf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.108, i64 0, i64 0), i8* %334) #9
  br label %340

; <label>:335:                                    ; preds = %322
  %336 = and i32 %329, 5
  %337 = icmp eq i32 %336, 5
  br i1 %337, label %338, label %340

; <label>:338:                                    ; preds = %335
  %339 = load i8*, i8** %277, align 16
  call void (i8*, ...) @wrapf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.301, i64 0, i64 0), i8* %339) #9
  br label %340

; <label>:340:                                    ; preds = %338, %335, %333, %330, %275
  %341 = phi i32 [ %279, %275 ], [ %304, %333 ], [ %304, %330 ], [ %304, %338 ], [ %304, %335 ]
  %342 = phi i8 [ %278, %275 ], [ 0, %333 ], [ %305, %330 ], [ 0, %338 ], [ %305, %335 ]
  %343 = add nuw nsw i64 %276, 1
  %344 = getelementptr inbounds [90 x %struct.mode_info], [90 x %struct.mode_info]* @mode_info, i64 0, i64 %343, i32 0
  %345 = icmp eq i64 %343, 89
  br i1 %345, label %346, label %275

; <label>:346:                                    ; preds = %340
  %347 = and i8 %342, 1
  %348 = icmp eq i8 %347, 0
  br i1 %348, label %349, label %360

; <label>:349:                                    ; preds = %346
  %350 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %351 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %350, i64 0, i32 5
  %352 = load i8*, i8** %351, align 8
  %353 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %350, i64 0, i32 6
  %354 = load i8*, i8** %353, align 8
  %355 = icmp ult i8* %352, %354
  br i1 %355, label %358, label %356

; <label>:356:                                    ; preds = %349
  %357 = call i32 @__overflow(%struct._IO_FILE* %350, i32 10) #9
  br label %360

; <label>:358:                                    ; preds = %349
  %359 = getelementptr inbounds i8, i8* %352, i64 1
  store i8* %359, i8** %351, align 8
  store i8 10, i8* %352, align 1
  br label %360

; <label>:360:                                    ; preds = %358, %356, %346
  store i32 0, i32* @current_col, align 4
  br label %580

; <label>:361:                                    ; preds = %177
  call fastcc void @display_speed(%struct.termios* nonnull @main.mode, i1 zeroext true) #9
  call fastcc void @display_window_size(i1 zeroext true, i8* %118) #9
  %362 = load i8, i8* getelementptr inbounds (%struct.termios, %struct.termios* @main.mode, i64 0, i32 4), align 4
  %363 = zext i8 %362 to i32
  call void (i8*, ...) @wrapf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.298, i64 0, i64 0), i32 %363) #9
  %364 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %365 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %364, i64 0, i32 5
  %366 = load i8*, i8** %365, align 8
  %367 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %364, i64 0, i32 6
  %368 = load i8*, i8** %367, align 8
  %369 = icmp ult i8* %366, %368
  br i1 %369, label %372, label %370

; <label>:370:                                    ; preds = %361
  %371 = call i32 @__overflow(%struct._IO_FILE* %364, i32 10) #9
  br label %374

; <label>:372:                                    ; preds = %361
  %373 = getelementptr inbounds i8, i8* %366, i64 1
  store i8* %373, i8** %365, align 8
  store i8 10, i8* %366, align 1
  br label %374

; <label>:374:                                    ; preds = %372, %370
  store i32 0, i32* @current_col, align 4
  br label %375

; <label>:375:                                    ; preds = %425, %374
  %376 = phi i64 [ %426, %425 ], [ 0, %374 ]
  %377 = getelementptr inbounds [19 x %struct.control_info], [19 x %struct.control_info]* @control_info, i64 0, i64 %376, i32 0
  %378 = load i8*, i8** %377, align 8
  %379 = load i8, i8* %378, align 1
  %380 = icmp eq i8 %379, 109
  br i1 %380, label %381, label %393

; <label>:381:                                    ; preds = %375
  %382 = getelementptr inbounds i8, i8* %378, i64 1
  %383 = load i8, i8* %382, align 1
  %384 = icmp eq i8 %383, 105
  br i1 %384, label %385, label %393

; <label>:385:                                    ; preds = %381
  %386 = getelementptr inbounds i8, i8* %378, i64 2
  %387 = load i8, i8* %386, align 1
  %388 = icmp eq i8 %387, 110
  br i1 %388, label %389, label %393

; <label>:389:                                    ; preds = %385
  %390 = getelementptr inbounds i8, i8* %378, i64 3
  %391 = load i8, i8* %390, align 1
  %392 = icmp eq i8 %391, 0
  br i1 %392, label %427, label %393

; <label>:393:                                    ; preds = %389, %385, %381, %375
  %394 = call i32 @strcmp(i8* %378, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.248, i64 0, i64 0)) #9
  %395 = icmp eq i32 %394, 0
  br i1 %395, label %425, label %396

; <label>:396:                                    ; preds = %393
  %397 = getelementptr inbounds [19 x %struct.control_info], [19 x %struct.control_info]* @control_info, i64 0, i64 %376, i32 2
  %398 = load i64, i64* %397, align 8
  %399 = getelementptr inbounds %struct.termios, %struct.termios* @main.mode, i64 0, i32 5, i64 %398
  %400 = load i8, i8* %399, align 1
  %401 = icmp eq i8 %400, 0
  br i1 %401, label %423, label %402

; <label>:402:                                    ; preds = %396
  %403 = icmp ugt i8 %400, 31
  br i1 %403, label %404, label %419

; <label>:404:                                    ; preds = %402
  %405 = icmp ult i8 %400, 127
  br i1 %405, label %406, label %407

; <label>:406:                                    ; preds = %404
  store i8 %400, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @visible.buf, i64 0, i64 0), align 1
  br label %421

; <label>:407:                                    ; preds = %404
  %408 = icmp eq i8 %400, 127
  br i1 %408, label %409, label %410

; <label>:409:                                    ; preds = %407
  store i8 94, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @visible.buf, i64 0, i64 0), align 1
  store i8 63, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @visible.buf, i64 0, i64 1), align 1
  br label %421

; <label>:410:                                    ; preds = %407
  store i8 77, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @visible.buf, i64 0, i64 0), align 1
  store i8 45, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @visible.buf, i64 0, i64 1), align 1
  %411 = icmp ugt i8 %400, -97
  br i1 %411, label %412, label %417

; <label>:412:                                    ; preds = %410
  %413 = icmp eq i8 %400, -1
  br i1 %413, label %416, label %414

; <label>:414:                                    ; preds = %412
  %415 = xor i8 %400, -128
  store i8 %415, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @visible.buf, i64 0, i64 2), align 1
  br label %421

; <label>:416:                                    ; preds = %412
  store i8 94, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @visible.buf, i64 0, i64 2), align 1
  store i8 63, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @visible.buf, i64 0, i64 3), align 1
  br label %421

; <label>:417:                                    ; preds = %410
  store i8 94, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @visible.buf, i64 0, i64 2), align 1
  %418 = add i8 %400, -64
  store i8 %418, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @visible.buf, i64 0, i64 3), align 1
  br label %421

; <label>:419:                                    ; preds = %402
  store i8 94, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @visible.buf, i64 0, i64 0), align 1
  %420 = add i8 %400, 64
  store i8 %420, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @visible.buf, i64 0, i64 1), align 1
  br label %421

; <label>:421:                                    ; preds = %419, %417, %416, %414, %409, %406
  %422 = phi i8* [ getelementptr inbounds ([10 x i8], [10 x i8]* @visible.buf, i64 0, i64 1), %406 ], [ getelementptr inbounds ([10 x i8], [10 x i8]* @visible.buf, i64 0, i64 2), %409 ], [ getelementptr inbounds ([10 x i8], [10 x i8]* @visible.buf, i64 0, i64 3), %414 ], [ getelementptr inbounds ([10 x i8], [10 x i8]* @visible.buf, i64 0, i64 4), %416 ], [ getelementptr inbounds ([10 x i8], [10 x i8]* @visible.buf, i64 0, i64 4), %417 ], [ getelementptr inbounds ([10 x i8], [10 x i8]* @visible.buf, i64 0, i64 2), %419 ]
  store i8 0, i8* %422, align 1
  br label %423

; <label>:423:                                    ; preds = %421, %396
  %424 = phi i8* [ getelementptr inbounds ([10 x i8], [10 x i8]* @visible.buf, i64 0, i64 0), %421 ], [ getelementptr inbounds ([8 x i8], [8 x i8]* @.str.302, i64 0, i64 0), %396 ]
  call void (i8*, ...) @wrapf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.299, i64 0, i64 0), i8* %378, i8* nonnull %424) #9
  br label %425

; <label>:425:                                    ; preds = %423, %393
  %426 = add nuw i64 %376, 1
  br label %375

; <label>:427:                                    ; preds = %389
  %428 = load i8, i8* getelementptr inbounds (%struct.termios, %struct.termios* @main.mode, i64 0, i32 5, i64 6), align 1
  %429 = zext i8 %428 to i64
  %430 = load i8, i8* getelementptr inbounds (%struct.termios, %struct.termios* @main.mode, i64 0, i32 5, i64 5), align 1
  %431 = zext i8 %430 to i64
  call void (i8*, ...) @wrapf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.303, i64 0, i64 0), i64 %429, i64 %431) #9
  %432 = load i32, i32* @current_col, align 4
  %433 = icmp eq i32 %432, 0
  br i1 %433, label %445, label %434

; <label>:434:                                    ; preds = %427
  %435 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %436 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %435, i64 0, i32 5
  %437 = load i8*, i8** %436, align 8
  %438 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %435, i64 0, i32 6
  %439 = load i8*, i8** %438, align 8
  %440 = icmp ult i8* %437, %439
  br i1 %440, label %443, label %441

; <label>:441:                                    ; preds = %434
  %442 = call i32 @__overflow(%struct._IO_FILE* %435, i32 10) #9
  br label %445

; <label>:443:                                    ; preds = %434
  %444 = getelementptr inbounds i8, i8* %437, i64 1
  store i8* %444, i8** %436, align 8
  store i8 10, i8* %437, align 1
  br label %445

; <label>:445:                                    ; preds = %443, %441, %427
  store i32 0, i32* @current_col, align 4
  br label %446

; <label>:446:                                    ; preds = %502, %445
  %447 = phi i64 [ 0, %445 ], [ %504, %502 ]
  %448 = phi i8** [ getelementptr inbounds ([90 x %struct.mode_info], [90 x %struct.mode_info]* @mode_info, i64 0, i64 0, i32 0), %445 ], [ %505, %502 ]
  %449 = phi i32 [ 0, %445 ], [ %503, %502 ]
  %450 = getelementptr inbounds [90 x %struct.mode_info], [90 x %struct.mode_info]* @mode_info, i64 0, i64 %447, i32 2
  %451 = load i8, i8* %450, align 4
  %452 = and i8 %451, 8
  %453 = icmp eq i8 %452, 0
  br i1 %453, label %454, label %502

; <label>:454:                                    ; preds = %446
  %455 = getelementptr inbounds [90 x %struct.mode_info], [90 x %struct.mode_info]* @mode_info, i64 0, i64 %447, i32 1
  %456 = load i32, i32* %455, align 8
  %457 = icmp eq i32 %456, %449
  br i1 %457, label %470, label %458

; <label>:458:                                    ; preds = %454
  %459 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %460 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %459, i64 0, i32 5
  %461 = load i8*, i8** %460, align 8
  %462 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %459, i64 0, i32 6
  %463 = load i8*, i8** %462, align 8
  %464 = icmp ult i8* %461, %463
  br i1 %464, label %467, label %465

; <label>:465:                                    ; preds = %458
  %466 = call i32 @__overflow(%struct._IO_FILE* %459, i32 10) #9
  br label %469

; <label>:467:                                    ; preds = %458
  %468 = getelementptr inbounds i8, i8* %461, i64 1
  store i8* %468, i8** %460, align 8
  store i8 10, i8* %461, align 1
  br label %469

; <label>:469:                                    ; preds = %467, %465
  store i32 0, i32* @current_col, align 4
  br label %470

; <label>:470:                                    ; preds = %469, %454
  %471 = phi i32 [ %449, %454 ], [ %456, %469 ]
  %472 = icmp ult i32 %471, 5
  br i1 %472, label %474, label %473

; <label>:473:                                    ; preds = %470
  call void @abort() #14
  unreachable

; <label>:474:                                    ; preds = %470
  %475 = sext i32 %471 to i64
  %476 = getelementptr inbounds [5 x i32*], [5 x i32*]* @switch.table.306, i64 0, i64 %475
  %477 = load i32*, i32** %476, align 8
  %478 = getelementptr inbounds [90 x %struct.mode_info], [90 x %struct.mode_info]* @mode_info, i64 0, i64 %447, i32 4
  %479 = load i64, i64* %478, align 8
  %480 = icmp eq i64 %479, 0
  br i1 %480, label %481, label %484

; <label>:481:                                    ; preds = %474
  %482 = getelementptr inbounds [90 x %struct.mode_info], [90 x %struct.mode_info]* @mode_info, i64 0, i64 %447, i32 3
  %483 = load i64, i64* %482, align 16
  br label %484

; <label>:484:                                    ; preds = %481, %474
  %485 = phi i64 [ %483, %481 ], [ %479, %474 ]
  %486 = icmp eq i32 %471, 4
  br i1 %486, label %487, label %488

; <label>:487:                                    ; preds = %484
  call void @__assert_fail(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.232, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.233, i64 0, i64 0), i32 2052, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @__PRETTY_FUNCTION__.display_all, i64 0, i64 0)) #14
  unreachable

; <label>:488:                                    ; preds = %484
  %489 = load i32, i32* %477, align 4
  %490 = zext i32 %489 to i64
  %491 = and i64 %490, %485
  %492 = getelementptr inbounds [90 x %struct.mode_info], [90 x %struct.mode_info]* @mode_info, i64 0, i64 %447, i32 3
  %493 = load i64, i64* %492, align 16
  %494 = icmp eq i64 %491, %493
  br i1 %494, label %495, label %497

; <label>:495:                                    ; preds = %488
  %496 = load i8*, i8** %448, align 16
  call void (i8*, ...) @wrapf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.108, i64 0, i64 0), i8* %496) #9
  br label %502

; <label>:497:                                    ; preds = %488
  %498 = and i8 %451, 4
  %499 = icmp eq i8 %498, 0
  br i1 %499, label %502, label %500

; <label>:500:                                    ; preds = %497
  %501 = load i8*, i8** %448, align 16
  call void (i8*, ...) @wrapf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.301, i64 0, i64 0), i8* %501) #9
  br label %502

; <label>:502:                                    ; preds = %500, %497, %495, %446
  %503 = phi i32 [ %449, %446 ], [ %471, %495 ], [ %471, %500 ], [ %471, %497 ]
  %504 = add nuw nsw i64 %447, 1
  %505 = getelementptr inbounds [90 x %struct.mode_info], [90 x %struct.mode_info]* @mode_info, i64 0, i64 %504, i32 0
  %506 = icmp eq i64 %504, 89
  br i1 %506, label %507, label %446

; <label>:507:                                    ; preds = %502
  %508 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %509 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %508, i64 0, i32 5
  %510 = load i8*, i8** %509, align 8
  %511 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %508, i64 0, i32 6
  %512 = load i8*, i8** %511, align 8
  %513 = icmp ult i8* %510, %512
  br i1 %513, label %516, label %514

; <label>:514:                                    ; preds = %507
  %515 = call i32 @__overflow(%struct._IO_FILE* %508, i32 10) #9
  br label %518

; <label>:516:                                    ; preds = %507
  %517 = getelementptr inbounds i8, i8* %510, i64 1
  store i8* %517, i8** %509, align 8
  store i8 10, i8* %510, align 1
  br label %518

; <label>:518:                                    ; preds = %516, %514
  store i32 0, i32* @current_col, align 4
  br label %580

; <label>:519:                                    ; preds = %177
  %520 = load i32, i32* getelementptr inbounds (%struct.termios, %struct.termios* @main.mode, i64 0, i32 0), align 4
  %521 = zext i32 %520 to i64
  %522 = load i32, i32* getelementptr inbounds (%struct.termios, %struct.termios* @main.mode, i64 0, i32 1), align 4
  %523 = zext i32 %522 to i64
  %524 = load i32, i32* getelementptr inbounds (%struct.termios, %struct.termios* @main.mode, i64 0, i32 2), align 4
  %525 = zext i32 %524 to i64
  %526 = load i32, i32* getelementptr inbounds (%struct.termios, %struct.termios* @main.mode, i64 0, i32 3), align 4
  %527 = zext i32 %526 to i64
  %528 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.304, i64 0, i64 0), i64 %521, i64 %523, i64 %525, i64 %527) #9
  br label %529

; <label>:529:                                    ; preds = %529, %519
  %530 = phi i64 [ 0, %519 ], [ %535, %529 ]
  %531 = getelementptr inbounds %struct.termios, %struct.termios* @main.mode, i64 0, i32 5, i64 %530
  %532 = load i8, i8* %531, align 1
  %533 = zext i8 %532 to i64
  %534 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.305, i64 0, i64 0), i64 %533) #9
  %535 = add nuw nsw i64 %530, 1
  %536 = icmp eq i64 %535, 32
  br i1 %536, label %537, label %529

; <label>:537:                                    ; preds = %529
  %538 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %539 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %538, i64 0, i32 5
  %540 = load i8*, i8** %539, align 8
  %541 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %538, i64 0, i32 6
  %542 = load i8*, i8** %541, align 8
  %543 = icmp ult i8* %540, %542
  br i1 %543, label %546, label %544

; <label>:544:                                    ; preds = %537
  %545 = call i32 @__overflow(%struct._IO_FILE* %538, i32 10) #9
  br label %580

; <label>:546:                                    ; preds = %537
  %547 = getelementptr inbounds i8, i8* %540, i64 1
  store i8* %547, i8** %539, align 8
  store i8 10, i8* %540, align 1
  br label %580

; <label>:548:                                    ; preds = %151
  store i8 0, i8* %6, align 1
  store i8 0, i8* %5, align 1
  call fastcc void @apply_settings(i1 zeroext false, i8* %118, i8** %1, i32 %0, %struct.termios* nonnull @main.mode, i8* nonnull %6, i8* nonnull %5)
  %549 = load i8, i8* %5, align 1
  %550 = icmp eq i8 %549, 0
  br i1 %550, label %580, label %551

; <label>:551:                                    ; preds = %548
  %552 = load i32, i32* @tcsetattr_options, align 4
  %553 = tail call i32 @tcsetattr(i32 0, i32 %552, %struct.termios* nonnull @main.mode) #9
  %554 = icmp eq i32 %553, 0
  br i1 %554, label %559, label %555

; <label>:555:                                    ; preds = %551
  %556 = tail call i32* @__errno_location() #1
  %557 = load i32, i32* %556, align 4
  %558 = tail call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %118) #9
  tail call void (i32, i32, i8*, ...) @error(i32 1, i32 %557, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.108, i64 0, i64 0), i8* %558) #9
  unreachable

; <label>:559:                                    ; preds = %551
  %560 = tail call i32 @tcgetattr(i32 0, %struct.termios* nonnull @main.new_mode) #9
  %561 = icmp eq i32 %560, 0
  br i1 %561, label %566, label %562

; <label>:562:                                    ; preds = %559
  %563 = tail call i32* @__errno_location() #1
  %564 = load i32, i32* %563, align 4
  %565 = tail call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %118) #9
  tail call void (i32, i32, i8*, ...) @error(i32 1, i32 %564, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.108, i64 0, i64 0), i8* %565) #9
  unreachable

; <label>:566:                                    ; preds = %559
  %567 = tail call i32 @memcmp(i8* bitcast (%struct.termios* @main.mode to i8*), i8* bitcast (%struct.termios* @main.new_mode to i8*), i64 60) #13
  %568 = icmp eq i32 %567, 0
  br i1 %568, label %580, label %569

; <label>:569:                                    ; preds = %566
  %570 = load i32, i32* getelementptr inbounds (%struct.termios, %struct.termios* @main.new_mode, i64 0, i32 2), align 4
  %571 = and i32 %570, -269418497
  store i32 %571, i32* getelementptr inbounds (%struct.termios, %struct.termios* @main.new_mode, i64 0, i32 2), align 4
  %572 = load i8, i8* %6, align 1
  %573 = icmp eq i8 %572, 0
  br i1 %573, label %574, label %577

; <label>:574:                                    ; preds = %569
  %575 = tail call i32 @memcmp(i8* bitcast (%struct.termios* @main.mode to i8*), i8* bitcast (%struct.termios* @main.new_mode to i8*), i64 60) #13
  %576 = icmp eq i32 %575, 0
  br i1 %576, label %580, label %577

; <label>:577:                                    ; preds = %574, %569
  %578 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.110, i64 0, i64 0), i32 5) #9
  %579 = tail call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %118) #9
  tail call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %578, i8* %579) #9
  unreachable

; <label>:580:                                    ; preds = %546, %544, %518, %360, %177, %548, %566, %574
  call void @llvm.lifetime.end(i64 1, i8* nonnull %6) #9
  call void @llvm.lifetime.end(i64 1, i8* nonnull %5) #9
  ret i32 0
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #7

; Function Attrs: nounwind
declare i8* @bindtextdomain(i8*, i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare i8* @textdomain(i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @atexit(void ()*) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @getopt_long(i32, i8**, i8*, %struct.option*, i32*) local_unnamed_addr #2

declare void @error(i32, i32, i8*, ...) local_unnamed_addr #3

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8* nocapture, i8* nocapture) local_unnamed_addr #4

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #7

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @apply_settings(i1 zeroext, i8*, i8** nocapture readonly, i32, %struct.termios*, i8* nocapture, i8* nocapture) unnamed_addr #6 {
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.winsize, align 2
  %11 = alloca i64, align 8
  %12 = alloca %struct.winsize, align 2
  %13 = alloca i64, align 8
  %14 = icmp sgt i32 %3, 1
  br i1 %14, label %15, label %49

; <label>:15:                                     ; preds = %7
  %16 = getelementptr inbounds %struct.termios, %struct.termios* %4, i64 0, i32 2
  %17 = getelementptr inbounds %struct.termios, %struct.termios* %4, i64 0, i32 0
  %18 = icmp eq %struct.termios* %4, null
  %19 = getelementptr inbounds %struct.termios, %struct.termios* %4, i64 0, i32 5, i64 0
  %20 = getelementptr inbounds %struct.termios, %struct.termios* %4, i64 0, i32 5, i64 1
  %21 = getelementptr inbounds %struct.termios, %struct.termios* %4, i64 0, i32 5, i64 2
  %22 = getelementptr inbounds %struct.termios, %struct.termios* %4, i64 0, i32 5, i64 3
  %23 = getelementptr inbounds %struct.termios, %struct.termios* %4, i64 0, i32 5, i64 4
  %24 = getelementptr inbounds %struct.termios, %struct.termios* %4, i64 0, i32 5, i64 11
  %25 = getelementptr inbounds %struct.termios, %struct.termios* %4, i64 0, i32 5, i64 16
  %26 = getelementptr inbounds %struct.termios, %struct.termios* %4, i64 0, i32 5, i64 7
  %27 = getelementptr inbounds %struct.termios, %struct.termios* %4, i64 0, i32 5, i64 8
  %28 = getelementptr inbounds %struct.termios, %struct.termios* %4, i64 0, i32 5, i64 9
  %29 = getelementptr inbounds %struct.termios, %struct.termios* %4, i64 0, i32 5, i64 10
  %30 = getelementptr inbounds %struct.termios, %struct.termios* %4, i64 0, i32 5, i64 12
  %31 = getelementptr inbounds %struct.termios, %struct.termios* %4, i64 0, i32 5, i64 14
  %32 = getelementptr inbounds %struct.termios, %struct.termios* %4, i64 0, i32 5, i64 15
  %33 = getelementptr inbounds %struct.termios, %struct.termios* %4, i64 0, i32 5, i64 13
  %34 = getelementptr inbounds %struct.termios, %struct.termios* %4, i64 0, i32 5, i64 6
  %35 = getelementptr inbounds %struct.termios, %struct.termios* %4, i64 0, i32 5, i64 5
  %36 = getelementptr inbounds %struct.termios, %struct.termios* %4, i64 0, i32 1
  %37 = getelementptr inbounds %struct.termios, %struct.termios* %4, i64 0, i32 3
  %38 = add nsw i32 %3, -1
  %39 = bitcast %struct.winsize* %12 to i8*
  %40 = getelementptr inbounds %struct.winsize, %struct.winsize* %12, i64 0, i32 1
  %41 = bitcast i64* %13 to i8*
  %42 = getelementptr inbounds %struct.termios, %struct.termios* %4, i64 0, i32 4
  %43 = bitcast %struct.winsize* %10 to i8*
  %44 = getelementptr inbounds %struct.winsize, %struct.winsize* %10, i64 0, i32 1
  %45 = bitcast i64* %11 to i8*
  %46 = bitcast i8** %8 to i8*
  %47 = bitcast i8** %9 to i8*
  br label %50

; <label>:48:                                     ; preds = %752
  br label %49

; <label>:49:                                     ; preds = %48, %7
  ret void

; <label>:50:                                     ; preds = %15, %752
  %51 = phi i32 [ 1, %15 ], [ %754, %752 ]
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i8*, i8** %2, i64 %52
  %54 = load i8*, i8** %53, align 8
  %55 = icmp eq i8* %54, null
  br i1 %55, label %752, label %56

; <label>:56:                                     ; preds = %50
  %57 = load i8, i8* %54, align 1
  %58 = icmp eq i8 %57, 45
  %59 = getelementptr inbounds i8, i8* %54, i64 1
  %60 = select i1 %58, i8* %59, i8* %54
  %61 = call i32 @strcmp(i8* %60, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.104, i64 0, i64 0)) #9
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %64, label %63

; <label>:63:                                     ; preds = %56
  br label %70

; <label>:64:                                     ; preds = %56
  %65 = xor i1 %58, true
  %66 = zext i1 %65 to i32
  store i32 %66, i32* @tcsetattr_options, align 4
  br label %752

; <label>:67:                                     ; preds = %70
  %68 = getelementptr inbounds [90 x %struct.mode_info], [90 x %struct.mode_info]* @mode_info, i64 0, i64 %76, i32 0
  %69 = icmp eq i64 %76, 89
  br i1 %69, label %369, label %70

; <label>:70:                                     ; preds = %63, %67
  %71 = phi i64 [ %76, %67 ], [ 0, %63 ]
  %72 = phi i8** [ %68, %67 ], [ getelementptr inbounds ([90 x %struct.mode_info], [90 x %struct.mode_info]* @mode_info, i64 0, i64 0, i32 0), %63 ]
  %73 = load i8*, i8** %72, align 16
  %74 = call i32 @strcmp(i8* %60, i8* nonnull %73) #9
  %75 = icmp eq i32 %74, 0
  %76 = add nuw nsw i64 %71, 1
  br i1 %75, label %77, label %67

; <label>:77:                                     ; preds = %70
  br i1 %58, label %78, label %83

; <label>:78:                                     ; preds = %77
  %79 = getelementptr inbounds [90 x %struct.mode_info], [90 x %struct.mode_info]* @mode_info, i64 0, i64 %71, i32 2
  %80 = load i8, i8* %79, align 4
  %81 = and i8 %80, 4
  %82 = icmp eq i8 %81, 0
  br i1 %82, label %367, label %83

; <label>:83:                                     ; preds = %78, %77
  %84 = getelementptr inbounds [90 x %struct.mode_info], [90 x %struct.mode_info]* @mode_info, i64 0, i64 %71, i32 1
  %85 = load i32, i32* %84, align 8
  switch i32 %85, label %88 [
    i32 0, label %349
    i32 1, label %89
    i32 2, label %86
    i32 3, label %87
    i32 4, label %90
  ]

; <label>:86:                                     ; preds = %83
  br label %349

; <label>:87:                                     ; preds = %83
  br label %349

; <label>:88:                                     ; preds = %83
  call void @abort() #14
  unreachable

; <label>:89:                                     ; preds = %83
  br i1 %18, label %90, label %349

; <label>:90:                                     ; preds = %89, %83
  %91 = call i32 @strcmp(i8* %73, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.215, i64 0, i64 0)) #9
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %96, label %93

; <label>:93:                                     ; preds = %90
  %94 = call i32 @strcmp(i8* %73, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.216, i64 0, i64 0)) #9
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %96, label %102

; <label>:96:                                     ; preds = %93, %90
  %97 = load i32, i32* %16, align 4
  %98 = select i1 %58, i32 -305, i32 -817
  %99 = select i1 %58, i32 48, i32 288
  %100 = and i32 %97, %98
  %101 = or i32 %100, %99
  store i32 %101, i32* %16, align 4
  br label %367

; <label>:102:                                    ; preds = %93
  %103 = call i32 @strcmp(i8* %73, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.217, i64 0, i64 0)) #9
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %105, label %111

; <label>:105:                                    ; preds = %102
  %106 = load i32, i32* %16, align 4
  %107 = select i1 %58, i32 -305, i32 -817
  %108 = select i1 %58, i32 48, i32 800
  %109 = and i32 %106, %107
  %110 = or i32 %109, %108
  store i32 %110, i32* %16, align 4
  br label %367

; <label>:111:                                    ; preds = %102
  %112 = load i8, i8* %73, align 1
  switch i8 %112, label %143 [
    i8 110, label %113
    i8 101, label %134
  ]

; <label>:113:                                    ; preds = %111
  %114 = getelementptr inbounds i8, i8* %73, i64 1
  %115 = load i8, i8* %114, align 1
  %116 = icmp eq i8 %115, 108
  br i1 %116, label %117, label %143

; <label>:117:                                    ; preds = %113
  %118 = getelementptr inbounds i8, i8* %73, i64 2
  %119 = load i8, i8* %118, align 1
  %120 = icmp eq i8 %119, 0
  br i1 %120, label %121, label %143

; <label>:121:                                    ; preds = %117
  %122 = load i32, i32* %17, align 4
  %123 = load i32, i32* %36, align 4
  br i1 %58, label %124, label %129

; <label>:124:                                    ; preds = %121
  %125 = and i32 %122, -449
  %126 = or i32 %125, 256
  store i32 %126, i32* %17, align 4
  %127 = and i32 %123, -45
  %128 = or i32 %127, 4
  br label %132

; <label>:129:                                    ; preds = %121
  %130 = and i32 %122, -257
  store i32 %130, i32* %17, align 4
  %131 = and i32 %123, -5
  br label %132

; <label>:132:                                    ; preds = %129, %124
  %133 = phi i32 [ %131, %129 ], [ %128, %124 ]
  store i32 %133, i32* %36, align 4
  br label %367

; <label>:134:                                    ; preds = %111
  %135 = getelementptr inbounds i8, i8* %73, i64 1
  %136 = load i8, i8* %135, align 1
  %137 = icmp eq i8 %136, 107
  br i1 %137, label %138, label %143

; <label>:138:                                    ; preds = %134
  %139 = getelementptr inbounds i8, i8* %73, i64 2
  %140 = load i8, i8* %139, align 1
  %141 = icmp eq i8 %140, 0
  br i1 %141, label %142, label %143

; <label>:142:                                    ; preds = %138
  store i8 127, i8* %21, align 1
  store i8 21, i8* %22, align 1
  br label %367

; <label>:143:                                    ; preds = %111, %113, %117, %138, %134
  %144 = call i32 @strcmp(i8* nonnull %73, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.220, i64 0, i64 0)) #9
  %145 = icmp eq i32 %144, 0
  br i1 %145, label %146, label %204

; <label>:146:                                    ; preds = %143
  store i8 3, i8* %19, align 1
  store i8 28, i8* %20, align 1
  store i8 127, i8* %21, align 1
  store i8 21, i8* %22, align 1
  store i8 4, i8* %23, align 1
  store i8 0, i8* %24, align 1
  store i8 0, i8* %25, align 1
  store i8 0, i8* %26, align 1
  store i8 17, i8* %27, align 1
  store i8 19, i8* %28, align 1
  store i8 26, i8* %29, align 1
  store i8 18, i8* %30, align 1
  store i8 23, i8* %31, align 1
  store i8 22, i8* %32, align 1
  store i8 15, i8* %33, align 1
  store i8 1, i8* %34, align 1
  store i8 0, i8* %35, align 1
  br label %147

; <label>:147:                                    ; preds = %201, %146
  %148 = phi i64 [ 0, %146 ], [ %202, %201 ]
  %149 = getelementptr inbounds [90 x %struct.mode_info], [90 x %struct.mode_info]* @mode_info, i64 0, i64 %148, i32 2
  %150 = load i8, i8* %149, align 4
  %151 = sext i8 %150 to i32
  %152 = and i32 %151, 16
  %153 = icmp eq i32 %152, 0
  br i1 %153, label %154, label %201

; <label>:154:                                    ; preds = %147
  %155 = and i32 %151, 1
  %156 = icmp eq i32 %155, 0
  br i1 %156, label %177, label %157

; <label>:157:                                    ; preds = %154
  %158 = getelementptr inbounds [90 x %struct.mode_info], [90 x %struct.mode_info]* @mode_info, i64 0, i64 %148, i32 1
  %159 = load i32, i32* %158, align 8
  switch i32 %159, label %162 [
    i32 0, label %165
    i32 1, label %163
    i32 2, label %160
    i32 3, label %161
    i32 4, label %164
  ]

; <label>:160:                                    ; preds = %157
  br label %165

; <label>:161:                                    ; preds = %157
  br label %165

; <label>:162:                                    ; preds = %157
  call void @abort() #14
  unreachable

; <label>:163:                                    ; preds = %157
  br i1 %18, label %164, label %165

; <label>:164:                                    ; preds = %163, %157
  call void @__assert_fail(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.232, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.233, i64 0, i64 0), i32 2271, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__PRETTY_FUNCTION__.sane_mode, i64 0, i64 0)) #14
  unreachable

; <label>:165:                                    ; preds = %163, %161, %160, %157
  %166 = phi i32* [ %17, %163 ], [ %36, %160 ], [ %37, %161 ], [ %16, %157 ]
  %167 = load i32, i32* %166, align 4
  %168 = zext i32 %167 to i64
  %169 = getelementptr inbounds [90 x %struct.mode_info], [90 x %struct.mode_info]* @mode_info, i64 0, i64 %148, i32 4
  %170 = load i64, i64* %169, align 8
  %171 = xor i64 %170, 4294967295
  %172 = and i64 %171, %168
  %173 = getelementptr inbounds [90 x %struct.mode_info], [90 x %struct.mode_info]* @mode_info, i64 0, i64 %148, i32 3
  %174 = load i64, i64* %173, align 16
  %175 = or i64 %172, %174
  %176 = trunc i64 %175 to i32
  store i32 %176, i32* %166, align 4
  br label %201

; <label>:177:                                    ; preds = %154
  %178 = and i32 %151, 2
  %179 = icmp eq i32 %178, 0
  br i1 %179, label %201, label %180

; <label>:180:                                    ; preds = %177
  %181 = getelementptr inbounds [90 x %struct.mode_info], [90 x %struct.mode_info]* @mode_info, i64 0, i64 %148, i32 1
  %182 = load i32, i32* %181, align 8
  switch i32 %182, label %185 [
    i32 0, label %188
    i32 1, label %186
    i32 2, label %183
    i32 3, label %184
    i32 4, label %187
  ]

; <label>:183:                                    ; preds = %180
  br label %188

; <label>:184:                                    ; preds = %180
  br label %188

; <label>:185:                                    ; preds = %180
  call void @abort() #14
  unreachable

; <label>:186:                                    ; preds = %180
  br i1 %18, label %187, label %188

; <label>:187:                                    ; preds = %186, %180
  call void @__assert_fail(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.232, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.233, i64 0, i64 0), i32 2277, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__PRETTY_FUNCTION__.sane_mode, i64 0, i64 0)) #14
  unreachable

; <label>:188:                                    ; preds = %186, %184, %183, %180
  %189 = phi i32* [ %17, %186 ], [ %36, %183 ], [ %37, %184 ], [ %16, %180 ]
  %190 = load i32, i32* %189, align 4
  %191 = zext i32 %190 to i64
  %192 = getelementptr inbounds [90 x %struct.mode_info], [90 x %struct.mode_info]* @mode_info, i64 0, i64 %148, i32 4
  %193 = load i64, i64* %192, align 8
  %194 = xor i64 %193, 4294967295
  %195 = and i64 %194, %191
  %196 = getelementptr inbounds [90 x %struct.mode_info], [90 x %struct.mode_info]* @mode_info, i64 0, i64 %148, i32 3
  %197 = load i64, i64* %196, align 16
  %198 = xor i64 %197, 4294967295
  %199 = and i64 %195, %198
  %200 = trunc i64 %199 to i32
  store i32 %200, i32* %189, align 4
  br label %201

; <label>:201:                                    ; preds = %188, %177, %165, %147
  %202 = add nuw nsw i64 %148, 1
  %203 = icmp eq i64 %202, 89
  br i1 %203, label %366, label %147

; <label>:204:                                    ; preds = %143
  %205 = call i32 @strcmp(i8* nonnull %73, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.225, i64 0, i64 0)) #9
  %206 = icmp eq i32 %205, 0
  br i1 %206, label %207, label %212

; <label>:207:                                    ; preds = %204
  %208 = load i32, i32* %37, align 4
  %209 = and i32 %208, -3
  %210 = or i32 %208, 2
  %211 = select i1 %58, i32 %210, i32 %209
  store i32 %211, i32* %37, align 4
  br label %367

; <label>:212:                                    ; preds = %204
  %213 = call i32 @strcmp(i8* nonnull %73, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.223, i64 0, i64 0)) #9
  %214 = icmp eq i32 %213, 0
  br i1 %214, label %215, label %226

; <label>:215:                                    ; preds = %212
  %216 = load i32, i32* %16, align 4
  %217 = and i32 %216, -305
  br i1 %58, label %218, label %222

; <label>:218:                                    ; preds = %215
  %219 = or i32 %217, 288
  store i32 %219, i32* %16, align 4
  %220 = load i32, i32* %17, align 4
  %221 = or i32 %220, 32
  store i32 %221, i32* %17, align 4
  br label %367

; <label>:222:                                    ; preds = %215
  %223 = or i32 %217, 48
  store i32 %223, i32* %16, align 4
  %224 = load i32, i32* %17, align 4
  %225 = and i32 %224, -33
  store i32 %225, i32* %17, align 4
  br label %367

; <label>:226:                                    ; preds = %212
  %227 = call i32 @strcmp(i8* nonnull %73, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.224, i64 0, i64 0)) #9
  %228 = icmp eq i32 %227, 0
  br i1 %228, label %229, label %244

; <label>:229:                                    ; preds = %226
  %230 = load i32, i32* %16, align 4
  %231 = and i32 %230, -305
  br i1 %58, label %232, label %238

; <label>:232:                                    ; preds = %229
  %233 = or i32 %231, 288
  store i32 %233, i32* %16, align 4
  %234 = load i32, i32* %17, align 4
  %235 = or i32 %234, 32
  store i32 %235, i32* %17, align 4
  %236 = load i32, i32* %36, align 4
  %237 = or i32 %236, 1
  store i32 %237, i32* %36, align 4
  br label %367

; <label>:238:                                    ; preds = %229
  %239 = or i32 %231, 48
  store i32 %239, i32* %16, align 4
  %240 = load i32, i32* %17, align 4
  %241 = and i32 %240, -33
  store i32 %241, i32* %17, align 4
  %242 = load i32, i32* %36, align 4
  %243 = and i32 %242, -2
  store i32 %243, i32* %36, align 4
  br label %367

; <label>:244:                                    ; preds = %226
  %245 = icmp eq i8 %112, 114
  br i1 %245, label %246, label %258

; <label>:246:                                    ; preds = %244
  %247 = getelementptr inbounds i8, i8* %73, i64 1
  %248 = load i8, i8* %247, align 1
  %249 = icmp eq i8 %248, 97
  br i1 %249, label %250, label %258

; <label>:250:                                    ; preds = %246
  %251 = getelementptr inbounds i8, i8* %73, i64 2
  %252 = load i8, i8* %251, align 1
  %253 = icmp eq i8 %252, 119
  br i1 %253, label %254, label %258

; <label>:254:                                    ; preds = %250
  %255 = getelementptr inbounds i8, i8* %73, i64 3
  %256 = load i8, i8* %255, align 1
  %257 = icmp eq i8 %256, 0
  br i1 %257, label %261, label %258

; <label>:258:                                    ; preds = %254, %250, %246, %244
  %259 = call i32 @strcmp(i8* nonnull %73, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.221, i64 0, i64 0)) #9
  %260 = icmp eq i32 %259, 0
  br i1 %260, label %261, label %280

; <label>:261:                                    ; preds = %258, %254
  %262 = icmp ne i8 %112, 114
  %263 = xor i1 %58, true
  %264 = or i1 %262, %263
  %265 = icmp ne i8 %112, 99
  %266 = or i1 %58, %265
  %267 = and i1 %264, %266
  br i1 %267, label %275, label %268

; <label>:268:                                    ; preds = %261
  %269 = load i32, i32* %17, align 4
  %270 = or i32 %269, 1318
  store i32 %270, i32* %17, align 4
  %271 = load i32, i32* %36, align 4
  %272 = or i32 %271, 1
  store i32 %272, i32* %36, align 4
  %273 = load i32, i32* %37, align 4
  %274 = or i32 %273, 3
  store i32 %274, i32* %37, align 4
  br label %367

; <label>:275:                                    ; preds = %261
  store i32 0, i32* %17, align 4
  %276 = load i32, i32* %36, align 4
  %277 = and i32 %276, -2
  store i32 %277, i32* %36, align 4
  %278 = load i32, i32* %37, align 4
  %279 = and i32 %278, -8
  store i32 %279, i32* %37, align 4
  store i8 1, i8* %34, align 1
  store i8 0, i8* %35, align 1
  br label %367

; <label>:280:                                    ; preds = %258
  %281 = call i32 @strcmp(i8* nonnull %73, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.226, i64 0, i64 0)) #9
  %282 = icmp eq i32 %281, 0
  br i1 %282, label %283, label %288

; <label>:283:                                    ; preds = %280
  %284 = load i32, i32* %17, align 4
  %285 = and i32 %284, -2049
  %286 = or i32 %284, 2048
  %287 = select i1 %58, i32 %286, i32 %285
  store i32 %287, i32* %17, align 4
  br label %367

; <label>:288:                                    ; preds = %280
  %289 = call i32 @strcmp(i8* nonnull %73, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.227, i64 0, i64 0)) #9
  %290 = icmp eq i32 %289, 0
  br i1 %290, label %291, label %296

; <label>:291:                                    ; preds = %288
  %292 = load i32, i32* %36, align 4
  %293 = and i32 %292, -6145
  %294 = or i32 %292, 6144
  %295 = select i1 %58, i32 %294, i32 %293
  store i32 %295, i32* %36, align 4
  br label %367

; <label>:296:                                    ; preds = %288
  %297 = call i32 @strcmp(i8* nonnull %73, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.228, i64 0, i64 0)) #9
  %298 = icmp eq i32 %297, 0
  br i1 %298, label %302, label %299

; <label>:299:                                    ; preds = %296
  %300 = call i32 @strcmp(i8* nonnull %73, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.229, i64 0, i64 0)) #9
  %301 = icmp eq i32 %300, 0
  br i1 %301, label %302, label %316

; <label>:302:                                    ; preds = %299, %296
  %303 = load i32, i32* %37, align 4
  br i1 %58, label %304, label %310

; <label>:304:                                    ; preds = %302
  %305 = and i32 %303, -5
  store i32 %305, i32* %37, align 4
  %306 = load i32, i32* %17, align 4
  %307 = and i32 %306, -513
  store i32 %307, i32* %17, align 4
  %308 = load i32, i32* %36, align 4
  %309 = and i32 %308, -3
  store i32 %309, i32* %36, align 4
  br label %367

; <label>:310:                                    ; preds = %302
  %311 = or i32 %303, 4
  store i32 %311, i32* %37, align 4
  %312 = load i32, i32* %17, align 4
  %313 = or i32 %312, 512
  store i32 %313, i32* %17, align 4
  %314 = load i32, i32* %36, align 4
  %315 = or i32 %314, 2
  store i32 %315, i32* %36, align 4
  br label %367

; <label>:316:                                    ; preds = %299
  switch i8 %112, label %367 [
    i8 99, label %317
    i8 100, label %332
  ]

; <label>:317:                                    ; preds = %316
  %318 = getelementptr inbounds i8, i8* %73, i64 1
  %319 = load i8, i8* %318, align 1
  %320 = icmp eq i8 %319, 114
  br i1 %320, label %321, label %367

; <label>:321:                                    ; preds = %317
  %322 = getelementptr inbounds i8, i8* %73, i64 2
  %323 = load i8, i8* %322, align 1
  %324 = icmp eq i8 %323, 116
  br i1 %324, label %325, label %367

; <label>:325:                                    ; preds = %321
  %326 = getelementptr inbounds i8, i8* %73, i64 3
  %327 = load i8, i8* %326, align 1
  %328 = icmp eq i8 %327, 0
  br i1 %328, label %329, label %367

; <label>:329:                                    ; preds = %325
  %330 = load i32, i32* %37, align 4
  %331 = or i32 %330, 2576
  store i32 %331, i32* %37, align 4
  br label %367

; <label>:332:                                    ; preds = %316
  %333 = getelementptr inbounds i8, i8* %73, i64 1
  %334 = load i8, i8* %333, align 1
  %335 = icmp eq i8 %334, 101
  br i1 %335, label %336, label %367

; <label>:336:                                    ; preds = %332
  %337 = getelementptr inbounds i8, i8* %73, i64 2
  %338 = load i8, i8* %337, align 1
  %339 = icmp eq i8 %338, 99
  br i1 %339, label %340, label %367

; <label>:340:                                    ; preds = %336
  %341 = getelementptr inbounds i8, i8* %73, i64 3
  %342 = load i8, i8* %341, align 1
  %343 = icmp eq i8 %342, 0
  br i1 %343, label %344, label %367

; <label>:344:                                    ; preds = %340
  store i8 3, i8* %19, align 1
  store i8 127, i8* %21, align 1
  store i8 21, i8* %22, align 1
  %345 = load i32, i32* %37, align 4
  %346 = or i32 %345, 2576
  store i32 %346, i32* %37, align 4
  %347 = load i32, i32* %17, align 4
  %348 = and i32 %347, -2049
  store i32 %348, i32* %17, align 4
  br label %367

; <label>:349:                                    ; preds = %83, %89, %87, %86
  %350 = phi i32* [ %17, %89 ], [ %36, %86 ], [ %37, %87 ], [ %16, %83 ]
  %351 = load i32, i32* %350, align 4
  %352 = zext i32 %351 to i64
  %353 = getelementptr inbounds [90 x %struct.mode_info], [90 x %struct.mode_info]* @mode_info, i64 0, i64 %71, i32 4
  %354 = load i64, i64* %353, align 8
  %355 = xor i64 %354, -1
  %356 = and i64 %352, %355
  %357 = getelementptr inbounds [90 x %struct.mode_info], [90 x %struct.mode_info]* @mode_info, i64 0, i64 %71, i32 3
  %358 = load i64, i64* %357, align 16
  br i1 %58, label %359, label %363

; <label>:359:                                    ; preds = %349
  %360 = xor i64 %358, 4294967295
  %361 = and i64 %360, %356
  %362 = trunc i64 %361 to i32
  store i32 %362, i32* %350, align 4
  br label %367

; <label>:363:                                    ; preds = %349
  %364 = or i64 %356, %358
  %365 = trunc i64 %364 to i32
  store i32 %365, i32* %350, align 4
  br label %367

; <label>:366:                                    ; preds = %201
  br label %367

; <label>:367:                                    ; preds = %366, %78, %96, %105, %132, %142, %207, %218, %222, %232, %238, %268, %275, %283, %291, %304, %310, %316, %317, %321, %325, %329, %332, %336, %340, %344, %359, %363
  %368 = phi i8 [ 0, %78 ], [ 1, %359 ], [ 1, %363 ], [ 1, %96 ], [ 1, %132 ], [ 1, %222 ], [ 1, %218 ], [ 1, %275 ], [ 1, %268 ], [ 1, %291 ], [ 1, %329 ], [ 1, %344 ], [ 1, %340 ], [ 1, %304 ], [ 1, %310 ], [ 1, %283 ], [ 1, %232 ], [ 1, %238 ], [ 1, %207 ], [ 1, %142 ], [ 1, %105 ], [ 1, %336 ], [ 1, %332 ], [ 1, %317 ], [ 1, %321 ], [ 1, %325 ], [ 1, %316 ], [ 1, %366 ]
  store i8 1, i8* %6, align 1
  br label %370

; <label>:369:                                    ; preds = %67
  br label %370

; <label>:370:                                    ; preds = %369, %367
  %371 = phi i8 [ %368, %367 ], [ 0, %369 ]
  %372 = icmp ne i8 %371, 0
  %373 = xor i1 %58, true
  %374 = or i1 %372, %373
  br i1 %374, label %379, label %375

; <label>:375:                                    ; preds = %370
  %376 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.132, i64 0, i64 0), i32 5) #9
  %377 = getelementptr inbounds i8, i8* %60, i64 -1
  %378 = call i8* @quote(i8* %377) #9
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %376, i8* %378) #9
  call void @usage(i32 1) #15
  unreachable

; <label>:379:                                    ; preds = %370
  br i1 %372, label %752, label %380

; <label>:380:                                    ; preds = %379
  %381 = call i32 @strcmp(i8* %60, i8* nonnull getelementptr inbounds ([5 x i8], [5 x i8]* @.str.234, i64 0, i64 0)) #9
  %382 = icmp eq i32 %381, 0
  br i1 %382, label %386, label %383

; <label>:383:                                    ; preds = %380
  %384 = call i32 @strcmp(i8* %60, i8* nonnull getelementptr inbounds ([5 x i8], [5 x i8]* @.str.235, i64 0, i64 0)) #9
  %385 = icmp eq i32 %384, 0
  br i1 %385, label %386, label %756

; <label>:386:                                    ; preds = %801, %798, %795, %792, %789, %786, %783, %780, %777, %774, %771, %768, %765, %762, %759, %756, %383, %380
  %387 = phi i8* [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.234, i64 0, i64 0), %380 ], [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.235, i64 0, i64 0), %383 ], [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.236, i64 0, i64 0), %756 ], [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.237, i64 0, i64 0), %759 ], [ getelementptr inbounds ([4 x i8], [4 x i8]* @.str.238, i64 0, i64 0), %762 ], [ getelementptr inbounds ([4 x i8], [4 x i8]* @.str.239, i64 0, i64 0), %765 ], [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.240, i64 0, i64 0), %768 ], [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.241, i64 0, i64 0), %771 ], [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.242, i64 0, i64 0), %774 ], [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.243, i64 0, i64 0), %777 ], [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.244, i64 0, i64 0), %780 ], [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.245, i64 0, i64 0), %783 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.246, i64 0, i64 0), %786 ], [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.247, i64 0, i64 0), %789 ], [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.248, i64 0, i64 0), %792 ], [ getelementptr inbounds ([8 x i8], [8 x i8]* @.str.249, i64 0, i64 0), %795 ], [ getelementptr inbounds ([4 x i8], [4 x i8]* @.str.250, i64 0, i64 0), %798 ], [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.251, i64 0, i64 0), %801 ]
  %388 = phi i64 [ 0, %380 ], [ 1, %383 ], [ 2, %756 ], [ 3, %759 ], [ 4, %762 ], [ 5, %765 ], [ 6, %768 ], [ 7, %771 ], [ 8, %774 ], [ 9, %777 ], [ 10, %780 ], [ 11, %783 ], [ 12, %786 ], [ 13, %789 ], [ 14, %792 ], [ 15, %795 ], [ 16, %798 ], [ 17, %801 ]
  %389 = icmp eq i32 %51, %38
  br i1 %389, label %390, label %393

; <label>:390:                                    ; preds = %386
  %391 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.133, i64 0, i64 0), i32 5) #9
  %392 = call i8* @quote(i8* %60) #9
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %391, i8* %392) #9
  call void @usage(i32 1) #15
  unreachable

; <label>:393:                                    ; preds = %386
  %394 = add nsw i32 %51, 1
  %395 = sext i32 %394 to i64
  %396 = getelementptr inbounds i8*, i8** %2, i64 %395
  %397 = load i8*, i8** %396, align 8
  %398 = load i8, i8* %387, align 1
  %399 = icmp eq i8 %398, 109
  br i1 %399, label %400, label %412

; <label>:400:                                    ; preds = %393
  %401 = getelementptr inbounds i8, i8* %387, i64 1
  %402 = load i8, i8* %401, align 1
  %403 = icmp eq i8 %402, 105
  br i1 %403, label %404, label %412

; <label>:404:                                    ; preds = %400
  %405 = getelementptr inbounds i8, i8* %387, i64 2
  %406 = load i8, i8* %405, align 1
  %407 = icmp eq i8 %406, 110
  br i1 %407, label %408, label %412

; <label>:408:                                    ; preds = %404
  %409 = getelementptr inbounds i8, i8* %387, i64 3
  %410 = load i8, i8* %409, align 1
  %411 = icmp eq i8 %410, 0
  br i1 %411, label %415, label %412

; <label>:412:                                    ; preds = %408, %404, %400, %393
  %413 = call i32 @strcmp(i8* nonnull %387, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.251, i64 0, i64 0)) #9
  %414 = icmp eq i32 %413, 0
  br i1 %414, label %415, label %418

; <label>:415:                                    ; preds = %412, %408
  %416 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.255, i64 0, i64 0), i32 5) #9
  %417 = call i64 @xnumtoumax(i8* %397, i32 0, i64 0, i64 255, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.254, i64 0, i64 0), i8* %416, i32 0) #9
  br label %447

; <label>:418:                                    ; preds = %412
  %419 = load i8, i8* %397, align 1
  %420 = icmp eq i8 %419, 0
  br i1 %420, label %425, label %421

; <label>:421:                                    ; preds = %418
  %422 = getelementptr inbounds i8, i8* %397, i64 1
  %423 = load i8, i8* %422, align 1
  %424 = icmp eq i8 %423, 0
  br i1 %424, label %425, label %427

; <label>:425:                                    ; preds = %421, %418
  %426 = zext i8 %419 to i64
  br label %447

; <label>:427:                                    ; preds = %421
  %428 = icmp eq i8 %419, 94
  %429 = icmp eq i8 %423, 45
  %430 = and i1 %428, %429
  br i1 %430, label %431, label %435

; <label>:431:                                    ; preds = %427
  %432 = getelementptr inbounds i8, i8* %397, i64 2
  %433 = load i8, i8* %432, align 1
  %434 = icmp eq i8 %433, 0
  br i1 %434, label %447, label %435

; <label>:435:                                    ; preds = %431, %427
  %436 = call i32 @strcmp(i8* nonnull %397, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.253, i64 0, i64 0)) #9
  %437 = icmp eq i32 %436, 0
  br i1 %437, label %447, label %438

; <label>:438:                                    ; preds = %435
  br i1 %428, label %439, label %444

; <label>:439:                                    ; preds = %438
  %440 = icmp eq i8 %423, 63
  br i1 %440, label %447, label %441

; <label>:441:                                    ; preds = %439
  %442 = and i8 %423, -97
  %443 = zext i8 %442 to i64
  br label %447

; <label>:444:                                    ; preds = %438
  %445 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.255, i64 0, i64 0), i32 5) #9
  %446 = call i64 @xnumtoumax(i8* nonnull %397, i32 0, i64 0, i64 255, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.254, i64 0, i64 0), i8* %445, i32 0) #9
  br label %447

; <label>:447:                                    ; preds = %415, %425, %431, %435, %439, %441, %444
  %448 = phi i64 [ %417, %415 ], [ %426, %425 ], [ %443, %441 ], [ %446, %444 ], [ 0, %435 ], [ 0, %431 ], [ 127, %439 ]
  %449 = trunc i64 %448 to i8
  %450 = getelementptr inbounds [19 x %struct.control_info], [19 x %struct.control_info]* @control_info, i64 0, i64 %388, i32 2
  %451 = load i64, i64* %450, align 8
  %452 = getelementptr inbounds %struct.termios, %struct.termios* %4, i64 0, i32 5, i64 %451
  store i8 %449, i8* %452, align 1
  store i8 1, i8* %6, align 1
  br label %752

; <label>:453:                                    ; preds = %801
  %454 = call i32 @strcmp(i8* %60, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.134, i64 0, i64 0)) #9
  %455 = icmp eq i32 %454, 0
  br i1 %455, label %456, label %483

; <label>:456:                                    ; preds = %453
  %457 = icmp eq i32 %51, %38
  br i1 %457, label %458, label %461

; <label>:458:                                    ; preds = %456
  %459 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.133, i64 0, i64 0), i32 5) #9
  %460 = call i8* @quote(i8* %60) #9
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %459, i8* %460) #9
  call void @usage(i32 1) #15
  unreachable

; <label>:461:                                    ; preds = %456
  %462 = add nsw i32 %51, 1
  br i1 %0, label %752, label %463

; <label>:463:                                    ; preds = %461
  %464 = sext i32 %462 to i64
  %465 = getelementptr inbounds i8*, i8** %2, i64 %464
  %466 = load i8*, i8** %465, align 8
  br label %469

; <label>:467:                                    ; preds = %469
  %468 = icmp eq i64 %475, 34
  br i1 %468, label %479, label %469

; <label>:469:                                    ; preds = %467, %463
  %470 = phi i64 [ 0, %463 ], [ %475, %467 ]
  %471 = getelementptr inbounds [35 x %struct.speed_map], [35 x %struct.speed_map]* @speeds, i64 0, i64 %470, i32 0
  %472 = load i8*, i8** %471, align 8
  %473 = call i32 @strcmp(i8* %466, i8* nonnull %472) #9
  %474 = icmp eq i32 %473, 0
  %475 = add nuw nsw i64 %470, 1
  br i1 %474, label %476, label %467

; <label>:476:                                    ; preds = %469
  %477 = getelementptr inbounds [35 x %struct.speed_map], [35 x %struct.speed_map]* @speeds, i64 0, i64 %470, i32 1
  %478 = load i32, i32* %477, align 8
  br label %480

; <label>:479:                                    ; preds = %467
  br label %480

; <label>:480:                                    ; preds = %479, %476
  %481 = phi i32 [ %478, %476 ], [ -1, %479 ]
  %482 = call i32 @cfsetispeed(%struct.termios* %4, i32 %481) #9
  store i8 1, i8* %5, align 1
  store i8 1, i8* %6, align 1
  br label %752

; <label>:483:                                    ; preds = %453
  %484 = call i32 @strcmp(i8* %60, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.135, i64 0, i64 0)) #9
  %485 = icmp eq i32 %484, 0
  br i1 %485, label %486, label %513

; <label>:486:                                    ; preds = %483
  %487 = icmp eq i32 %51, %38
  br i1 %487, label %488, label %491

; <label>:488:                                    ; preds = %486
  %489 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.133, i64 0, i64 0), i32 5) #9
  %490 = call i8* @quote(i8* %60) #9
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %489, i8* %490) #9
  call void @usage(i32 1) #15
  unreachable

; <label>:491:                                    ; preds = %486
  %492 = add nsw i32 %51, 1
  br i1 %0, label %752, label %493

; <label>:493:                                    ; preds = %491
  %494 = sext i32 %492 to i64
  %495 = getelementptr inbounds i8*, i8** %2, i64 %494
  %496 = load i8*, i8** %495, align 8
  br label %499

; <label>:497:                                    ; preds = %499
  %498 = icmp eq i64 %505, 34
  br i1 %498, label %509, label %499

; <label>:499:                                    ; preds = %497, %493
  %500 = phi i64 [ 0, %493 ], [ %505, %497 ]
  %501 = getelementptr inbounds [35 x %struct.speed_map], [35 x %struct.speed_map]* @speeds, i64 0, i64 %500, i32 0
  %502 = load i8*, i8** %501, align 8
  %503 = call i32 @strcmp(i8* %496, i8* nonnull %502) #9
  %504 = icmp eq i32 %503, 0
  %505 = add nuw nsw i64 %500, 1
  br i1 %504, label %506, label %497

; <label>:506:                                    ; preds = %499
  %507 = getelementptr inbounds [35 x %struct.speed_map], [35 x %struct.speed_map]* @speeds, i64 0, i64 %500, i32 1
  %508 = load i32, i32* %507, align 8
  br label %510

; <label>:509:                                    ; preds = %497
  br label %510

; <label>:510:                                    ; preds = %509, %506
  %511 = phi i32 [ %508, %506 ], [ -1, %509 ]
  %512 = call i32 @cfsetospeed(%struct.termios* %4, i32 %511) #9
  store i8 1, i8* %5, align 1
  store i8 1, i8* %6, align 1
  br label %752

; <label>:513:                                    ; preds = %483
  %514 = call i32 @strcmp(i8* %60, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.136, i64 0, i64 0)) #9
  %515 = icmp eq i32 %514, 0
  br i1 %515, label %516, label %530

; <label>:516:                                    ; preds = %513
  %517 = icmp eq i32 %51, %38
  br i1 %517, label %518, label %521

; <label>:518:                                    ; preds = %516
  %519 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.133, i64 0, i64 0), i32 5) #9
  %520 = call i8* @quote(i8* %60) #9
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %519, i8* %520) #9
  call void @usage(i32 1) #15
  unreachable

; <label>:521:                                    ; preds = %516
  %522 = add nsw i32 %51, 1
  br i1 %0, label %752, label %523

; <label>:523:                                    ; preds = %521
  %524 = sext i32 %522 to i64
  %525 = getelementptr inbounds i8*, i8** %2, i64 %524
  %526 = load i8*, i8** %525, align 8
  %527 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.255, i64 0, i64 0), i32 5) #9
  %528 = call i64 @xnumtoumax(i8* %526, i32 0, i64 0, i64 2147483647, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.254, i64 0, i64 0), i8* %527, i32 0) #9
  %529 = trunc i64 %528 to i32
  call fastcc void @set_window_size(i32 %529, i32 -1, i8* %1)
  br label %752

; <label>:530:                                    ; preds = %513
  %531 = call i32 @strcmp(i8* %60, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.137, i64 0, i64 0)) #9
  %532 = icmp eq i32 %531, 0
  br i1 %532, label %536, label %533

; <label>:533:                                    ; preds = %530
  %534 = call i32 @strcmp(i8* %60, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.138, i64 0, i64 0)) #9
  %535 = icmp eq i32 %534, 0
  br i1 %535, label %536, label %550

; <label>:536:                                    ; preds = %533, %530
  %537 = icmp eq i32 %51, %38
  br i1 %537, label %538, label %541

; <label>:538:                                    ; preds = %536
  %539 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.133, i64 0, i64 0), i32 5) #9
  %540 = call i8* @quote(i8* %60) #9
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %539, i8* %540) #9
  call void @usage(i32 1) #15
  unreachable

; <label>:541:                                    ; preds = %536
  %542 = add nsw i32 %51, 1
  br i1 %0, label %752, label %543

; <label>:543:                                    ; preds = %541
  %544 = sext i32 %542 to i64
  %545 = getelementptr inbounds i8*, i8** %2, i64 %544
  %546 = load i8*, i8** %545, align 8
  %547 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.255, i64 0, i64 0), i32 5) #9
  %548 = call i64 @xnumtoumax(i8* %546, i32 0, i64 0, i64 2147483647, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.254, i64 0, i64 0), i8* %547, i32 0) #9
  %549 = trunc i64 %548 to i32
  call fastcc void @set_window_size(i32 -1, i32 %549, i8* %1)
  br label %752

; <label>:550:                                    ; preds = %533
  %551 = call i32 @strcmp(i8* %60, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.139, i64 0, i64 0)) #9
  %552 = icmp eq i32 %551, 0
  br i1 %552, label %553, label %578

; <label>:553:                                    ; preds = %550
  br i1 %0, label %752, label %554

; <label>:554:                                    ; preds = %553
  call void @llvm.lifetime.start(i64 8, i8* nonnull %39) #9
  %555 = call i32 (i32, i64, ...) @ioctl(i32 1, i64 21523, %struct.winsize* nonnull %12) #9
  %556 = icmp eq i32 %555, 0
  br i1 %556, label %557, label %562

; <label>:557:                                    ; preds = %554
  %558 = load i16, i16* %40, align 2
  %559 = icmp eq i16 %558, 0
  br i1 %559, label %562, label %560

; <label>:560:                                    ; preds = %557
  %561 = zext i16 %558 to i32
  br label %576

; <label>:562:                                    ; preds = %557, %554
  %563 = call i8* @getenv(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.297, i64 0, i64 0)) #9
  call void @llvm.lifetime.start(i64 8, i8* nonnull %41) #9
  %564 = icmp eq i8* %563, null
  br i1 %564, label %572, label %565

; <label>:565:                                    ; preds = %562
  %566 = call i32 @xstrtol(i8* nonnull %563, i8** null, i32 0, i64* nonnull %13, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.96, i64 0, i64 0)) #9
  %567 = icmp eq i32 %566, 0
  %568 = load i64, i64* %13, align 8
  %569 = add i64 %568, -1
  %570 = icmp ult i64 %569, 2147483647
  %571 = and i1 %567, %570
  br i1 %571, label %573, label %572

; <label>:572:                                    ; preds = %565, %562
  store i64 80, i64* %13, align 8
  br label %573

; <label>:573:                                    ; preds = %572, %565
  %574 = phi i64 [ %568, %565 ], [ 80, %572 ]
  %575 = trunc i64 %574 to i32
  call void @llvm.lifetime.end(i64 8, i8* nonnull %41) #9
  br label %576

; <label>:576:                                    ; preds = %560, %573
  %577 = phi i32 [ %561, %560 ], [ %575, %573 ]
  call void @llvm.lifetime.end(i64 8, i8* nonnull %39) #9
  store i32 %577, i32* @max_col, align 4
  store i32 0, i32* @current_col, align 4
  call fastcc void @display_window_size(i1 zeroext false, i8* %1)
  br label %752

; <label>:578:                                    ; preds = %550
  %579 = call i32 @strcmp(i8* %60, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.140, i64 0, i64 0)) #9
  %580 = icmp eq i32 %579, 0
  br i1 %580, label %581, label %601

; <label>:581:                                    ; preds = %578
  %582 = icmp eq i32 %51, %38
  br i1 %582, label %583, label %586

; <label>:583:                                    ; preds = %581
  %584 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.133, i64 0, i64 0), i32 5) #9
  %585 = call i8* @quote(i8* %60) #9
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %584, i8* %585) #9
  call void @usage(i32 1) #15
  unreachable

; <label>:586:                                    ; preds = %581
  %587 = add nsw i32 %51, 1
  %588 = sext i32 %587 to i64
  %589 = getelementptr inbounds i8*, i8** %2, i64 %588
  %590 = load i8*, i8** %589, align 8
  %591 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.255, i64 0, i64 0), i32 5) #9
  %592 = call i64 @xnumtoumax(i8* %590, i32 0, i64 0, i64 -1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.254, i64 0, i64 0), i8* %591, i32 0) #9
  %593 = trunc i64 %592 to i8
  store i8 %593, i8* %42, align 4
  %594 = and i64 %592, 255
  %595 = icmp eq i64 %594, %592
  br i1 %595, label %600, label %596

; <label>:596:                                    ; preds = %586
  %597 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.141, i64 0, i64 0), i32 5) #9
  %598 = load i8*, i8** %589, align 8
  %599 = call i8* @quote(i8* %598) #9
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %597, i8* %599) #9
  br label %600

; <label>:600:                                    ; preds = %586, %596
  store i8 1, i8* %6, align 1
  br label %752

; <label>:601:                                    ; preds = %578
  %602 = call i32 @strcmp(i8* %60, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.142, i64 0, i64 0)) #9
  %603 = icmp eq i32 %602, 0
  br i1 %603, label %605, label %604

; <label>:604:                                    ; preds = %601
  br label %632

; <label>:605:                                    ; preds = %601
  br i1 %0, label %752, label %606

; <label>:606:                                    ; preds = %605
  call void @llvm.lifetime.start(i64 8, i8* nonnull %43) #9
  %607 = call i32 (i32, i64, ...) @ioctl(i32 1, i64 21523, %struct.winsize* nonnull %10) #9
  %608 = icmp eq i32 %607, 0
  br i1 %608, label %609, label %614

; <label>:609:                                    ; preds = %606
  %610 = load i16, i16* %44, align 2
  %611 = icmp eq i16 %610, 0
  br i1 %611, label %614, label %612

; <label>:612:                                    ; preds = %609
  %613 = zext i16 %610 to i32
  br label %628

; <label>:614:                                    ; preds = %609, %606
  %615 = call i8* @getenv(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.297, i64 0, i64 0)) #9
  call void @llvm.lifetime.start(i64 8, i8* nonnull %45) #9
  %616 = icmp eq i8* %615, null
  br i1 %616, label %624, label %617

; <label>:617:                                    ; preds = %614
  %618 = call i32 @xstrtol(i8* nonnull %615, i8** null, i32 0, i64* nonnull %11, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.96, i64 0, i64 0)) #9
  %619 = icmp eq i32 %618, 0
  %620 = load i64, i64* %11, align 8
  %621 = add i64 %620, -1
  %622 = icmp ult i64 %621, 2147483647
  %623 = and i1 %619, %622
  br i1 %623, label %625, label %624

; <label>:624:                                    ; preds = %617, %614
  store i64 80, i64* %11, align 8
  br label %625

; <label>:625:                                    ; preds = %624, %617
  %626 = phi i64 [ %620, %617 ], [ 80, %624 ]
  %627 = trunc i64 %626 to i32
  call void @llvm.lifetime.end(i64 8, i8* nonnull %45) #9
  br label %628

; <label>:628:                                    ; preds = %612, %625
  %629 = phi i32 [ %613, %612 ], [ %627, %625 ]
  call void @llvm.lifetime.end(i64 8, i8* nonnull %43) #9
  store i32 %629, i32* @max_col, align 4
  call fastcc void @display_speed(%struct.termios* %4, i1 zeroext false)
  br label %752

; <label>:630:                                    ; preds = %632
  %631 = icmp eq i64 %638, 34
  br i1 %631, label %658, label %632

; <label>:632:                                    ; preds = %604, %630
  %633 = phi i64 [ %638, %630 ], [ 0, %604 ]
  %634 = getelementptr inbounds [35 x %struct.speed_map], [35 x %struct.speed_map]* @speeds, i64 0, i64 %633, i32 0
  %635 = load i8*, i8** %634, align 8
  %636 = call i32 @strcmp(i8* %60, i8* nonnull %635) #9
  %637 = icmp eq i32 %636, 0
  %638 = add nuw nsw i64 %633, 1
  br i1 %637, label %639, label %630

; <label>:639:                                    ; preds = %632
  br i1 %0, label %752, label %640

; <label>:640:                                    ; preds = %639
  br label %643

; <label>:641:                                    ; preds = %643
  %642 = icmp eq i64 %649, 34
  br i1 %642, label %653, label %643

; <label>:643:                                    ; preds = %640, %641
  %644 = phi i64 [ %649, %641 ], [ 0, %640 ]
  %645 = getelementptr inbounds [35 x %struct.speed_map], [35 x %struct.speed_map]* @speeds, i64 0, i64 %644, i32 0
  %646 = load i8*, i8** %645, align 8
  %647 = call i32 @strcmp(i8* %60, i8* nonnull %646) #9
  %648 = icmp eq i32 %647, 0
  %649 = add nuw nsw i64 %644, 1
  br i1 %648, label %650, label %641

; <label>:650:                                    ; preds = %643
  %651 = getelementptr inbounds [35 x %struct.speed_map], [35 x %struct.speed_map]* @speeds, i64 0, i64 %644, i32 1
  %652 = load i32, i32* %651, align 8
  br label %654

; <label>:653:                                    ; preds = %641
  br label %654

; <label>:654:                                    ; preds = %653, %650
  %655 = phi i32 [ %652, %650 ], [ -1, %653 ]
  %656 = call i32 @cfsetispeed(%struct.termios* %4, i32 %655) #9
  %657 = call i32 @cfsetospeed(%struct.termios* %4, i32 %655) #9
  store i8 1, i8* %5, align 1
  br label %751

; <label>:658:                                    ; preds = %630
  call void @llvm.lifetime.start(i64 8, i8* nonnull %46) #9
  %659 = tail call i32* @__errno_location() #1
  store i32 0, i32* %659, align 4
  %660 = call i64 @strtoul(i8* %60, i8** nonnull %8, i32 16) #9
  %661 = load i32, i32* %659, align 4
  %662 = icmp eq i32 %661, 0
  br i1 %662, label %663, label %672

; <label>:663:                                    ; preds = %658
  %664 = load i8*, i8** %8, align 8
  %665 = load i8, i8* %664, align 1
  %666 = icmp eq i8 %665, 58
  %667 = icmp ne i8* %664, %60
  %668 = and i1 %667, %666
  %669 = and i64 %660, 4294967295
  %670 = icmp eq i64 %669, %660
  %671 = and i1 %670, %668
  br i1 %671, label %673, label %672

; <label>:672:                                    ; preds = %663, %658
  call void @llvm.lifetime.end(i64 8, i8* nonnull %46) #9
  br label %747

; <label>:673:                                    ; preds = %663
  %674 = trunc i64 %660 to i32
  call void @llvm.lifetime.end(i64 8, i8* nonnull %46) #9
  %675 = getelementptr inbounds i8, i8* %664, i64 1
  call void @llvm.lifetime.start(i64 8, i8* nonnull %46) #9
  store i32 0, i32* %659, align 4
  %676 = call i64 @strtoul(i8* %675, i8** nonnull %8, i32 16) #9
  %677 = load i32, i32* %659, align 4
  %678 = icmp eq i32 %677, 0
  br i1 %678, label %703, label %712

; <label>:679:                                    ; preds = %745, %699
  %680 = phi i64 [ 0, %745 ], [ %701, %699 ]
  %681 = phi i8* [ %736, %745 ], [ %690, %699 ]
  %682 = getelementptr inbounds i8, i8* %681, i64 1
  call void @llvm.lifetime.start(i64 8, i8* nonnull %47) #9
  %683 = getelementptr inbounds %struct.termios, %struct.termios* %4, i64 0, i32 5, i64 %680
  store i32 0, i32* %659, align 4
  %684 = call i64 @strtoul(i8* %682, i8** nonnull %9, i32 16) #9
  %685 = load i32, i32* %659, align 4
  %686 = icmp eq i32 %685, 0
  br i1 %686, label %687, label %698

; <label>:687:                                    ; preds = %679
  %688 = icmp ne i64 %680, 31
  %689 = select i1 %688, i8 58, i8 0
  %690 = load i8*, i8** %9, align 8
  %691 = load i8, i8* %690, align 1
  %692 = icmp eq i8 %691, %689
  %693 = icmp ne i8* %690, %682
  %694 = and i1 %693, %692
  %695 = and i64 %684, 255
  %696 = icmp eq i64 %695, %684
  %697 = and i1 %696, %694
  br i1 %697, label %699, label %698

; <label>:698:                                    ; preds = %687, %679
  call void @llvm.lifetime.end(i64 8, i8* nonnull %47) #9
  br label %747

; <label>:699:                                    ; preds = %687
  %700 = trunc i64 %684 to i8
  store i8 %700, i8* %683, align 1
  call void @llvm.lifetime.end(i64 8, i8* nonnull %47) #9
  %701 = add nuw nsw i64 %680, 1
  %702 = icmp ult i64 %701, 32
  br i1 %702, label %679, label %750

; <label>:703:                                    ; preds = %673
  %704 = load i8*, i8** %8, align 8
  %705 = load i8, i8* %704, align 1
  %706 = icmp eq i8 %705, 58
  %707 = icmp ne i8* %704, %675
  %708 = and i1 %707, %706
  %709 = and i64 %676, 4294967295
  %710 = icmp eq i64 %709, %676
  %711 = and i1 %710, %708
  br i1 %711, label %713, label %712

; <label>:712:                                    ; preds = %703, %673
  call void @llvm.lifetime.end(i64 8, i8* nonnull %46) #9
  br label %747

; <label>:713:                                    ; preds = %703
  %714 = trunc i64 %676 to i32
  call void @llvm.lifetime.end(i64 8, i8* nonnull %46) #9
  %715 = getelementptr inbounds i8, i8* %704, i64 1
  call void @llvm.lifetime.start(i64 8, i8* nonnull %46) #9
  store i32 0, i32* %659, align 4
  %716 = call i64 @strtoul(i8* %715, i8** nonnull %8, i32 16) #9
  %717 = load i32, i32* %659, align 4
  %718 = icmp eq i32 %717, 0
  br i1 %718, label %719, label %728

; <label>:719:                                    ; preds = %713
  %720 = load i8*, i8** %8, align 8
  %721 = load i8, i8* %720, align 1
  %722 = icmp eq i8 %721, 58
  %723 = icmp ne i8* %720, %715
  %724 = and i1 %723, %722
  %725 = and i64 %716, 4294967295
  %726 = icmp eq i64 %725, %716
  %727 = and i1 %726, %724
  br i1 %727, label %729, label %728

; <label>:728:                                    ; preds = %719, %713
  call void @llvm.lifetime.end(i64 8, i8* nonnull %46) #9
  br label %747

; <label>:729:                                    ; preds = %719
  %730 = trunc i64 %716 to i32
  call void @llvm.lifetime.end(i64 8, i8* nonnull %46) #9
  %731 = getelementptr inbounds i8, i8* %720, i64 1
  call void @llvm.lifetime.start(i64 8, i8* nonnull %46) #9
  store i32 0, i32* %659, align 4
  %732 = call i64 @strtoul(i8* %731, i8** nonnull %8, i32 16) #9
  %733 = load i32, i32* %659, align 4
  %734 = icmp eq i32 %733, 0
  br i1 %734, label %735, label %744

; <label>:735:                                    ; preds = %729
  %736 = load i8*, i8** %8, align 8
  %737 = load i8, i8* %736, align 1
  %738 = icmp eq i8 %737, 58
  %739 = icmp ne i8* %736, %731
  %740 = and i1 %739, %738
  %741 = and i64 %732, 4294967295
  %742 = icmp eq i64 %741, %732
  %743 = and i1 %742, %740
  br i1 %743, label %745, label %744

; <label>:744:                                    ; preds = %735, %729
  call void @llvm.lifetime.end(i64 8, i8* nonnull %46) #9
  br label %747

; <label>:745:                                    ; preds = %735
  %746 = trunc i64 %732 to i32
  call void @llvm.lifetime.end(i64 8, i8* nonnull %46) #9
  store i32 %674, i32* %17, align 4
  store i32 %714, i32* %36, align 4
  store i32 %730, i32* %16, align 4
  store i32 %746, i32* %37, align 4
  br label %679

; <label>:747:                                    ; preds = %698, %672, %712, %728, %744
  %748 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.132, i64 0, i64 0), i32 5) #9
  %749 = call i8* @quote(i8* %60) #9
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %748, i8* %749) #9
  call void @usage(i32 1) #15
  unreachable

; <label>:750:                                    ; preds = %699
  br label %751

; <label>:751:                                    ; preds = %750, %654
  store i8 1, i8* %6, align 1
  br label %752

; <label>:752:                                    ; preds = %447, %379, %510, %543, %600, %751, %628, %576, %523, %480, %639, %605, %553, %541, %521, %491, %461, %50, %64
  %753 = phi i32 [ %51, %64 ], [ %51, %50 ], [ %462, %461 ], [ %492, %491 ], [ %522, %521 ], [ %542, %541 ], [ %51, %553 ], [ %51, %605 ], [ %51, %639 ], [ %462, %480 ], [ %492, %510 ], [ %522, %523 ], [ %542, %543 ], [ %51, %576 ], [ %587, %600 ], [ %51, %628 ], [ %51, %751 ], [ %394, %447 ], [ %51, %379 ]
  %754 = add nsw i32 %753, 1
  %755 = icmp slt i32 %754, %3
  br i1 %755, label %50, label %48

; <label>:756:                                    ; preds = %383
  %757 = call i32 @strcmp(i8* %60, i8* nonnull getelementptr inbounds ([6 x i8], [6 x i8]* @.str.236, i64 0, i64 0)) #9
  %758 = icmp eq i32 %757, 0
  br i1 %758, label %386, label %759

; <label>:759:                                    ; preds = %756
  %760 = call i32 @strcmp(i8* %60, i8* nonnull getelementptr inbounds ([5 x i8], [5 x i8]* @.str.237, i64 0, i64 0)) #9
  %761 = icmp eq i32 %760, 0
  br i1 %761, label %386, label %762

; <label>:762:                                    ; preds = %759
  %763 = call i32 @strcmp(i8* %60, i8* nonnull getelementptr inbounds ([4 x i8], [4 x i8]* @.str.238, i64 0, i64 0)) #9
  %764 = icmp eq i32 %763, 0
  br i1 %764, label %386, label %765

; <label>:765:                                    ; preds = %762
  %766 = call i32 @strcmp(i8* %60, i8* nonnull getelementptr inbounds ([4 x i8], [4 x i8]* @.str.239, i64 0, i64 0)) #9
  %767 = icmp eq i32 %766, 0
  br i1 %767, label %386, label %768

; <label>:768:                                    ; preds = %765
  %769 = call i32 @strcmp(i8* %60, i8* nonnull getelementptr inbounds ([5 x i8], [5 x i8]* @.str.240, i64 0, i64 0)) #9
  %770 = icmp eq i32 %769, 0
  br i1 %770, label %386, label %771

; <label>:771:                                    ; preds = %768
  %772 = call i32 @strcmp(i8* %60, i8* nonnull getelementptr inbounds ([6 x i8], [6 x i8]* @.str.241, i64 0, i64 0)) #9
  %773 = icmp eq i32 %772, 0
  br i1 %773, label %386, label %774

; <label>:774:                                    ; preds = %771
  %775 = call i32 @strcmp(i8* %60, i8* nonnull getelementptr inbounds ([6 x i8], [6 x i8]* @.str.242, i64 0, i64 0)) #9
  %776 = icmp eq i32 %775, 0
  br i1 %776, label %386, label %777

; <label>:777:                                    ; preds = %774
  %778 = call i32 @strcmp(i8* %60, i8* nonnull getelementptr inbounds ([5 x i8], [5 x i8]* @.str.243, i64 0, i64 0)) #9
  %779 = icmp eq i32 %778, 0
  br i1 %779, label %386, label %780

; <label>:780:                                    ; preds = %777
  %781 = call i32 @strcmp(i8* %60, i8* nonnull getelementptr inbounds ([5 x i8], [5 x i8]* @.str.244, i64 0, i64 0)) #9
  %782 = icmp eq i32 %781, 0
  br i1 %782, label %386, label %783

; <label>:783:                                    ; preds = %780
  %784 = call i32 @strcmp(i8* %60, i8* nonnull getelementptr inbounds ([6 x i8], [6 x i8]* @.str.245, i64 0, i64 0)) #9
  %785 = icmp eq i32 %784, 0
  br i1 %785, label %386, label %786

; <label>:786:                                    ; preds = %783
  %787 = call i32 @strcmp(i8* %60, i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.246, i64 0, i64 0)) #9
  %788 = icmp eq i32 %787, 0
  br i1 %788, label %386, label %789

; <label>:789:                                    ; preds = %786
  %790 = call i32 @strcmp(i8* %60, i8* nonnull getelementptr inbounds ([6 x i8], [6 x i8]* @.str.247, i64 0, i64 0)) #9
  %791 = icmp eq i32 %790, 0
  br i1 %791, label %386, label %792

; <label>:792:                                    ; preds = %789
  %793 = call i32 @strcmp(i8* %60, i8* nonnull getelementptr inbounds ([6 x i8], [6 x i8]* @.str.248, i64 0, i64 0)) #9
  %794 = icmp eq i32 %793, 0
  br i1 %794, label %386, label %795

; <label>:795:                                    ; preds = %792
  %796 = call i32 @strcmp(i8* %60, i8* nonnull getelementptr inbounds ([8 x i8], [8 x i8]* @.str.249, i64 0, i64 0)) #9
  %797 = icmp eq i32 %796, 0
  br i1 %797, label %386, label %798

; <label>:798:                                    ; preds = %795
  %799 = call i32 @strcmp(i8* %60, i8* nonnull getelementptr inbounds ([4 x i8], [4 x i8]* @.str.250, i64 0, i64 0)) #9
  %800 = icmp eq i32 %799, 0
  br i1 %800, label %386, label %801

; <label>:801:                                    ; preds = %798
  %802 = call i32 @strcmp(i8* %60, i8* nonnull getelementptr inbounds ([5 x i8], [5 x i8]* @.str.251, i64 0, i64 0)) #9
  %803 = icmp eq i32 %802, 0
  br i1 %803, label %386, label %453
}

; Function Attrs: nounwind readnone
declare i32* @__errno_location() local_unnamed_addr #8

; Function Attrs: nounwind
declare i32 @tcgetattr(i32, %struct.termios*) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @ioctl(i32, i64, ...) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i8* @getenv(i8* nocapture) local_unnamed_addr #4

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #7

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @display_speed(%struct.termios*, i1 zeroext) unnamed_addr #6 {
  %3 = tail call i32 @cfgetispeed(%struct.termios* %0) #9
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %9, label %5

; <label>:5:                                      ; preds = %2
  %6 = tail call i32 @cfgetispeed(%struct.termios* %0) #9
  %7 = tail call i32 @cfgetospeed(%struct.termios* %0) #9
  %8 = icmp eq i32 %6, %7
  br i1 %8, label %9, label %30

; <label>:9:                                      ; preds = %5, %2
  %10 = select i1 %1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.259, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.260, i64 0, i64 0)
  %11 = tail call i32 @cfgetospeed(%struct.termios* %0) #9
  br label %17

; <label>:12:                                     ; preds = %17
  %13 = getelementptr inbounds [35 x %struct.speed_map], [35 x %struct.speed_map]* @speeds, i64 0, i64 %22, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = icmp eq i32 %14, %11
  %16 = add nsw i64 %18, 2
  br i1 %15, label %23, label %73

; <label>:17:                                     ; preds = %73, %9
  %18 = phi i64 [ 0, %9 ], [ %16, %73 ]
  %19 = getelementptr inbounds [35 x %struct.speed_map], [35 x %struct.speed_map]* @speeds, i64 0, i64 %18, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = icmp eq i32 %20, %11
  %22 = or i64 %18, 1
  br i1 %21, label %23, label %12

; <label>:23:                                     ; preds = %12, %17
  %24 = phi i64 [ %18, %17 ], [ %22, %12 ]
  %25 = getelementptr inbounds [35 x %struct.speed_map], [35 x %struct.speed_map]* @speeds, i64 0, i64 %24, i32 2
  %26 = load i64, i64* %25, align 8
  br label %28

; <label>:27:                                     ; preds = %73
  br label %28

; <label>:28:                                     ; preds = %27, %23
  %29 = phi i64 [ %26, %23 ], [ 0, %27 ]
  tail call void (i8*, ...) @wrapf(i8* %10, i64 %29)
  br label %70

; <label>:30:                                     ; preds = %5
  %31 = select i1 %1, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.261, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.262, i64 0, i64 0)
  %32 = tail call i32 @cfgetispeed(%struct.termios* %0) #9
  br label %38

; <label>:33:                                     ; preds = %38
  %34 = getelementptr inbounds [35 x %struct.speed_map], [35 x %struct.speed_map]* @speeds, i64 0, i64 %43, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = icmp eq i32 %35, %32
  %37 = add nsw i64 %39, 2
  br i1 %36, label %44, label %77

; <label>:38:                                     ; preds = %77, %30
  %39 = phi i64 [ 0, %30 ], [ %37, %77 ]
  %40 = getelementptr inbounds [35 x %struct.speed_map], [35 x %struct.speed_map]* @speeds, i64 0, i64 %39, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = icmp eq i32 %41, %32
  %43 = or i64 %39, 1
  br i1 %42, label %44, label %33

; <label>:44:                                     ; preds = %33, %38
  %45 = phi i64 [ %39, %38 ], [ %43, %33 ]
  %46 = getelementptr inbounds [35 x %struct.speed_map], [35 x %struct.speed_map]* @speeds, i64 0, i64 %45, i32 2
  %47 = load i64, i64* %46, align 8
  br label %49

; <label>:48:                                     ; preds = %77
  br label %49

; <label>:49:                                     ; preds = %48, %44
  %50 = phi i64 [ %47, %44 ], [ 0, %48 ]
  %51 = tail call i32 @cfgetospeed(%struct.termios* %0) #9
  br label %57

; <label>:52:                                     ; preds = %57
  %53 = getelementptr inbounds [35 x %struct.speed_map], [35 x %struct.speed_map]* @speeds, i64 0, i64 %62, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = icmp eq i32 %54, %51
  %56 = add nsw i64 %58, 2
  br i1 %55, label %63, label %75

; <label>:57:                                     ; preds = %75, %49
  %58 = phi i64 [ 0, %49 ], [ %56, %75 ]
  %59 = getelementptr inbounds [35 x %struct.speed_map], [35 x %struct.speed_map]* @speeds, i64 0, i64 %58, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = icmp eq i32 %60, %51
  %62 = or i64 %58, 1
  br i1 %61, label %63, label %52

; <label>:63:                                     ; preds = %52, %57
  %64 = phi i64 [ %58, %57 ], [ %62, %52 ]
  %65 = getelementptr inbounds [35 x %struct.speed_map], [35 x %struct.speed_map]* @speeds, i64 0, i64 %64, i32 2
  %66 = load i64, i64* %65, align 8
  br label %68

; <label>:67:                                     ; preds = %75
  br label %68

; <label>:68:                                     ; preds = %67, %63
  %69 = phi i64 [ %66, %63 ], [ 0, %67 ]
  tail call void (i8*, ...) @wrapf(i8* %31, i64 %50, i64 %69)
  br label %70

; <label>:70:                                     ; preds = %68, %28
  br i1 %1, label %72, label %71

; <label>:71:                                     ; preds = %70
  store i32 0, i32* @current_col, align 4
  br label %72

; <label>:72:                                     ; preds = %71, %70
  ret void

; <label>:73:                                     ; preds = %12
  %74 = icmp eq i64 %16, 34
  br i1 %74, label %27, label %17

; <label>:75:                                     ; preds = %52
  %76 = icmp eq i64 %56, 34
  br i1 %76, label %67, label %57

; <label>:77:                                     ; preds = %33
  %78 = icmp eq i64 %37, 34
  br i1 %78, label %48, label %38
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @wrapf(i8*, ...) unnamed_addr #6 {
  %2 = alloca [1 x %struct.__va_list_tag], align 16
  %3 = alloca i8*, align 8
  %4 = bitcast [1 x %struct.__va_list_tag]* %2 to i8*
  call void @llvm.lifetime.start(i64 24, i8* nonnull %4) #9
  %5 = bitcast i8** %3 to i8*
  call void @llvm.lifetime.start(i64 8, i8* nonnull %5) #9
  %6 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0
  call void @llvm.va_start(i8* nonnull %4)
  %7 = call i32 @__vasprintf_chk(i8** nonnull %3, i32 1, i8* %0, %struct.__va_list_tag* nonnull %6) #9
  call void @llvm.va_end(i8* nonnull %4)
  %8 = icmp slt i32 %7, 0
  br i1 %8, label %9, label %10

; <label>:9:                                      ; preds = %1
  call void @xalloc_die() #14
  unreachable

; <label>:10:                                     ; preds = %1
  %11 = load i32, i32* @current_col, align 4
  %12 = icmp sgt i32 %11, 0
  br i1 %12, label %13, label %39

; <label>:13:                                     ; preds = %10
  %14 = load i32, i32* @max_col, align 4
  %15 = sub nsw i32 %14, %11
  %16 = icmp slt i32 %15, %7
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %18 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %17, i64 0, i32 5
  %19 = load i8*, i8** %18, align 8
  %20 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %17, i64 0, i32 6
  %21 = load i8*, i8** %20, align 8
  %22 = icmp ult i8* %19, %21
  br i1 %16, label %23, label %28

; <label>:23:                                     ; preds = %13
  br i1 %22, label %26, label %24

; <label>:24:                                     ; preds = %23
  %25 = call i32 @__overflow(%struct._IO_FILE* %17, i32 10) #9
  br label %37

; <label>:26:                                     ; preds = %23
  %27 = getelementptr inbounds i8, i8* %19, i64 1
  store i8* %27, i8** %18, align 8
  store i8 10, i8* %19, align 1
  br label %37

; <label>:28:                                     ; preds = %13
  br i1 %22, label %32, label %29

; <label>:29:                                     ; preds = %28
  %30 = call i32 @__overflow(%struct._IO_FILE* %17, i32 32) #9
  %31 = load i32, i32* @current_col, align 4
  br label %34

; <label>:32:                                     ; preds = %28
  %33 = getelementptr inbounds i8, i8* %19, i64 1
  store i8* %33, i8** %18, align 8
  store i8 32, i8* %19, align 1
  br label %34

; <label>:34:                                     ; preds = %29, %32
  %35 = phi i32 [ %31, %29 ], [ %11, %32 ]
  %36 = add nsw i32 %35, 1
  br label %37

; <label>:37:                                     ; preds = %26, %24, %34
  %38 = phi i32 [ %36, %34 ], [ 0, %24 ], [ 0, %26 ]
  store i32 %38, i32* @current_col, align 4
  br label %39

; <label>:39:                                     ; preds = %37, %10
  %40 = load i8*, i8** %3, align 8
  %41 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %42 = call i32 @fputs_unlocked(i8* %40, %struct._IO_FILE* %41) #9
  %43 = load i8*, i8** %3, align 8
  call void @free(i8* %43) #9
  %44 = load i32, i32* @current_col, align 4
  %45 = add nsw i32 %44, %7
  store i32 %45, i32* @current_col, align 4
  call void @llvm.lifetime.end(i64 8, i8* nonnull %5) #9
  call void @llvm.lifetime.end(i64 24, i8* nonnull %4) #9
  ret void
}

declare i32 @__overflow(%struct._IO_FILE*, i32) local_unnamed_addr #3

; Function Attrs: noreturn nounwind
declare void @abort() local_unnamed_addr #5

; Function Attrs: noreturn nounwind
declare void @__assert_fail(i8*, i8*, i32, i8*) local_unnamed_addr #5

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @display_window_size(i1 zeroext, i8*) unnamed_addr #6 {
  %3 = alloca %struct.winsize, align 2
  %4 = bitcast %struct.winsize* %3 to i8*
  call void @llvm.lifetime.start(i64 8, i8* nonnull %4) #9
  %5 = call i32 (i32, i64, ...) @ioctl(i32 0, i64 21523, %struct.winsize* nonnull %3) #9
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %17, label %7

; <label>:7:                                      ; preds = %2
  %8 = tail call i32* @__errno_location() #1
  %9 = load i32, i32* %8, align 4
  %10 = icmp eq i32 %9, 22
  br i1 %10, label %13, label %11

; <label>:11:                                     ; preds = %7
  %12 = call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %1) #9
  call void (i32, i32, i8*, ...) @error(i32 1, i32 %9, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.108, i64 0, i64 0), i8* %12) #9
  unreachable

; <label>:13:                                     ; preds = %7
  br i1 %0, label %26, label %14

; <label>:14:                                     ; preds = %13
  %15 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.256, i64 0, i64 0), i32 5) #9
  %16 = call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %1) #9
  call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %15, i8* %16) #9
  unreachable

; <label>:17:                                     ; preds = %2
  %18 = select i1 %0, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.257, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.258, i64 0, i64 0)
  %19 = getelementptr inbounds %struct.winsize, %struct.winsize* %3, i64 0, i32 0
  %20 = load i16, i16* %19, align 2
  %21 = zext i16 %20 to i32
  %22 = getelementptr inbounds %struct.winsize, %struct.winsize* %3, i64 0, i32 1
  %23 = load i16, i16* %22, align 2
  %24 = zext i16 %23 to i32
  call void (i8*, ...) @wrapf(i8* %18, i32 %21, i32 %24)
  br i1 %0, label %26, label %25

; <label>:25:                                     ; preds = %17
  store i32 0, i32* @current_col, align 4
  br label %26

; <label>:26:                                     ; preds = %17, %25, %13
  call void @llvm.lifetime.end(i64 8, i8* nonnull %4) #9
  ret void
}

; Function Attrs: nounwind
declare i32 @tcsetattr(i32, i32, %struct.termios*) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @memcmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #4

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #9

; Function Attrs: nounwind
declare i32 @__vasprintf_chk(i8**, i32, i8*, %struct.__va_list_tag*) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #9

; Function Attrs: nounwind
declare void @free(i8* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @cfgetispeed(%struct.termios*) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @cfgetospeed(%struct.termios*) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @cfsetispeed(%struct.termios*, i32) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @cfsetospeed(%struct.termios*, i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @set_window_size(i32, i32, i8*) unnamed_addr #6 {
  %4 = alloca i64, align 8
  %5 = bitcast i64* %4 to %struct.winsize*
  %6 = bitcast i64* %4 to i8*
  call void @llvm.lifetime.start(i64 8, i8* nonnull %6) #9
  %7 = call i32 (i32, i64, ...) @ioctl(i32 0, i64 21523, i64* nonnull %4) #9
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %16, label %9

; <label>:9:                                      ; preds = %3
  %10 = tail call i32* @__errno_location() #1
  %11 = load i32, i32* %10, align 4
  %12 = icmp eq i32 %11, 22
  br i1 %12, label %15, label %13

; <label>:13:                                     ; preds = %9
  %14 = call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %2) #9
  call void (i32, i32, i8*, ...) @error(i32 1, i32 %11, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.108, i64 0, i64 0), i8* %14) #9
  unreachable

; <label>:15:                                     ; preds = %9
  store i64 0, i64* %4, align 8
  br label %16

; <label>:16:                                     ; preds = %3, %15
  %17 = icmp sgt i32 %0, -1
  br i1 %17, label %18, label %21

; <label>:18:                                     ; preds = %16
  %19 = trunc i32 %0 to i16
  %20 = bitcast i64* %4 to i16*
  store i16 %19, i16* %20, align 8
  br label %21

; <label>:21:                                     ; preds = %18, %16
  %22 = icmp sgt i32 %1, -1
  br i1 %22, label %23, label %26

; <label>:23:                                     ; preds = %21
  %24 = trunc i32 %1 to i16
  %25 = getelementptr inbounds %struct.winsize, %struct.winsize* %5, i64 0, i32 1
  store i16 %24, i16* %25, align 2
  br label %26

; <label>:26:                                     ; preds = %23, %21
  %27 = call i32 (i32, i64, ...) @ioctl(i32 0, i64 21524, i64* nonnull %4) #9
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %33, label %29

; <label>:29:                                     ; preds = %26
  %30 = tail call i32* @__errno_location() #1
  %31 = load i32, i32* %30, align 4
  %32 = call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %2) #9
  call void (i32, i32, i8*, ...) @error(i32 1, i32 %31, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.108, i64 0, i64 0), i8* %32) #9
  unreachable

; <label>:33:                                     ; preds = %26
  call void @llvm.lifetime.end(i64 8, i8* nonnull %6) #9
  ret void
}

; Function Attrs: nounwind
declare i64 @strtoul(i8* readonly, i8** nocapture, i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define void @close_stdout_set_file_name(i8*) local_unnamed_addr #6 {
  store i8* %0, i8** @file_name, align 8
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define void @close_stdout_set_ignore_EPIPE(i1 zeroext) local_unnamed_addr #6 {
  %2 = zext i1 %0 to i8
  store i8 %2, i8* @ignore_EPIPE, align 1
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define void @close_stdout() #6 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %2 = tail call i32 @close_stream(%struct._IO_FILE* %1) #9
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %21, label %4

; <label>:4:                                      ; preds = %0
  %5 = load i8, i8* @ignore_EPIPE, align 1
  %6 = icmp eq i8 %5, 0
  %7 = tail call i32* @__errno_location() #1
  br i1 %6, label %11, label %8

; <label>:8:                                      ; preds = %4
  %9 = load i32, i32* %7, align 4
  %10 = icmp eq i32 %9, 32
  br i1 %10, label %21, label %11

; <label>:11:                                     ; preds = %4, %8
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.115, i64 0, i64 0), i32 5) #9
  %13 = load i8*, i8** @file_name, align 8
  %14 = icmp eq i8* %13, null
  %15 = load i32, i32* %7, align 4
  br i1 %14, label %18, label %16

; <label>:16:                                     ; preds = %11
  %17 = tail call i8* @quotearg_colon(i8* nonnull %13) #9
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %15, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.116, i64 0, i64 0), i8* %17, i8* %12) #9
  br label %19

; <label>:18:                                     ; preds = %11
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %15, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2.117, i64 0, i64 0), i8* %12) #9
  br label %19

; <label>:19:                                     ; preds = %18, %16
  %20 = load volatile i32, i32* @exit_failure, align 4
  tail call void @_exit(i32 %20) #14
  unreachable

; <label>:21:                                     ; preds = %0, %8
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %23 = tail call i32 @close_stream(%struct._IO_FILE* %22) #9
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %27, label %25

; <label>:25:                                     ; preds = %21
  %26 = load volatile i32, i32* @exit_failure, align 4
  tail call void @_exit(i32 %26) #14
  unreachable

; <label>:27:                                     ; preds = %21
  ret void
}

; Function Attrs: noreturn
declare void @_exit(i32) local_unnamed_addr #10

; Function Attrs: nounwind sspstrong uwtable
define i32 @fd_reopen(i32, i8* nocapture readonly, i32, i32) local_unnamed_addr #6 {
  %5 = tail call i32 (i8*, i32, ...) @open(i8* %1, i32 %2, i32 %3) #9
  %6 = icmp eq i32 %5, %0
  %7 = icmp slt i32 %5, 0
  %8 = or i1 %6, %7
  br i1 %8, label %14, label %9

; <label>:9:                                      ; preds = %4
  %10 = tail call i32 @dup2(i32 %5, i32 %0) #9
  %11 = tail call i32* @__errno_location() #1
  %12 = load i32, i32* %11, align 4
  %13 = tail call i32 @close(i32 %5) #9
  store i32 %12, i32* %11, align 4
  br label %14

; <label>:14:                                     ; preds = %4, %9
  %15 = phi i32 [ %10, %9 ], [ %5, %4 ]
  ret i32 %15
}

declare i32 @open(i8* nocapture readonly, i32, ...) local_unnamed_addr #3

; Function Attrs: nounwind
declare i32 @dup2(i32, i32) local_unnamed_addr #2

declare i32 @close(i32) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define void @set_program_name(i8*) local_unnamed_addr #6 {
  %2 = icmp eq i8* %0, null
  br i1 %2, label %3, label %6

; <label>:3:                                      ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %5 = tail call i64 @fwrite(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.252, i64 0, i64 0), i64 55, i64 1, %struct._IO_FILE* %4) #16
  tail call void @abort() #14
  unreachable

; <label>:6:                                      ; preds = %1
  %7 = tail call i8* @strrchr(i8* nonnull %0, i32 47) #13
  %8 = icmp ne i8* %7, null
  %9 = getelementptr inbounds i8, i8* %7, i64 1
  %10 = select i1 %8, i8* %9, i8* %0
  %11 = ptrtoint i8* %10 to i64
  %12 = ptrtoint i8* %0 to i64
  %13 = sub i64 %11, %12
  %14 = icmp sgt i64 %13, 6
  br i1 %14, label %15, label %24

; <label>:15:                                     ; preds = %6
  %16 = getelementptr inbounds i8, i8* %10, i64 -7
  %17 = tail call i32 @strncmp(i8* %16, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1.253, i64 0, i64 0), i64 7) #13
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %24

; <label>:19:                                     ; preds = %15
  %20 = tail call i32 @strncmp(i8* %10, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.254, i64 0, i64 0), i64 3) #13
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %24

; <label>:22:                                     ; preds = %19
  %23 = getelementptr inbounds i8, i8* %10, i64 3
  store i8* %23, i8** @program_invocation_short_name, align 8
  br label %24

; <label>:24:                                     ; preds = %19, %22, %15, %6
  %25 = phi i8* [ %23, %22 ], [ %10, %19 ], [ %0, %15 ], [ %0, %6 ]
  store i8* %25, i8** @program_name, align 8
  store i8* %25, i8** @program_invocation_name, align 8
  ret void
}

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #9

; Function Attrs: nounwind readonly
declare i8* @strrchr(i8*, i32) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define %struct.quoting_options* @clone_quoting_options(%struct.quoting_options*) local_unnamed_addr #6 {
  %2 = tail call i32* @__errno_location() #1
  %3 = load i32, i32* %2, align 4
  %4 = icmp ne %struct.quoting_options* %0, null
  %5 = bitcast %struct.quoting_options* %0 to i8*
  %6 = select i1 %4, i8* %5, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*)
  %7 = tail call i8* @xmemdup(i8* %6, i64 56) #9
  %8 = bitcast i8* %7 to %struct.quoting_options*
  store i32 %3, i32* %2, align 4
  ret %struct.quoting_options* %8
}

; Function Attrs: nounwind readonly sspstrong uwtable
define i32 @get_quoting_style(%struct.quoting_options* readonly) local_unnamed_addr #11 {
  %2 = icmp ne %struct.quoting_options* %0, null
  %3 = select i1 %2, %struct.quoting_options* %0, %struct.quoting_options* @default_quoting_options
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0
  %5 = load i32, i32* %4, align 8
  ret i32 %5
}

; Function Attrs: nounwind sspstrong uwtable
define void @set_quoting_style(%struct.quoting_options*, i32) local_unnamed_addr #6 {
  %3 = icmp ne %struct.quoting_options* %0, null
  %4 = select i1 %3, %struct.quoting_options* %0, %struct.quoting_options* @default_quoting_options
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0
  store i32 %1, i32* %5, align 8
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @set_char_quoting(%struct.quoting_options*, i8 signext, i32) local_unnamed_addr #6 {
  %4 = icmp ne %struct.quoting_options* %0, null
  %5 = select i1 %4, %struct.quoting_options* %0, %struct.quoting_options* @default_quoting_options
  %6 = lshr i8 %1, 5
  %7 = zext i8 %6 to i64
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 %7
  %9 = and i8 %1, 31
  %10 = zext i8 %9 to i32
  %11 = load i32, i32* %8, align 4
  %12 = lshr i32 %11, %10
  %13 = and i32 %12, 1
  %14 = and i32 %2, 1
  %15 = xor i32 %13, %14
  %16 = shl i32 %15, %10
  %17 = xor i32 %16, %11
  store i32 %17, i32* %8, align 4
  ret i32 %13
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @set_quoting_flags(%struct.quoting_options*, i32) local_unnamed_addr #6 {
  %3 = icmp eq %struct.quoting_options* %0, null
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1
  %6 = load i32, i32* %5, align 4
  store i32 %1, i32* %5, align 4
  ret i32 %6
}

; Function Attrs: nounwind sspstrong uwtable
define void @set_custom_quoting(%struct.quoting_options*, i8*, i8*) local_unnamed_addr #6 {
  %4 = icmp eq %struct.quoting_options* %0, null
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0
  store i32 10, i32* %6, align 8
  %7 = icmp ne i8* %1, null
  %8 = icmp ne i8* %2, null
  %9 = and i1 %7, %8
  br i1 %9, label %11, label %10

; <label>:10:                                     ; preds = %3
  tail call void @abort() #14
  unreachable

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3
  store i8* %1, i8** %12, align 8
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4
  store i8* %2, i8** %13, align 8
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define i64 @quotearg_buffer(i8*, i64, i8*, i64, %struct.quoting_options* readonly) local_unnamed_addr #6 {
  %6 = icmp ne %struct.quoting_options* %4, null
  %7 = select i1 %6, %struct.quoting_options* %4, %struct.quoting_options* @default_quoting_options
  %8 = tail call i32* @__errno_location() #1
  %9 = load i32, i32* %8, align 4
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 2, i64 0
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 3
  %16 = load i8*, i8** %15, align 8
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 4
  %18 = load i8*, i8** %17, align 8
  %19 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %1, i8* %2, i64 %3, i32 %11, i32 %13, i32* %14, i8* %16, i8* %18)
  store i32 %9, i32* %8, align 4
  ret i64 %19
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @quotearg_buffer_restyled(i8*, i64, i8*, i64, i32, i32, i32* readonly, i8* readonly, i8* readonly) unnamed_addr #6 {
  %10 = alloca i64, align 8
  %11 = bitcast i64* %10 to %struct.__mbstate_t*
  %12 = alloca i32, align 4
  %13 = tail call i64 @__ctype_get_mb_cur_max() #9
  %14 = icmp eq i64 %13, 1
  %15 = lshr i32 %5, 1
  %16 = trunc i32 %15 to i8
  %17 = and i8 %16, 1
  %18 = bitcast i64* %10 to i8*
  %19 = bitcast i32* %12 to i8*
  %20 = icmp eq i32* %6, null
  %21 = icmp ne i32* %6, null
  %22 = and i32 %5, 1
  %23 = icmp eq i32 %22, 0
  %24 = and i32 %5, 4
  %25 = icmp eq i32 %24, 0
  %26 = getelementptr inbounds i8, i8* %2, i64 1
  br label %27

; <label>:27:                                     ; preds = %614, %9
  %28 = phi i32 [ %4, %9 ], [ %96, %614 ]
  %29 = phi i8* [ %7, %9 ], [ %97, %614 ]
  %30 = phi i8* [ %8, %9 ], [ %98, %614 ]
  %31 = phi i64 [ 0, %9 ], [ %126, %614 ]
  %32 = phi i8* [ null, %9 ], [ %100, %614 ]
  %33 = phi i64 [ 0, %9 ], [ %101, %614 ]
  %34 = phi i8 [ 0, %9 ], [ %102, %614 ]
  %35 = phi i64 [ %3, %9 ], [ %598, %614 ]
  %36 = phi i8 [ %17, %9 ], [ %103, %614 ]
  %37 = phi i8 [ 0, %9 ], [ %128, %614 ]
  %38 = phi i8 [ 0, %9 ], [ %129, %614 ]
  %39 = phi i8 [ 1, %9 ], [ %130, %614 ]
  %40 = phi i64 [ %1, %9 ], [ %126, %614 ]
  switch i32 %28, label %94 [
    i32 6, label %41
    i32 5, label %42
    i32 7, label %95
    i32 0, label %93
    i32 2, label %85
    i32 4, label %79
    i32 3, label %76
    i32 1, label %77
    i32 10, label %51
    i32 8, label %48
    i32 9, label %48
  ]

; <label>:41:                                     ; preds = %27
  br label %95

; <label>:42:                                     ; preds = %27
  %43 = and i8 %36, 1
  %44 = icmp eq i8 %43, 0
  br i1 %44, label %45, label %95

; <label>:45:                                     ; preds = %42
  %46 = icmp eq i64 %40, 0
  br i1 %46, label %95, label %47

; <label>:47:                                     ; preds = %45
  store i8 34, i8* %0, align 1
  br label %95

; <label>:48:                                     ; preds = %27, %27
  %49 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.316, i64 0, i64 0), i32 %28)
  %50 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.317, i64 0, i64 0), i32 %28)
  br label %51

; <label>:51:                                     ; preds = %27, %48
  %52 = phi i8* [ %49, %48 ], [ %29, %27 ]
  %53 = phi i8* [ %50, %48 ], [ %30, %27 ]
  %54 = and i8 %36, 1
  %55 = icmp eq i8 %54, 0
  br i1 %55, label %56, label %73

; <label>:56:                                     ; preds = %51
  %57 = load i8, i8* %52, align 1
  %58 = icmp eq i8 %57, 0
  br i1 %58, label %73, label %59

; <label>:59:                                     ; preds = %56
  br label %60

; <label>:60:                                     ; preds = %59, %67
  %61 = phi i8 [ %70, %67 ], [ %57, %59 ]
  %62 = phi i8* [ %69, %67 ], [ %52, %59 ]
  %63 = phi i64 [ %68, %67 ], [ 0, %59 ]
  %64 = icmp ult i64 %63, %40
  br i1 %64, label %65, label %67

; <label>:65:                                     ; preds = %60
  %66 = getelementptr inbounds i8, i8* %0, i64 %63
  store i8 %61, i8* %66, align 1
  br label %67

; <label>:67:                                     ; preds = %65, %60
  %68 = add i64 %63, 1
  %69 = getelementptr inbounds i8, i8* %62, i64 1
  %70 = load i8, i8* %69, align 1
  %71 = icmp eq i8 %70, 0
  br i1 %71, label %72, label %60

; <label>:72:                                     ; preds = %67
  br label %73

; <label>:73:                                     ; preds = %72, %56, %51
  %74 = phi i64 [ 0, %51 ], [ 0, %56 ], [ %68, %72 ]
  %75 = call i64 @strlen(i8* %53) #13
  br label %95

; <label>:76:                                     ; preds = %27
  br label %77

; <label>:77:                                     ; preds = %27, %76
  %78 = phi i8 [ %34, %27 ], [ 1, %76 ]
  br label %79

; <label>:79:                                     ; preds = %27, %77
  %80 = phi i8 [ %34, %27 ], [ %78, %77 ]
  %81 = phi i8 [ %36, %27 ], [ 1, %77 ]
  %82 = and i8 %81, 1
  %83 = icmp eq i8 %82, 0
  %84 = select i1 %83, i8 1, i8 %80
  br label %85

; <label>:85:                                     ; preds = %79, %27
  %86 = phi i8 [ %34, %27 ], [ %84, %79 ]
  %87 = phi i8 [ %36, %27 ], [ %81, %79 ]
  %88 = and i8 %87, 1
  %89 = icmp eq i8 %88, 0
  br i1 %89, label %90, label %95

; <label>:90:                                     ; preds = %85
  %91 = icmp eq i64 %40, 0
  br i1 %91, label %95, label %92

; <label>:92:                                     ; preds = %90
  store i8 39, i8* %0, align 1
  br label %95

; <label>:93:                                     ; preds = %27
  br label %95

; <label>:94:                                     ; preds = %27
  call void @abort() #14
  unreachable

; <label>:95:                                     ; preds = %41, %85, %90, %92, %27, %42, %45, %47, %93, %73
  %96 = phi i32 [ 0, %93 ], [ %28, %73 ], [ 5, %47 ], [ 5, %45 ], [ 5, %42 ], [ 7, %27 ], [ 2, %92 ], [ 2, %90 ], [ 2, %85 ], [ 5, %41 ]
  %97 = phi i8* [ %29, %93 ], [ %52, %73 ], [ %29, %47 ], [ %29, %45 ], [ %29, %42 ], [ %29, %27 ], [ %29, %92 ], [ %29, %90 ], [ %29, %85 ], [ %29, %41 ]
  %98 = phi i8* [ %30, %93 ], [ %53, %73 ], [ %30, %47 ], [ %30, %45 ], [ %30, %42 ], [ %30, %27 ], [ %30, %92 ], [ %30, %90 ], [ %30, %85 ], [ %30, %41 ]
  %99 = phi i64 [ 0, %93 ], [ %74, %73 ], [ 1, %47 ], [ 1, %45 ], [ 0, %42 ], [ 0, %27 ], [ 1, %92 ], [ 1, %90 ], [ 0, %85 ], [ 0, %41 ]
  %100 = phi i8* [ %32, %93 ], [ %53, %73 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.318, i64 0, i64 0), %47 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.318, i64 0, i64 0), %45 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.318, i64 0, i64 0), %42 ], [ %32, %27 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.317, i64 0, i64 0), %92 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.317, i64 0, i64 0), %90 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.317, i64 0, i64 0), %85 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.318, i64 0, i64 0), %41 ]
  %101 = phi i64 [ %33, %93 ], [ %75, %73 ], [ 1, %47 ], [ 1, %45 ], [ 1, %42 ], [ %33, %27 ], [ 1, %92 ], [ 1, %90 ], [ 1, %85 ], [ 1, %41 ]
  %102 = phi i8 [ %34, %93 ], [ 1, %73 ], [ 1, %47 ], [ 1, %45 ], [ 1, %42 ], [ 1, %27 ], [ %86, %92 ], [ %86, %90 ], [ %86, %85 ], [ 1, %41 ]
  %103 = phi i8 [ 0, %93 ], [ %36, %73 ], [ %36, %47 ], [ %36, %45 ], [ %36, %42 ], [ 0, %27 ], [ %87, %92 ], [ %87, %90 ], [ %87, %85 ], [ 1, %41 ]
  %104 = and i8 %102, 1
  %105 = icmp ne i8 %104, 0
  %106 = icmp ne i32 %96, 2
  %107 = and i1 %106, %105
  %108 = icmp ne i64 %101, 0
  %109 = and i1 %108, %107
  %110 = icmp ugt i64 %101, 1
  %111 = and i8 %103, 1
  %112 = icmp eq i8 %111, 0
  %113 = xor i1 %105, true
  %114 = icmp eq i32 %96, 2
  %115 = icmp ne i8 %111, 0
  %116 = and i1 %114, %115
  %117 = and i1 %21, %115
  %118 = or i1 %106, %112
  %119 = and i8 %102, %103
  %120 = and i8 %119, 1
  %121 = icmp ne i8 %120, 0
  %122 = and i1 %121, %108
  br label %123

; <label>:123:                                    ; preds = %587, %95
  %124 = phi i64 [ 0, %95 ], [ %596, %587 ]
  %125 = phi i64 [ %99, %95 ], [ %589, %587 ]
  %126 = phi i64 [ %31, %95 ], [ %590, %587 ]
  %127 = phi i64 [ %35, %95 ], [ %591, %587 ]
  %128 = phi i8 [ %37, %95 ], [ %592, %587 ]
  %129 = phi i8 [ %38, %95 ], [ %593, %587 ]
  %130 = phi i8 [ %39, %95 ], [ %594, %587 ]
  %131 = phi i64 [ %40, %95 ], [ %595, %587 ]
  %132 = icmp eq i64 %127, -1
  br i1 %132, label %135, label %133

; <label>:133:                                    ; preds = %123
  %134 = icmp eq i64 %124, %127
  br i1 %134, label %597, label %139

; <label>:135:                                    ; preds = %123
  %136 = getelementptr inbounds i8, i8* %2, i64 %124
  %137 = load i8, i8* %136, align 1
  %138 = icmp eq i8 %137, 0
  br i1 %138, label %597, label %139

; <label>:139:                                    ; preds = %133, %135
  br i1 %109, label %140, label %155

; <label>:140:                                    ; preds = %139
  %141 = add i64 %124, %101
  %142 = and i1 %110, %132
  br i1 %142, label %143, label %145

; <label>:143:                                    ; preds = %140
  %144 = call i64 @strlen(i8* %2) #13
  br label %145

; <label>:145:                                    ; preds = %140, %143
  %146 = phi i64 [ %144, %143 ], [ %127, %140 ]
  %147 = icmp ugt i64 %141, %146
  br i1 %147, label %155, label %148

; <label>:148:                                    ; preds = %145
  %149 = getelementptr inbounds i8, i8* %2, i64 %124
  %150 = call i32 @memcmp(i8* %149, i8* %100, i64 %101) #13
  %151 = icmp ne i32 %150, 0
  %152 = or i1 %151, %112
  %153 = xor i1 %151, true
  %154 = zext i1 %153 to i8
  br i1 %152, label %155, label %644

; <label>:155:                                    ; preds = %148, %145, %139
  %156 = phi i64 [ %146, %148 ], [ %146, %145 ], [ %127, %139 ]
  %157 = phi i8 [ %154, %148 ], [ 0, %145 ], [ 0, %139 ]
  %158 = getelementptr inbounds i8, i8* %2, i64 %124
  %159 = load i8, i8* %158, align 1
  switch i8 %159, label %298 [
    i8 0, label %160
    i8 63, label %210
    i8 7, label %257
    i8 8, label %247
    i8 12, label %248
    i8 10, label %255
    i8 13, label %249
    i8 9, label %250
    i8 11, label %251
    i8 92, label %252
    i8 123, label %259
    i8 125, label %259
    i8 35, label %270
    i8 126, label %270
    i8 32, label %272
    i8 33, label %273
    i8 34, label %273
    i8 36, label %273
    i8 38, label %273
    i8 40, label %273
    i8 41, label %273
    i8 42, label %273
    i8 59, label %273
    i8 60, label %273
    i8 61, label %273
    i8 62, label %273
    i8 91, label %273
    i8 94, label %273
    i8 96, label %273
    i8 124, label %273
    i8 39, label %275
    i8 37, label %476
    i8 43, label %476
    i8 44, label %476
    i8 45, label %476
    i8 46, label %476
    i8 47, label %476
    i8 48, label %476
    i8 49, label %476
    i8 50, label %476
    i8 51, label %476
    i8 52, label %476
    i8 53, label %476
    i8 54, label %476
    i8 55, label %476
    i8 56, label %476
    i8 57, label %476
    i8 58, label %476
    i8 65, label %476
    i8 66, label %476
    i8 67, label %476
    i8 68, label %476
    i8 69, label %476
    i8 70, label %476
    i8 71, label %476
    i8 72, label %476
    i8 73, label %476
    i8 74, label %476
    i8 75, label %476
    i8 76, label %476
    i8 77, label %476
    i8 78, label %476
    i8 79, label %476
    i8 80, label %476
    i8 81, label %476
    i8 82, label %476
    i8 83, label %476
    i8 84, label %476
    i8 85, label %476
    i8 86, label %476
    i8 87, label %476
    i8 88, label %476
    i8 89, label %476
    i8 90, label %476
    i8 93, label %476
    i8 95, label %476
    i8 97, label %476
    i8 98, label %476
    i8 99, label %476
    i8 100, label %476
    i8 101, label %476
    i8 102, label %476
    i8 103, label %476
    i8 104, label %476
    i8 105, label %476
    i8 106, label %476
    i8 107, label %476
    i8 108, label %476
    i8 109, label %476
    i8 110, label %476
    i8 111, label %476
    i8 112, label %476
    i8 113, label %476
    i8 114, label %476
    i8 115, label %476
    i8 116, label %476
    i8 117, label %476
    i8 118, label %476
    i8 119, label %476
    i8 120, label %476
    i8 121, label %476
    i8 122, label %476
  ]

; <label>:160:                                    ; preds = %155
  br i1 %105, label %161, label %209

; <label>:161:                                    ; preds = %160
  br i1 %112, label %162, label %644

; <label>:162:                                    ; preds = %161
  %163 = and i8 %128, 1
  %164 = icmp eq i8 %163, 0
  %165 = and i1 %114, %164
  br i1 %165, label %166, label %182

; <label>:166:                                    ; preds = %162
  %167 = icmp ult i64 %125, %131
  br i1 %167, label %168, label %170

; <label>:168:                                    ; preds = %166
  %169 = getelementptr inbounds i8, i8* %0, i64 %125
  store i8 39, i8* %169, align 1
  br label %170

; <label>:170:                                    ; preds = %168, %166
  %171 = add i64 %125, 1
  %172 = icmp ult i64 %171, %131
  br i1 %172, label %173, label %175

; <label>:173:                                    ; preds = %170
  %174 = getelementptr inbounds i8, i8* %0, i64 %171
  store i8 36, i8* %174, align 1
  br label %175

; <label>:175:                                    ; preds = %173, %170
  %176 = add i64 %125, 2
  %177 = icmp ult i64 %176, %131
  br i1 %177, label %178, label %180

; <label>:178:                                    ; preds = %175
  %179 = getelementptr inbounds i8, i8* %0, i64 %176
  store i8 39, i8* %179, align 1
  br label %180

; <label>:180:                                    ; preds = %178, %175
  %181 = add i64 %125, 3
  br label %182

; <label>:182:                                    ; preds = %162, %180
  %183 = phi i64 [ %181, %180 ], [ %125, %162 ]
  %184 = phi i8 [ 1, %180 ], [ %128, %162 ]
  %185 = icmp ult i64 %183, %131
  br i1 %185, label %186, label %188

; <label>:186:                                    ; preds = %182
  %187 = getelementptr inbounds i8, i8* %0, i64 %183
  store i8 92, i8* %187, align 1
  br label %188

; <label>:188:                                    ; preds = %186, %182
  %189 = add i64 %183, 1
  br i1 %106, label %190, label %476

; <label>:190:                                    ; preds = %188
  %191 = add i64 %124, 1
  %192 = icmp ult i64 %191, %156
  br i1 %192, label %193, label %476

; <label>:193:                                    ; preds = %190
  %194 = getelementptr inbounds i8, i8* %2, i64 %191
  %195 = load i8, i8* %194, align 1
  %196 = add i8 %195, -48
  %197 = icmp ult i8 %196, 10
  br i1 %197, label %198, label %476

; <label>:198:                                    ; preds = %193
  %199 = icmp ult i64 %189, %131
  br i1 %199, label %200, label %202

; <label>:200:                                    ; preds = %198
  %201 = getelementptr inbounds i8, i8* %0, i64 %189
  store i8 48, i8* %201, align 1
  br label %202

; <label>:202:                                    ; preds = %200, %198
  %203 = add i64 %183, 2
  %204 = icmp ult i64 %203, %131
  br i1 %204, label %205, label %207

; <label>:205:                                    ; preds = %202
  %206 = getelementptr inbounds i8, i8* %0, i64 %203
  store i8 48, i8* %206, align 1
  br label %207

; <label>:207:                                    ; preds = %205, %202
  %208 = add i64 %183, 3
  br label %476

; <label>:209:                                    ; preds = %160
  br i1 %23, label %476, label %587

; <label>:210:                                    ; preds = %155
  switch i32 %96, label %476 [
    i32 2, label %211
    i32 5, label %212
  ]

; <label>:211:                                    ; preds = %210
  br i1 %112, label %476, label %644

; <label>:212:                                    ; preds = %210
  br i1 %25, label %476, label %213

; <label>:213:                                    ; preds = %212
  %214 = add i64 %124, 2
  %215 = icmp ult i64 %214, %156
  br i1 %215, label %216, label %476

; <label>:216:                                    ; preds = %213
  %217 = add i64 %124, 1
  %218 = getelementptr inbounds i8, i8* %2, i64 %217
  %219 = load i8, i8* %218, align 1
  %220 = icmp eq i8 %219, 63
  br i1 %220, label %221, label %476

; <label>:221:                                    ; preds = %216
  %222 = getelementptr inbounds i8, i8* %2, i64 %214
  %223 = load i8, i8* %222, align 1
  %224 = sext i8 %223 to i32
  switch i32 %224, label %476 [
    i32 33, label %225
    i32 39, label %225
    i32 40, label %225
    i32 41, label %225
    i32 45, label %225
    i32 47, label %225
    i32 60, label %225
    i32 61, label %225
    i32 62, label %225
  ]

; <label>:225:                                    ; preds = %221, %221, %221, %221, %221, %221, %221, %221, %221
  br i1 %112, label %226, label %644

; <label>:226:                                    ; preds = %225
  %227 = icmp ult i64 %125, %131
  br i1 %227, label %228, label %230

; <label>:228:                                    ; preds = %226
  %229 = getelementptr inbounds i8, i8* %0, i64 %125
  store i8 63, i8* %229, align 1
  br label %230

; <label>:230:                                    ; preds = %228, %226
  %231 = add i64 %125, 1
  %232 = icmp ult i64 %231, %131
  br i1 %232, label %233, label %235

; <label>:233:                                    ; preds = %230
  %234 = getelementptr inbounds i8, i8* %0, i64 %231
  store i8 34, i8* %234, align 1
  br label %235

; <label>:235:                                    ; preds = %233, %230
  %236 = add i64 %125, 2
  %237 = icmp ult i64 %236, %131
  br i1 %237, label %238, label %240

; <label>:238:                                    ; preds = %235
  %239 = getelementptr inbounds i8, i8* %0, i64 %236
  store i8 34, i8* %239, align 1
  br label %240

; <label>:240:                                    ; preds = %238, %235
  %241 = add i64 %125, 3
  %242 = icmp ult i64 %241, %131
  br i1 %242, label %243, label %245

; <label>:243:                                    ; preds = %240
  %244 = getelementptr inbounds i8, i8* %0, i64 %241
  store i8 63, i8* %244, align 1
  br label %245

; <label>:245:                                    ; preds = %243, %240
  %246 = add i64 %125, 4
  br label %476

; <label>:247:                                    ; preds = %155
  br label %257

; <label>:248:                                    ; preds = %155
  br label %257

; <label>:249:                                    ; preds = %155
  br label %255

; <label>:250:                                    ; preds = %155
  br label %255

; <label>:251:                                    ; preds = %155
  br label %257

; <label>:252:                                    ; preds = %155
  br i1 %114, label %253, label %254

; <label>:253:                                    ; preds = %252
  br i1 %112, label %542, label %644

; <label>:254:                                    ; preds = %252
  br i1 %122, label %542, label %255

; <label>:255:                                    ; preds = %254, %155, %250, %249
  %256 = phi i8 [ 92, %254 ], [ 116, %250 ], [ 114, %249 ], [ 110, %155 ]
  br i1 %118, label %257, label %644

; <label>:257:                                    ; preds = %255, %155, %251, %248, %247
  %258 = phi i8 [ %256, %255 ], [ 118, %251 ], [ 102, %248 ], [ 98, %247 ], [ 97, %155 ]
  br i1 %105, label %503, label %476

; <label>:259:                                    ; preds = %155, %155
  %260 = icmp eq i64 %156, -1
  br i1 %260, label %261, label %266

; <label>:261:                                    ; preds = %259
  %262 = load i8, i8* %26, align 1
  %263 = icmp ne i8 %262, 0
  %264 = icmp ne i64 %124, 0
  %265 = or i1 %264, %263
  br i1 %265, label %476, label %272

; <label>:266:                                    ; preds = %259
  %267 = icmp ne i64 %156, 1
  %268 = icmp ne i64 %124, 0
  %269 = or i1 %268, %267
  br i1 %269, label %476, label %272

; <label>:270:                                    ; preds = %155, %155
  %271 = icmp eq i64 %124, 0
  br i1 %271, label %272, label %476

; <label>:272:                                    ; preds = %270, %266, %261, %155
  br label %273

; <label>:273:                                    ; preds = %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %272
  %274 = phi i8 [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 1, %272 ]
  br i1 %118, label %476, label %644

; <label>:275:                                    ; preds = %155
  br i1 %114, label %276, label %476

; <label>:276:                                    ; preds = %275
  br i1 %112, label %277, label %644

; <label>:277:                                    ; preds = %276
  %278 = icmp eq i64 %131, 0
  %279 = icmp ne i64 %126, 0
  %280 = or i1 %279, %278
  %281 = select i1 %280, i64 %126, i64 %131
  %282 = select i1 %280, i64 %131, i64 0
  %283 = icmp ult i64 %125, %282
  br i1 %283, label %284, label %286

; <label>:284:                                    ; preds = %277
  %285 = getelementptr inbounds i8, i8* %0, i64 %125
  store i8 39, i8* %285, align 1
  br label %286

; <label>:286:                                    ; preds = %284, %277
  %287 = add i64 %125, 1
  %288 = icmp ult i64 %287, %282
  br i1 %288, label %289, label %291

; <label>:289:                                    ; preds = %286
  %290 = getelementptr inbounds i8, i8* %0, i64 %287
  store i8 92, i8* %290, align 1
  br label %291

; <label>:291:                                    ; preds = %289, %286
  %292 = add i64 %125, 2
  %293 = icmp ult i64 %292, %282
  br i1 %293, label %294, label %296

; <label>:294:                                    ; preds = %291
  %295 = getelementptr inbounds i8, i8* %0, i64 %292
  store i8 39, i8* %295, align 1
  br label %296

; <label>:296:                                    ; preds = %294, %291
  %297 = add i64 %125, 3
  br label %476

; <label>:298:                                    ; preds = %155
  br i1 %14, label %299, label %308

; <label>:299:                                    ; preds = %298
  %300 = tail call i16** @__ctype_b_loc() #1
  %301 = load i16*, i16** %300, align 8
  %302 = zext i8 %159 to i64
  %303 = getelementptr inbounds i16, i16* %301, i64 %302
  %304 = load i16, i16* %303, align 2
  %305 = lshr i16 %304, 14
  %306 = trunc i16 %305 to i8
  %307 = and i8 %306, 1
  br label %368

; <label>:308:                                    ; preds = %298
  call void @llvm.lifetime.start(i64 8, i8* nonnull %18) #9
  store i64 0, i64* %10, align 8
  %309 = icmp eq i64 %156, -1
  br i1 %309, label %310, label %312

; <label>:310:                                    ; preds = %308
  %311 = call i64 @strlen(i8* nonnull %2) #13
  br label %312

; <label>:312:                                    ; preds = %310, %308
  %313 = phi i64 [ %156, %308 ], [ %311, %310 ]
  br label %314

; <label>:314:                                    ; preds = %312, %355
  %315 = phi i64 [ %360, %355 ], [ 0, %312 ]
  %316 = phi i8 [ %359, %355 ], [ 1, %312 ]
  call void @llvm.lifetime.start(i64 4, i8* nonnull %19) #9
  %317 = add i64 %315, %124
  %318 = getelementptr inbounds i8, i8* %2, i64 %317
  %319 = sub i64 %313, %317
  %320 = call i64 @rpl_mbrtowc(i32* nonnull %12, i8* %318, i64 %319, %struct.__mbstate_t* nonnull %11) #9
  switch i64 %320, label %334 [
    i64 0, label %350
    i64 -1, label %347
    i64 -2, label %321
  ]

; <label>:321:                                    ; preds = %314
  %322 = icmp ugt i64 %313, %317
  br i1 %322, label %323, label %351

; <label>:323:                                    ; preds = %321
  br label %324

; <label>:324:                                    ; preds = %323, %330
  %325 = phi i64 [ %332, %330 ], [ %317, %323 ]
  %326 = phi i64 [ %331, %330 ], [ %315, %323 ]
  %327 = getelementptr inbounds i8, i8* %2, i64 %325
  %328 = load i8, i8* %327, align 1
  %329 = icmp eq i8 %328, 0
  br i1 %329, label %348, label %330

; <label>:330:                                    ; preds = %324
  %331 = add i64 %326, 1
  %332 = add i64 %331, %124
  %333 = icmp ult i64 %332, %313
  br i1 %333, label %324, label %348

; <label>:334:                                    ; preds = %314
  %335 = icmp ugt i64 %320, 1
  %336 = and i1 %116, %335
  br i1 %336, label %337, label %355

; <label>:337:                                    ; preds = %334
  br label %338

; <label>:338:                                    ; preds = %337, %344
  %339 = phi i64 [ %345, %344 ], [ 1, %337 ]
  %340 = add i64 %339, %317
  %341 = getelementptr inbounds i8, i8* %2, i64 %340
  %342 = load i8, i8* %341, align 1
  %343 = sext i8 %342 to i32
  switch i32 %343, label %344 [
    i32 91, label %367
    i32 92, label %367
    i32 94, label %367
    i32 96, label %367
    i32 124, label %367
  ]

; <label>:344:                                    ; preds = %338
  %345 = add nuw i64 %339, 1
  %346 = icmp ult i64 %345, %320
  br i1 %346, label %338, label %354

; <label>:347:                                    ; preds = %314
  br label %351

; <label>:348:                                    ; preds = %324, %330
  %349 = phi i64 [ %331, %330 ], [ %326, %324 ]
  br label %351

; <label>:350:                                    ; preds = %314
  br label %351

; <label>:351:                                    ; preds = %350, %348, %347, %321
  %352 = phi i64 [ %315, %321 ], [ %315, %347 ], [ %349, %348 ], [ %315, %350 ]
  %353 = phi i8 [ 0, %321 ], [ 0, %347 ], [ 0, %348 ], [ %316, %350 ]
  call void @llvm.lifetime.end(i64 4, i8* nonnull %19) #9
  br label %364

; <label>:354:                                    ; preds = %344
  br label %355

; <label>:355:                                    ; preds = %354, %334
  %356 = load i32, i32* %12, align 4
  %357 = call i32 @iswprint(i32 %356) #9
  %358 = icmp eq i32 %357, 0
  %359 = select i1 %358, i8 0, i8 %316
  %360 = add i64 %320, %315
  call void @llvm.lifetime.end(i64 4, i8* nonnull %19) #9
  %361 = call i32 @mbsinit(%struct.__mbstate_t* nonnull %11) #13
  %362 = icmp eq i32 %361, 0
  br i1 %362, label %314, label %363

; <label>:363:                                    ; preds = %355
  br label %364

; <label>:364:                                    ; preds = %363, %351
  %365 = phi i8 [ %353, %351 ], [ %359, %363 ]
  %366 = phi i64 [ %352, %351 ], [ %360, %363 ]
  call void @llvm.lifetime.end(i64 8, i8* nonnull %18) #9
  br label %368

; <label>:367:                                    ; preds = %338, %338, %338, %338, %338
  call void @llvm.lifetime.end(i64 4, i8* nonnull %19) #9
  call void @llvm.lifetime.end(i64 8, i8* nonnull %18) #9
  br label %649

; <label>:368:                                    ; preds = %364, %299
  %369 = phi i64 [ %156, %299 ], [ %313, %364 ]
  %370 = phi i64 [ 1, %299 ], [ %366, %364 ]
  %371 = phi i8 [ %307, %299 ], [ %365, %364 ]
  %372 = and i8 %371, 1
  %373 = icmp ne i8 %372, 0
  %374 = icmp ult i64 %370, 2
  %375 = or i1 %373, %113
  %376 = and i1 %374, %375
  br i1 %376, label %476, label %377

; <label>:377:                                    ; preds = %368
  %378 = add i64 %370, %124
  br label %379

; <label>:379:                                    ; preds = %472, %377
  %380 = phi i64 [ %124, %377 ], [ %447, %472 ]
  %381 = phi i64 [ %125, %377 ], [ %473, %472 ]
  %382 = phi i8 [ %128, %377 ], [ %468, %472 ]
  %383 = phi i8 [ %159, %377 ], [ %475, %472 ]
  %384 = phi i8 [ %157, %377 ], [ %445, %472 ]
  %385 = phi i8 [ 0, %377 ], [ %446, %472 ]
  br i1 %375, label %432, label %386

; <label>:386:                                    ; preds = %379
  br i1 %112, label %387, label %643

; <label>:387:                                    ; preds = %386
  %388 = and i8 %382, 1
  %389 = icmp eq i8 %388, 0
  %390 = and i1 %114, %389
  br i1 %390, label %391, label %407

; <label>:391:                                    ; preds = %387
  %392 = icmp ult i64 %381, %131
  br i1 %392, label %393, label %395

; <label>:393:                                    ; preds = %391
  %394 = getelementptr inbounds i8, i8* %0, i64 %381
  store i8 39, i8* %394, align 1
  br label %395

; <label>:395:                                    ; preds = %393, %391
  %396 = add i64 %381, 1
  %397 = icmp ult i64 %396, %131
  br i1 %397, label %398, label %400

; <label>:398:                                    ; preds = %395
  %399 = getelementptr inbounds i8, i8* %0, i64 %396
  store i8 36, i8* %399, align 1
  br label %400

; <label>:400:                                    ; preds = %398, %395
  %401 = add i64 %381, 2
  %402 = icmp ult i64 %401, %131
  br i1 %402, label %403, label %405

; <label>:403:                                    ; preds = %400
  %404 = getelementptr inbounds i8, i8* %0, i64 %401
  store i8 39, i8* %404, align 1
  br label %405

; <label>:405:                                    ; preds = %403, %400
  %406 = add i64 %381, 3
  br label %407

; <label>:407:                                    ; preds = %387, %405
  %408 = phi i64 [ %406, %405 ], [ %381, %387 ]
  %409 = phi i8 [ 1, %405 ], [ %382, %387 ]
  %410 = icmp ult i64 %408, %131
  br i1 %410, label %411, label %413

; <label>:411:                                    ; preds = %407
  %412 = getelementptr inbounds i8, i8* %0, i64 %408
  store i8 92, i8* %412, align 1
  br label %413

; <label>:413:                                    ; preds = %411, %407
  %414 = add i64 %408, 1
  %415 = icmp ult i64 %414, %131
  br i1 %415, label %416, label %420

; <label>:416:                                    ; preds = %413
  %417 = lshr i8 %383, 6
  %418 = or i8 %417, 48
  %419 = getelementptr inbounds i8, i8* %0, i64 %414
  store i8 %418, i8* %419, align 1
  br label %420

; <label>:420:                                    ; preds = %416, %413
  %421 = add i64 %408, 2
  %422 = icmp ult i64 %421, %131
  br i1 %422, label %423, label %428

; <label>:423:                                    ; preds = %420
  %424 = lshr i8 %383, 3
  %425 = and i8 %424, 7
  %426 = or i8 %425, 48
  %427 = getelementptr inbounds i8, i8* %0, i64 %421
  store i8 %426, i8* %427, align 1
  br label %428

; <label>:428:                                    ; preds = %423, %420
  %429 = add i64 %408, 3
  %430 = and i8 %383, 7
  %431 = or i8 %430, 48
  br label %441

; <label>:432:                                    ; preds = %379
  %433 = and i8 %384, 1
  %434 = icmp eq i8 %433, 0
  br i1 %434, label %441, label %435

; <label>:435:                                    ; preds = %432
  %436 = icmp ult i64 %381, %131
  br i1 %436, label %437, label %439

; <label>:437:                                    ; preds = %435
  %438 = getelementptr inbounds i8, i8* %0, i64 %381
  store i8 92, i8* %438, align 1
  br label %439

; <label>:439:                                    ; preds = %437, %435
  %440 = add i64 %381, 1
  br label %441

; <label>:441:                                    ; preds = %432, %439, %428
  %442 = phi i64 [ %440, %439 ], [ %381, %432 ], [ %429, %428 ]
  %443 = phi i8 [ %382, %439 ], [ %382, %432 ], [ %409, %428 ]
  %444 = phi i8 [ %383, %439 ], [ %383, %432 ], [ %431, %428 ]
  %445 = phi i8 [ 0, %439 ], [ %384, %432 ], [ %384, %428 ]
  %446 = phi i8 [ %385, %439 ], [ %385, %432 ], [ 1, %428 ]
  %447 = add i64 %380, 1
  %448 = icmp ugt i64 %378, %447
  br i1 %448, label %449, label %541

; <label>:449:                                    ; preds = %441
  %450 = and i8 %443, 1
  %451 = icmp ne i8 %450, 0
  %452 = and i8 %446, 1
  %453 = icmp eq i8 %452, 0
  %454 = and i1 %451, %453
  br i1 %454, label %455, label %466

; <label>:455:                                    ; preds = %449
  %456 = icmp ult i64 %442, %131
  br i1 %456, label %457, label %459

; <label>:457:                                    ; preds = %455
  %458 = getelementptr inbounds i8, i8* %0, i64 %442
  store i8 39, i8* %458, align 1
  br label %459

; <label>:459:                                    ; preds = %457, %455
  %460 = add i64 %442, 1
  %461 = icmp ult i64 %460, %131
  br i1 %461, label %462, label %464

; <label>:462:                                    ; preds = %459
  %463 = getelementptr inbounds i8, i8* %0, i64 %460
  store i8 39, i8* %463, align 1
  br label %464

; <label>:464:                                    ; preds = %462, %459
  %465 = add i64 %442, 2
  br label %466

; <label>:466:                                    ; preds = %449, %464
  %467 = phi i64 [ %465, %464 ], [ %442, %449 ]
  %468 = phi i8 [ 0, %464 ], [ %443, %449 ]
  %469 = icmp ult i64 %467, %131
  br i1 %469, label %470, label %472

; <label>:470:                                    ; preds = %466
  %471 = getelementptr inbounds i8, i8* %0, i64 %467
  store i8 %444, i8* %471, align 1
  br label %472

; <label>:472:                                    ; preds = %470, %466
  %473 = add i64 %467, 1
  %474 = getelementptr inbounds i8, i8* %2, i64 %447
  %475 = load i8, i8* %474, align 1
  br label %379

; <label>:476:                                    ; preds = %368, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %273, %188, %190, %193, %207, %209, %211, %212, %270, %266, %261, %275, %296, %257, %245, %221, %216, %213, %210
  %477 = phi i64 [ %124, %296 ], [ %124, %275 ], [ %124, %273 ], [ %124, %270 ], [ %124, %261 ], [ %124, %266 ], [ %124, %257 ], [ %124, %210 ], [ %124, %221 ], [ %214, %245 ], [ %124, %216 ], [ %124, %213 ], [ %124, %212 ], [ %124, %211 ], [ %124, %209 ], [ %124, %207 ], [ %124, %193 ], [ %124, %190 ], [ %124, %188 ], [ %124, %155 ], [ %124, %155 ], [ %124, %155 ], [ %124, %155 ], [ %124, %155 ], [ %124, %155 ], [ %124, %155 ], [ %124, %155 ], [ %124, %155 ], [ %124, %155 ], [ %124, %155 ], [ %124, %155 ], [ %124, %155 ], [ %124, %155 ], [ %124, %155 ], [ %124, %155 ], [ %124, %155 ], [ %124, %155 ], [ %124, %155 ], [ %124, %155 ], [ %124, %155 ], [ %124, %155 ], [ %124, %155 ], [ %124, %155 ], [ %124, %155 ], [ %124, %155 ], [ %124, %155 ], [ %124, %155 ], [ %124, %155 ], [ %124, %155 ], [ %124, %155 ], [ %124, %155 ], [ %124, %155 ], [ %124, %155 ], [ %124, %155 ], [ %124, %155 ], [ %124, %155 ], [ %124, %155 ], [ %124, %155 ], [ %124, %155 ], [ %124, %155 ], [ %124, %155 ], [ %124, %155 ], [ %124, %155 ], [ %124, %155 ], [ %124, %155 ], [ %124, %155 ], [ %124, %155 ], [ %124, %155 ], [ %124, %155 ], [ %124, %155 ], [ %124, %155 ], [ %124, %155 ], [ %124, %155 ], [ %124, %155 ], [ %124, %155 ], [ %124, %155 ], [ %124, %155 ], [ %124, %155 ], [ %124, %155 ], [ %124, %155 ], [ %124, %155 ], [ %124, %155 ], [ %124, %155 ], [ %124, %155 ], [ %124, %155 ], [ %124, %155 ], [ %124, %155 ], [ %124, %155 ], [ %124, %155 ], [ %124, %155 ], [ %124, %368 ]
  %478 = phi i64 [ %297, %296 ], [ %125, %275 ], [ %125, %273 ], [ %125, %270 ], [ %125, %261 ], [ %125, %266 ], [ %125, %257 ], [ %125, %210 ], [ %125, %221 ], [ %246, %245 ], [ %125, %216 ], [ %125, %213 ], [ %125, %212 ], [ %125, %211 ], [ %125, %209 ], [ %208, %207 ], [ %189, %193 ], [ %189, %190 ], [ %189, %188 ], [ %125, %155 ], [ %125, %155 ], [ %125, %155 ], [ %125, %155 ], [ %125, %155 ], [ %125, %155 ], [ %125, %155 ], [ %125, %155 ], [ %125, %155 ], [ %125, %155 ], [ %125, %155 ], [ %125, %155 ], [ %125, %155 ], [ %125, %155 ], [ %125, %155 ], [ %125, %155 ], [ %125, %155 ], [ %125, %155 ], [ %125, %155 ], [ %125, %155 ], [ %125, %155 ], [ %125, %155 ], [ %125, %155 ], [ %125, %155 ], [ %125, %155 ], [ %125, %155 ], [ %125, %155 ], [ %125, %155 ], [ %125, %155 ], [ %125, %155 ], [ %125, %155 ], [ %125, %155 ], [ %125, %155 ], [ %125, %155 ], [ %125, %155 ], [ %125, %155 ], [ %125, %155 ], [ %125, %155 ], [ %125, %155 ], [ %125, %155 ], [ %125, %155 ], [ %125, %155 ], [ %125, %155 ], [ %125, %155 ], [ %125, %155 ], [ %125, %155 ], [ %125, %155 ], [ %125, %155 ], [ %125, %155 ], [ %125, %155 ], [ %125, %155 ], [ %125, %155 ], [ %125, %155 ], [ %125, %155 ], [ %125, %155 ], [ %125, %155 ], [ %125, %155 ], [ %125, %155 ], [ %125, %155 ], [ %125, %155 ], [ %125, %155 ], [ %125, %155 ], [ %125, %155 ], [ %125, %155 ], [ %125, %155 ], [ %125, %155 ], [ %125, %155 ], [ %125, %155 ], [ %125, %155 ], [ %125, %155 ], [ %125, %155 ], [ %125, %368 ]
  %479 = phi i64 [ %281, %296 ], [ %126, %275 ], [ %126, %273 ], [ %126, %270 ], [ %126, %261 ], [ %126, %266 ], [ %126, %257 ], [ %126, %210 ], [ %126, %221 ], [ %126, %245 ], [ %126, %216 ], [ %126, %213 ], [ %126, %212 ], [ %126, %211 ], [ %126, %209 ], [ %126, %207 ], [ %126, %193 ], [ %126, %190 ], [ %126, %188 ], [ %126, %155 ], [ %126, %155 ], [ %126, %155 ], [ %126, %155 ], [ %126, %155 ], [ %126, %155 ], [ %126, %155 ], [ %126, %155 ], [ %126, %155 ], [ %126, %155 ], [ %126, %155 ], [ %126, %155 ], [ %126, %155 ], [ %126, %155 ], [ %126, %155 ], [ %126, %155 ], [ %126, %155 ], [ %126, %155 ], [ %126, %155 ], [ %126, %155 ], [ %126, %155 ], [ %126, %155 ], [ %126, %155 ], [ %126, %155 ], [ %126, %155 ], [ %126, %155 ], [ %126, %155 ], [ %126, %155 ], [ %126, %155 ], [ %126, %155 ], [ %126, %155 ], [ %126, %155 ], [ %126, %155 ], [ %126, %155 ], [ %126, %155 ], [ %126, %155 ], [ %126, %155 ], [ %126, %155 ], [ %126, %155 ], [ %126, %155 ], [ %126, %155 ], [ %126, %155 ], [ %126, %155 ], [ %126, %155 ], [ %126, %155 ], [ %126, %155 ], [ %126, %155 ], [ %126, %155 ], [ %126, %155 ], [ %126, %155 ], [ %126, %155 ], [ %126, %155 ], [ %126, %155 ], [ %126, %155 ], [ %126, %155 ], [ %126, %155 ], [ %126, %155 ], [ %126, %155 ], [ %126, %155 ], [ %126, %155 ], [ %126, %155 ], [ %126, %155 ], [ %126, %155 ], [ %126, %155 ], [ %126, %155 ], [ %126, %155 ], [ %126, %155 ], [ %126, %155 ], [ %126, %155 ], [ %126, %155 ], [ %126, %155 ], [ %126, %368 ]
  %480 = phi i64 [ %156, %296 ], [ %156, %275 ], [ %156, %273 ], [ %156, %270 ], [ -1, %261 ], [ %156, %266 ], [ %156, %257 ], [ %156, %210 ], [ %156, %221 ], [ %156, %245 ], [ %156, %216 ], [ %156, %213 ], [ %156, %212 ], [ %156, %211 ], [ %156, %209 ], [ %156, %207 ], [ %156, %193 ], [ %156, %190 ], [ %156, %188 ], [ %156, %155 ], [ %156, %155 ], [ %156, %155 ], [ %156, %155 ], [ %156, %155 ], [ %156, %155 ], [ %156, %155 ], [ %156, %155 ], [ %156, %155 ], [ %156, %155 ], [ %156, %155 ], [ %156, %155 ], [ %156, %155 ], [ %156, %155 ], [ %156, %155 ], [ %156, %155 ], [ %156, %155 ], [ %156, %155 ], [ %156, %155 ], [ %156, %155 ], [ %156, %155 ], [ %156, %155 ], [ %156, %155 ], [ %156, %155 ], [ %156, %155 ], [ %156, %155 ], [ %156, %155 ], [ %156, %155 ], [ %156, %155 ], [ %156, %155 ], [ %156, %155 ], [ %156, %155 ], [ %156, %155 ], [ %156, %155 ], [ %156, %155 ], [ %156, %155 ], [ %156, %155 ], [ %156, %155 ], [ %156, %155 ], [ %156, %155 ], [ %156, %155 ], [ %156, %155 ], [ %156, %155 ], [ %156, %155 ], [ %156, %155 ], [ %156, %155 ], [ %156, %155 ], [ %156, %155 ], [ %156, %155 ], [ %156, %155 ], [ %156, %155 ], [ %156, %155 ], [ %156, %155 ], [ %156, %155 ], [ %156, %155 ], [ %156, %155 ], [ %156, %155 ], [ %156, %155 ], [ %156, %155 ], [ %156, %155 ], [ %156, %155 ], [ %156, %155 ], [ %156, %155 ], [ %156, %155 ], [ %156, %155 ], [ %156, %155 ], [ %156, %155 ], [ %156, %155 ], [ %156, %155 ], [ %156, %155 ], [ %156, %155 ], [ %369, %368 ]
  %481 = phi i8 [ 0, %296 ], [ %128, %275 ], [ %128, %273 ], [ %128, %270 ], [ %128, %261 ], [ %128, %266 ], [ %128, %257 ], [ %128, %210 ], [ %128, %221 ], [ %128, %245 ], [ %128, %216 ], [ %128, %213 ], [ %128, %212 ], [ %128, %211 ], [ %128, %209 ], [ %184, %207 ], [ %184, %193 ], [ %184, %190 ], [ %184, %188 ], [ %128, %155 ], [ %128, %155 ], [ %128, %155 ], [ %128, %155 ], [ %128, %155 ], [ %128, %155 ], [ %128, %155 ], [ %128, %155 ], [ %128, %155 ], [ %128, %155 ], [ %128, %155 ], [ %128, %155 ], [ %128, %155 ], [ %128, %155 ], [ %128, %155 ], [ %128, %155 ], [ %128, %155 ], [ %128, %155 ], [ %128, %155 ], [ %128, %155 ], [ %128, %155 ], [ %128, %155 ], [ %128, %155 ], [ %128, %155 ], [ %128, %155 ], [ %128, %155 ], [ %128, %155 ], [ %128, %155 ], [ %128, %155 ], [ %128, %155 ], [ %128, %155 ], [ %128, %155 ], [ %128, %155 ], [ %128, %155 ], [ %128, %155 ], [ %128, %155 ], [ %128, %155 ], [ %128, %155 ], [ %128, %155 ], [ %128, %155 ], [ %128, %155 ], [ %128, %155 ], [ %128, %155 ], [ %128, %155 ], [ %128, %155 ], [ %128, %155 ], [ %128, %155 ], [ %128, %155 ], [ %128, %155 ], [ %128, %155 ], [ %128, %155 ], [ %128, %155 ], [ %128, %155 ], [ %128, %155 ], [ %128, %155 ], [ %128, %155 ], [ %128, %155 ], [ %128, %155 ], [ %128, %155 ], [ %128, %155 ], [ %128, %155 ], [ %128, %155 ], [ %128, %155 ], [ %128, %155 ], [ %128, %155 ], [ %128, %155 ], [ %128, %155 ], [ %128, %155 ], [ %128, %155 ], [ %128, %155 ], [ %128, %155 ], [ %128, %368 ]
  %482 = phi i8 [ 1, %296 ], [ 1, %275 ], [ %129, %273 ], [ %129, %270 ], [ %129, %261 ], [ %129, %266 ], [ %129, %257 ], [ %129, %210 ], [ %129, %221 ], [ %129, %245 ], [ %129, %216 ], [ %129, %213 ], [ %129, %212 ], [ %129, %211 ], [ %129, %209 ], [ %129, %207 ], [ %129, %193 ], [ %129, %190 ], [ %129, %188 ], [ %129, %155 ], [ %129, %155 ], [ %129, %155 ], [ %129, %155 ], [ %129, %155 ], [ %129, %155 ], [ %129, %155 ], [ %129, %155 ], [ %129, %155 ], [ %129, %155 ], [ %129, %155 ], [ %129, %155 ], [ %129, %155 ], [ %129, %155 ], [ %129, %155 ], [ %129, %155 ], [ %129, %155 ], [ %129, %155 ], [ %129, %155 ], [ %129, %155 ], [ %129, %155 ], [ %129, %155 ], [ %129, %155 ], [ %129, %155 ], [ %129, %155 ], [ %129, %155 ], [ %129, %155 ], [ %129, %155 ], [ %129, %155 ], [ %129, %155 ], [ %129, %155 ], [ %129, %155 ], [ %129, %155 ], [ %129, %155 ], [ %129, %155 ], [ %129, %155 ], [ %129, %155 ], [ %129, %155 ], [ %129, %155 ], [ %129, %155 ], [ %129, %155 ], [ %129, %155 ], [ %129, %155 ], [ %129, %155 ], [ %129, %155 ], [ %129, %155 ], [ %129, %155 ], [ %129, %155 ], [ %129, %155 ], [ %129, %155 ], [ %129, %155 ], [ %129, %155 ], [ %129, %155 ], [ %129, %155 ], [ %129, %155 ], [ %129, %155 ], [ %129, %155 ], [ %129, %155 ], [ %129, %155 ], [ %129, %155 ], [ %129, %155 ], [ %129, %155 ], [ %129, %155 ], [ %129, %155 ], [ %129, %155 ], [ %129, %155 ], [ %129, %155 ], [ %129, %155 ], [ %129, %155 ], [ %129, %155 ], [ %129, %155 ], [ %129, %368 ]
  %483 = phi i8 [ 39, %296 ], [ 39, %275 ], [ %159, %273 ], [ %159, %270 ], [ %159, %261 ], [ %159, %266 ], [ %159, %257 ], [ 63, %210 ], [ 63, %221 ], [ %223, %245 ], [ 63, %216 ], [ 63, %213 ], [ 63, %212 ], [ 63, %211 ], [ 0, %209 ], [ 48, %207 ], [ 48, %193 ], [ 48, %190 ], [ 48, %188 ], [ %159, %155 ], [ %159, %155 ], [ %159, %155 ], [ %159, %155 ], [ %159, %155 ], [ %159, %155 ], [ %159, %155 ], [ %159, %155 ], [ %159, %155 ], [ %159, %155 ], [ %159, %155 ], [ %159, %155 ], [ %159, %155 ], [ %159, %155 ], [ %159, %155 ], [ %159, %155 ], [ %159, %155 ], [ %159, %155 ], [ %159, %155 ], [ %159, %155 ], [ %159, %155 ], [ %159, %155 ], [ %159, %155 ], [ %159, %155 ], [ %159, %155 ], [ %159, %155 ], [ %159, %155 ], [ %159, %155 ], [ %159, %155 ], [ %159, %155 ], [ %159, %155 ], [ %159, %155 ], [ %159, %155 ], [ %159, %155 ], [ %159, %155 ], [ %159, %155 ], [ %159, %155 ], [ %159, %155 ], [ %159, %155 ], [ %159, %155 ], [ %159, %155 ], [ %159, %155 ], [ %159, %155 ], [ %159, %155 ], [ %159, %155 ], [ %159, %155 ], [ %159, %155 ], [ %159, %155 ], [ %159, %155 ], [ %159, %155 ], [ %159, %155 ], [ %159, %155 ], [ %159, %155 ], [ %159, %155 ], [ %159, %155 ], [ %159, %155 ], [ %159, %155 ], [ %159, %155 ], [ %159, %155 ], [ %159, %155 ], [ %159, %155 ], [ %159, %155 ], [ %159, %155 ], [ %159, %155 ], [ %159, %155 ], [ %159, %155 ], [ %159, %155 ], [ %159, %155 ], [ %159, %155 ], [ %159, %155 ], [ %159, %155 ], [ %159, %368 ]
  %484 = phi i8 [ 0, %296 ], [ 0, %275 ], [ 0, %273 ], [ 0, %270 ], [ 0, %261 ], [ 0, %266 ], [ 0, %257 ], [ 0, %210 ], [ 0, %221 ], [ 0, %245 ], [ 0, %216 ], [ 0, %213 ], [ 0, %212 ], [ 0, %211 ], [ 0, %209 ], [ 1, %207 ], [ 1, %193 ], [ 1, %190 ], [ 1, %188 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %368 ]
  %485 = phi i8 [ 1, %296 ], [ 1, %275 ], [ %274, %273 ], [ 0, %270 ], [ 0, %261 ], [ 0, %266 ], [ 0, %257 ], [ 0, %210 ], [ 0, %221 ], [ 0, %245 ], [ 0, %216 ], [ 0, %213 ], [ 0, %212 ], [ 0, %211 ], [ 0, %209 ], [ 0, %207 ], [ 0, %193 ], [ 0, %190 ], [ 0, %188 ], [ 1, %155 ], [ 1, %155 ], [ 1, %155 ], [ 1, %155 ], [ 1, %155 ], [ 1, %155 ], [ 1, %155 ], [ 1, %155 ], [ 1, %155 ], [ 1, %155 ], [ 1, %155 ], [ 1, %155 ], [ 1, %155 ], [ 1, %155 ], [ 1, %155 ], [ 1, %155 ], [ 1, %155 ], [ 1, %155 ], [ 1, %155 ], [ 1, %155 ], [ 1, %155 ], [ 1, %155 ], [ 1, %155 ], [ 1, %155 ], [ 1, %155 ], [ 1, %155 ], [ 1, %155 ], [ 1, %155 ], [ 1, %155 ], [ 1, %155 ], [ 1, %155 ], [ 1, %155 ], [ 1, %155 ], [ 1, %155 ], [ 1, %155 ], [ 1, %155 ], [ 1, %155 ], [ 1, %155 ], [ 1, %155 ], [ 1, %155 ], [ 1, %155 ], [ 1, %155 ], [ 1, %155 ], [ 1, %155 ], [ 1, %155 ], [ 1, %155 ], [ 1, %155 ], [ 1, %155 ], [ 1, %155 ], [ 1, %155 ], [ 1, %155 ], [ 1, %155 ], [ 1, %155 ], [ 1, %155 ], [ 1, %155 ], [ 1, %155 ], [ 1, %155 ], [ 1, %155 ], [ 1, %155 ], [ 1, %155 ], [ 1, %155 ], [ 1, %155 ], [ 1, %155 ], [ 1, %155 ], [ 1, %155 ], [ 1, %155 ], [ 1, %155 ], [ 1, %155 ], [ 1, %155 ], [ 1, %155 ], [ 1, %155 ], [ %372, %368 ]
  %486 = phi i64 [ %282, %296 ], [ %131, %275 ], [ %131, %273 ], [ %131, %270 ], [ %131, %261 ], [ %131, %266 ], [ %131, %257 ], [ %131, %210 ], [ %131, %221 ], [ %131, %245 ], [ %131, %216 ], [ %131, %213 ], [ %131, %212 ], [ %131, %211 ], [ %131, %209 ], [ %131, %207 ], [ %131, %193 ], [ %131, %190 ], [ %131, %188 ], [ %131, %155 ], [ %131, %155 ], [ %131, %155 ], [ %131, %155 ], [ %131, %155 ], [ %131, %155 ], [ %131, %155 ], [ %131, %155 ], [ %131, %155 ], [ %131, %155 ], [ %131, %155 ], [ %131, %155 ], [ %131, %155 ], [ %131, %155 ], [ %131, %155 ], [ %131, %155 ], [ %131, %155 ], [ %131, %155 ], [ %131, %155 ], [ %131, %155 ], [ %131, %155 ], [ %131, %155 ], [ %131, %155 ], [ %131, %155 ], [ %131, %155 ], [ %131, %155 ], [ %131, %155 ], [ %131, %155 ], [ %131, %155 ], [ %131, %155 ], [ %131, %155 ], [ %131, %155 ], [ %131, %155 ], [ %131, %155 ], [ %131, %155 ], [ %131, %155 ], [ %131, %155 ], [ %131, %155 ], [ %131, %155 ], [ %131, %155 ], [ %131, %155 ], [ %131, %155 ], [ %131, %155 ], [ %131, %155 ], [ %131, %155 ], [ %131, %155 ], [ %131, %155 ], [ %131, %155 ], [ %131, %155 ], [ %131, %155 ], [ %131, %155 ], [ %131, %155 ], [ %131, %155 ], [ %131, %155 ], [ %131, %155 ], [ %131, %155 ], [ %131, %155 ], [ %131, %155 ], [ %131, %155 ], [ %131, %155 ], [ %131, %155 ], [ %131, %155 ], [ %131, %155 ], [ %131, %155 ], [ %131, %155 ], [ %131, %155 ], [ %131, %155 ], [ %131, %155 ], [ %131, %155 ], [ %131, %155 ], [ %131, %155 ], [ %131, %368 ]
  br i1 %107, label %488, label %487

; <label>:487:                                    ; preds = %476
  br i1 %117, label %489, label %501

; <label>:488:                                    ; preds = %476
  br i1 %20, label %501, label %489

; <label>:489:                                    ; preds = %488, %487
  %490 = lshr i8 %483, 5
  %491 = zext i8 %490 to i64
  %492 = getelementptr inbounds i32, i32* %6, i64 %491
  %493 = load i32, i32* %492, align 4
  %494 = and i8 %483, 31
  %495 = zext i8 %494 to i32
  %496 = shl i32 1, %495
  %497 = and i32 %493, %496
  %498 = icmp eq i32 %497, 0
  %499 = icmp eq i8 %157, 0
  %500 = and i1 %499, %498
  br i1 %500, label %542, label %503

; <label>:501:                                    ; preds = %488, %487
  %502 = icmp eq i8 %157, 0
  br i1 %502, label %542, label %503

; <label>:503:                                    ; preds = %257, %489, %501
  %504 = phi i64 [ %477, %489 ], [ %477, %501 ], [ %124, %257 ]
  %505 = phi i64 [ %478, %489 ], [ %478, %501 ], [ %125, %257 ]
  %506 = phi i64 [ %479, %489 ], [ %479, %501 ], [ %126, %257 ]
  %507 = phi i64 [ %480, %489 ], [ %480, %501 ], [ %156, %257 ]
  %508 = phi i8 [ %481, %489 ], [ %481, %501 ], [ %128, %257 ]
  %509 = phi i8 [ %482, %489 ], [ %482, %501 ], [ %129, %257 ]
  %510 = phi i8 [ %483, %489 ], [ %483, %501 ], [ %258, %257 ]
  %511 = phi i8 [ %485, %489 ], [ %485, %501 ], [ 0, %257 ]
  %512 = phi i64 [ %486, %489 ], [ %486, %501 ], [ %131, %257 ]
  br i1 %112, label %513, label %644

; <label>:513:                                    ; preds = %503
  %514 = and i8 %508, 1
  %515 = icmp eq i8 %514, 0
  %516 = and i1 %114, %515
  br i1 %516, label %517, label %533

; <label>:517:                                    ; preds = %513
  %518 = icmp ult i64 %505, %512
  br i1 %518, label %519, label %521

; <label>:519:                                    ; preds = %517
  %520 = getelementptr inbounds i8, i8* %0, i64 %505
  store i8 39, i8* %520, align 1
  br label %521

; <label>:521:                                    ; preds = %519, %517
  %522 = add i64 %505, 1
  %523 = icmp ult i64 %522, %512
  br i1 %523, label %524, label %526

; <label>:524:                                    ; preds = %521
  %525 = getelementptr inbounds i8, i8* %0, i64 %522
  store i8 36, i8* %525, align 1
  br label %526

; <label>:526:                                    ; preds = %524, %521
  %527 = add i64 %505, 2
  %528 = icmp ult i64 %527, %512
  br i1 %528, label %529, label %531

; <label>:529:                                    ; preds = %526
  %530 = getelementptr inbounds i8, i8* %0, i64 %527
  store i8 39, i8* %530, align 1
  br label %531

; <label>:531:                                    ; preds = %529, %526
  %532 = add i64 %505, 3
  br label %533

; <label>:533:                                    ; preds = %513, %531
  %534 = phi i64 [ %532, %531 ], [ %505, %513 ]
  %535 = phi i8 [ 1, %531 ], [ %508, %513 ]
  %536 = icmp ult i64 %534, %512
  br i1 %536, label %537, label %539

; <label>:537:                                    ; preds = %533
  %538 = getelementptr inbounds i8, i8* %0, i64 %534
  store i8 92, i8* %538, align 1
  br label %539

; <label>:539:                                    ; preds = %533, %537
  %540 = add i64 %534, 1
  br label %569

; <label>:541:                                    ; preds = %441
  br label %542

; <label>:542:                                    ; preds = %541, %254, %489, %253, %501
  %543 = phi i64 [ %477, %501 ], [ %124, %253 ], [ %477, %489 ], [ %124, %254 ], [ %380, %541 ]
  %544 = phi i64 [ %478, %501 ], [ %125, %253 ], [ %478, %489 ], [ %125, %254 ], [ %442, %541 ]
  %545 = phi i64 [ %479, %501 ], [ %126, %253 ], [ %479, %489 ], [ %126, %254 ], [ %126, %541 ]
  %546 = phi i64 [ %480, %501 ], [ %156, %253 ], [ %480, %489 ], [ %156, %254 ], [ %369, %541 ]
  %547 = phi i8 [ %481, %501 ], [ %128, %253 ], [ %481, %489 ], [ %128, %254 ], [ %443, %541 ]
  %548 = phi i8 [ %482, %501 ], [ %129, %253 ], [ %482, %489 ], [ %129, %254 ], [ %129, %541 ]
  %549 = phi i8 [ %483, %501 ], [ 92, %253 ], [ %483, %489 ], [ 92, %254 ], [ %444, %541 ]
  %550 = phi i8 [ %484, %501 ], [ 0, %253 ], [ %484, %489 ], [ 0, %254 ], [ %446, %541 ]
  %551 = phi i8 [ %485, %501 ], [ 0, %253 ], [ %485, %489 ], [ 0, %254 ], [ %372, %541 ]
  %552 = phi i64 [ %486, %501 ], [ %131, %253 ], [ %486, %489 ], [ %131, %254 ], [ %131, %541 ]
  %553 = and i8 %547, 1
  %554 = icmp ne i8 %553, 0
  %555 = and i8 %550, 1
  %556 = icmp eq i8 %555, 0
  %557 = and i1 %554, %556
  br i1 %557, label %558, label %569

; <label>:558:                                    ; preds = %542
  %559 = icmp ult i64 %544, %552
  br i1 %559, label %560, label %562

; <label>:560:                                    ; preds = %558
  %561 = getelementptr inbounds i8, i8* %0, i64 %544
  store i8 39, i8* %561, align 1
  br label %562

; <label>:562:                                    ; preds = %560, %558
  %563 = add i64 %544, 1
  %564 = icmp ult i64 %563, %552
  br i1 %564, label %565, label %567

; <label>:565:                                    ; preds = %562
  %566 = getelementptr inbounds i8, i8* %0, i64 %563
  store i8 39, i8* %566, align 1
  br label %567

; <label>:567:                                    ; preds = %565, %562
  %568 = add i64 %544, 2
  br label %569

; <label>:569:                                    ; preds = %539, %542, %567
  %570 = phi i64 [ %552, %567 ], [ %552, %542 ], [ %512, %539 ]
  %571 = phi i8 [ %551, %567 ], [ %551, %542 ], [ %511, %539 ]
  %572 = phi i8 [ %549, %567 ], [ %549, %542 ], [ %510, %539 ]
  %573 = phi i8 [ %548, %567 ], [ %548, %542 ], [ %509, %539 ]
  %574 = phi i64 [ %546, %567 ], [ %546, %542 ], [ %507, %539 ]
  %575 = phi i64 [ %545, %567 ], [ %545, %542 ], [ %506, %539 ]
  %576 = phi i64 [ %543, %567 ], [ %543, %542 ], [ %504, %539 ]
  %577 = phi i64 [ %568, %567 ], [ %544, %542 ], [ %540, %539 ]
  %578 = phi i8 [ 0, %567 ], [ %547, %542 ], [ %535, %539 ]
  %579 = icmp ult i64 %577, %570
  br i1 %579, label %580, label %582

; <label>:580:                                    ; preds = %569
  %581 = getelementptr inbounds i8, i8* %0, i64 %577
  store i8 %572, i8* %581, align 1
  br label %582

; <label>:582:                                    ; preds = %580, %569
  %583 = add i64 %577, 1
  %584 = and i8 %571, 1
  %585 = icmp eq i8 %584, 0
  %586 = select i1 %585, i8 0, i8 %130
  br label %587

; <label>:587:                                    ; preds = %582, %209
  %588 = phi i64 [ %124, %209 ], [ %576, %582 ]
  %589 = phi i64 [ %125, %209 ], [ %583, %582 ]
  %590 = phi i64 [ %126, %209 ], [ %575, %582 ]
  %591 = phi i64 [ %156, %209 ], [ %574, %582 ]
  %592 = phi i8 [ %128, %209 ], [ %578, %582 ]
  %593 = phi i8 [ %129, %209 ], [ %573, %582 ]
  %594 = phi i8 [ %130, %209 ], [ %586, %582 ]
  %595 = phi i64 [ %131, %209 ], [ %570, %582 ]
  %596 = add i64 %588, 1
  br label %123

; <label>:597:                                    ; preds = %133, %135
  %598 = phi i64 [ %124, %133 ], [ -1, %135 ]
  %599 = icmp eq i64 %125, 0
  %600 = and i1 %114, %599
  %601 = xor i1 %600, true
  %602 = or i1 %112, %601
  br i1 %602, label %603, label %648

; <label>:603:                                    ; preds = %597
  %604 = and i1 %114, %112
  %605 = xor i1 %604, true
  %606 = and i8 %129, 1
  %607 = icmp eq i8 %606, 0
  %608 = or i1 %607, %605
  br i1 %608, label %618, label %609

; <label>:609:                                    ; preds = %603
  %610 = and i8 %130, 1
  %611 = icmp eq i8 %610, 0
  br i1 %611, label %614, label %612

; <label>:612:                                    ; preds = %609
  %613 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %126, i8* %2, i64 %598, i32 5, i32 %5, i32* %6, i8* %97, i8* %98)
  br label %659

; <label>:614:                                    ; preds = %609
  %615 = icmp eq i64 %131, 0
  %616 = icmp ne i64 %126, 0
  %617 = and i1 %616, %615
  br i1 %617, label %27, label %618

; <label>:618:                                    ; preds = %603, %614
  %619 = icmp ne i8* %100, null
  %620 = and i1 %619, %112
  br i1 %620, label %621, label %638

; <label>:621:                                    ; preds = %618
  %622 = load i8, i8* %100, align 1
  %623 = icmp eq i8 %622, 0
  br i1 %623, label %638, label %624

; <label>:624:                                    ; preds = %621
  br label %625

; <label>:625:                                    ; preds = %624, %632
  %626 = phi i8 [ %635, %632 ], [ %622, %624 ]
  %627 = phi i8* [ %634, %632 ], [ %100, %624 ]
  %628 = phi i64 [ %633, %632 ], [ %125, %624 ]
  %629 = icmp ult i64 %628, %131
  br i1 %629, label %630, label %632

; <label>:630:                                    ; preds = %625
  %631 = getelementptr inbounds i8, i8* %0, i64 %628
  store i8 %626, i8* %631, align 1
  br label %632

; <label>:632:                                    ; preds = %630, %625
  %633 = add i64 %628, 1
  %634 = getelementptr inbounds i8, i8* %627, i64 1
  %635 = load i8, i8* %634, align 1
  %636 = icmp eq i8 %635, 0
  br i1 %636, label %637, label %625

; <label>:637:                                    ; preds = %632
  br label %638

; <label>:638:                                    ; preds = %637, %621, %618
  %639 = phi i64 [ %125, %618 ], [ %125, %621 ], [ %633, %637 ]
  %640 = icmp ult i64 %639, %131
  br i1 %640, label %641, label %659

; <label>:641:                                    ; preds = %638
  %642 = getelementptr inbounds i8, i8* %0, i64 %639
  store i8 0, i8* %642, align 1
  br label %659

; <label>:643:                                    ; preds = %386
  br label %649

; <label>:644:                                    ; preds = %148, %161, %211, %225, %253, %255, %273, %276, %503
  %645 = phi i32 [ %96, %148 ], [ %96, %161 ], [ 2, %211 ], [ 5, %225 ], [ 2, %253 ], [ 2, %255 ], [ 2, %273 ], [ 2, %276 ], [ %96, %503 ]
  %646 = phi i64 [ %146, %148 ], [ %156, %161 ], [ %156, %211 ], [ %156, %225 ], [ %156, %253 ], [ %156, %255 ], [ %156, %273 ], [ %156, %276 ], [ %507, %503 ]
  %647 = phi i64 [ %131, %148 ], [ %131, %161 ], [ %131, %211 ], [ %131, %225 ], [ %131, %253 ], [ %131, %255 ], [ %131, %273 ], [ %131, %276 ], [ %512, %503 ]
  br label %649

; <label>:648:                                    ; preds = %597
  br label %649

; <label>:649:                                    ; preds = %648, %644, %643, %367
  %650 = phi i32 [ 2, %367 ], [ %96, %643 ], [ %645, %644 ], [ %96, %648 ]
  %651 = phi i64 [ %313, %367 ], [ %369, %643 ], [ %646, %644 ], [ %598, %648 ]
  %652 = phi i64 [ %131, %367 ], [ %131, %643 ], [ %647, %644 ], [ %131, %648 ]
  %653 = icmp ne i32 %650, 2
  %654 = icmp eq i8 %104, 0
  %655 = or i1 %653, %654
  %656 = select i1 %655, i32 %650, i32 4
  %657 = and i32 %5, -3
  %658 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %652, i8* %2, i64 %651, i32 %656, i32 %657, i32* null, i8* %97, i8* %98)
  br label %659

; <label>:659:                                    ; preds = %638, %641, %649, %612
  %660 = phi i64 [ %658, %649 ], [ %613, %612 ], [ %639, %641 ], [ %639, %638 ]
  ret i64 %660
}

; Function Attrs: nounwind
declare i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @gettext_quote(i8*, i32) unnamed_addr #6 {
  %3 = tail call i8* @dcgettext(i8* null, i8* %0, i32 5) #9
  %4 = icmp eq i8* %3, %0
  br i1 %4, label %5, label %75

; <label>:5:                                      ; preds = %2
  %6 = tail call i8* @locale_charset() #9
  %7 = load i8, i8* %6, align 1
  %8 = sext i8 %7 to i32
  %9 = and i32 %8, -33
  switch i32 %9, label %72 [
    i32 85, label %10
    i32 71, label %38
  ]

; <label>:10:                                     ; preds = %5
  %11 = getelementptr inbounds i8, i8* %6, i64 1
  %12 = load i8, i8* %11, align 1
  %13 = sext i8 %12 to i32
  %14 = and i32 %13, -33
  %15 = icmp eq i32 %14, 84
  br i1 %15, label %16, label %72

; <label>:16:                                     ; preds = %10
  %17 = getelementptr inbounds i8, i8* %6, i64 2
  %18 = load i8, i8* %17, align 1
  %19 = sext i8 %18 to i32
  %20 = and i32 %19, -33
  %21 = icmp eq i32 %20, 70
  br i1 %21, label %22, label %72

; <label>:22:                                     ; preds = %16
  %23 = getelementptr inbounds i8, i8* %6, i64 3
  %24 = load i8, i8* %23, align 1
  %25 = icmp eq i8 %24, 45
  br i1 %25, label %26, label %72

; <label>:26:                                     ; preds = %22
  %27 = getelementptr inbounds i8, i8* %6, i64 4
  %28 = load i8, i8* %27, align 1
  %29 = icmp eq i8 %28, 56
  br i1 %29, label %30, label %72

; <label>:30:                                     ; preds = %26
  %31 = getelementptr inbounds i8, i8* %6, i64 5
  %32 = load i8, i8* %31, align 1
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %34, label %72

; <label>:34:                                     ; preds = %30
  %35 = load i8, i8* %0, align 1
  %36 = icmp eq i8 %35, 96
  %37 = select i1 %36, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14.319, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15.320, i64 0, i64 0)
  br label %75

; <label>:38:                                     ; preds = %5
  %39 = getelementptr inbounds i8, i8* %6, i64 1
  %40 = load i8, i8* %39, align 1
  %41 = sext i8 %40 to i32
  %42 = and i32 %41, -33
  %43 = icmp eq i32 %42, 66
  br i1 %43, label %44, label %72

; <label>:44:                                     ; preds = %38
  %45 = getelementptr inbounds i8, i8* %6, i64 2
  %46 = load i8, i8* %45, align 1
  %47 = icmp eq i8 %46, 49
  br i1 %47, label %48, label %72

; <label>:48:                                     ; preds = %44
  %49 = getelementptr inbounds i8, i8* %6, i64 3
  %50 = load i8, i8* %49, align 1
  %51 = icmp eq i8 %50, 56
  br i1 %51, label %52, label %72

; <label>:52:                                     ; preds = %48
  %53 = getelementptr inbounds i8, i8* %6, i64 4
  %54 = load i8, i8* %53, align 1
  %55 = icmp eq i8 %54, 48
  br i1 %55, label %56, label %72

; <label>:56:                                     ; preds = %52
  %57 = getelementptr inbounds i8, i8* %6, i64 5
  %58 = load i8, i8* %57, align 1
  %59 = icmp eq i8 %58, 51
  br i1 %59, label %60, label %72

; <label>:60:                                     ; preds = %56
  %61 = getelementptr inbounds i8, i8* %6, i64 6
  %62 = load i8, i8* %61, align 1
  %63 = icmp eq i8 %62, 48
  br i1 %63, label %64, label %72

; <label>:64:                                     ; preds = %60
  %65 = getelementptr inbounds i8, i8* %6, i64 7
  %66 = load i8, i8* %65, align 1
  %67 = icmp eq i8 %66, 0
  br i1 %67, label %68, label %72

; <label>:68:                                     ; preds = %64
  %69 = load i8, i8* %0, align 1
  %70 = icmp eq i8 %69, 96
  %71 = select i1 %70, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17.321, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18.322, i64 0, i64 0)
  br label %75

; <label>:72:                                     ; preds = %5, %30, %26, %22, %16, %10, %64, %60, %56, %52, %48, %44, %38
  %73 = icmp eq i32 %1, 9
  %74 = select i1 %73, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.318, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.317, i64 0, i64 0)
  br label %75

; <label>:75:                                     ; preds = %2, %72, %68, %34
  %76 = phi i8* [ %37, %34 ], [ %71, %68 ], [ %74, %72 ], [ %3, %2 ]
  ret i8* %76
}

; Function Attrs: nounwind readonly
declare i64 @strlen(i8* nocapture) local_unnamed_addr #4

; Function Attrs: nounwind readnone
declare i16** @__ctype_b_loc() local_unnamed_addr #8

; Function Attrs: nounwind
declare i32 @iswprint(i32) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @mbsinit(%struct.__mbstate_t*) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_alloc(i8*, i64, %struct.quoting_options*) local_unnamed_addr #6 {
  %4 = icmp ne %struct.quoting_options* %2, null
  %5 = select i1 %4, %struct.quoting_options* %2, %struct.quoting_options* @default_quoting_options
  %6 = tail call i32* @__errno_location() #1
  %7 = load i32, i32* %6, align 4
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = or i32 %9, 1
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 0
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3
  %15 = load i8*, i8** %14, align 8
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4
  %17 = load i8*, i8** %16, align 8
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %12, i32 %10, i32* %13, i8* %15, i8* %17) #9
  %19 = add i64 %18, 1
  %20 = tail call noalias i8* @xmalloc(i64 %19) #9
  %21 = load i32, i32* %11, align 8
  %22 = load i8*, i8** %14, align 8
  %23 = load i8*, i8** %16, align 8
  %24 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %20, i64 %19, i8* %0, i64 %1, i32 %21, i32 %10, i32* %13, i8* %22, i8* %23) #9
  store i32 %7, i32* %6, align 4
  ret i8* %20
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_alloc_mem(i8*, i64, i64*, %struct.quoting_options*) local_unnamed_addr #6 {
  %5 = icmp ne %struct.quoting_options* %3, null
  %6 = select i1 %5, %struct.quoting_options* %3, %struct.quoting_options* @default_quoting_options
  %7 = tail call i32* @__errno_location() #1
  %8 = load i32, i32* %7, align 4
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = icmp ne i64* %2, null
  %12 = xor i1 %11, true
  %13 = zext i1 %12 to i32
  %14 = or i32 %10, %13
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 2, i64 0
  %18 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3
  %19 = load i8*, i8** %18, align 8
  %20 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4
  %21 = load i8*, i8** %20, align 8
  %22 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %16, i32 %14, i32* %17, i8* %19, i8* %21)
  %23 = add i64 %22, 1
  %24 = tail call noalias i8* @xmalloc(i64 %23) #9
  %25 = load i32, i32* %15, align 8
  %26 = load i8*, i8** %18, align 8
  %27 = load i8*, i8** %20, align 8
  %28 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %24, i64 %23, i8* %0, i64 %1, i32 %25, i32 %14, i32* %17, i8* %26, i8* %27)
  store i32 %8, i32* %7, align 4
  br i1 %11, label %29, label %30

; <label>:29:                                     ; preds = %4
  store i64 %22, i64* %2, align 8
  br label %30

; <label>:30:                                     ; preds = %29, %4
  ret i8* %24
}

; Function Attrs: nounwind sspstrong uwtable
define void @quotearg_free() local_unnamed_addr #6 {
  %1 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8
  %2 = load i32, i32* @nslots, align 4
  %3 = icmp sgt i32 %2, 1
  br i1 %3, label %4, label %14

; <label>:4:                                      ; preds = %0
  br label %5

; <label>:5:                                      ; preds = %4, %5
  %6 = phi i64 [ %9, %5 ], [ 1, %4 ]
  %7 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 %6, i32 1
  %8 = load i8*, i8** %7, align 8
  tail call void @free(i8* %8) #9
  %9 = add nuw i64 %6, 1
  %10 = load i32, i32* @nslots, align 4
  %11 = sext i32 %10 to i64
  %12 = icmp slt i64 %9, %11
  br i1 %12, label %5, label %13

; <label>:13:                                     ; preds = %5
  br label %14

; <label>:14:                                     ; preds = %13, %0
  %15 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 0, i32 1
  %16 = load i8*, i8** %15, align 8
  %17 = icmp eq i8* %16, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0)
  br i1 %17, label %19, label %18

; <label>:18:                                     ; preds = %14
  tail call void @free(i8* %16) #9
  store i64 256, i64* getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 0), align 8
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), i8** getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 1), align 8
  br label %19

; <label>:19:                                     ; preds = %14, %18
  %20 = icmp eq %struct.slotvec* %1, @slotvec0
  br i1 %20, label %23, label %21

; <label>:21:                                     ; preds = %19
  %22 = bitcast %struct.slotvec* %1 to i8*
  tail call void @free(i8* %22) #9
  store %struct.slotvec* @slotvec0, %struct.slotvec** @slotvec, align 8
  br label %23

; <label>:23:                                     ; preds = %19, %21
  store i32 1, i32* @nslots, align 4
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n(i32, i8*) local_unnamed_addr #6 {
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @default_quoting_options)
  ret i8* %3
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @quotearg_n_options(i32, i8*, i64, %struct.quoting_options*) unnamed_addr #6 {
  %5 = tail call i32* @__errno_location() #1
  %6 = load i32, i32* %5, align 4
  %7 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8
  %8 = icmp slt i32 %0, 0
  br i1 %8, label %9, label %10

; <label>:9:                                      ; preds = %4
  tail call void @abort() #14
  unreachable

; <label>:10:                                     ; preds = %4
  %11 = load i32, i32* @nslots, align 4
  %12 = icmp sgt i32 %11, %0
  br i1 %12, label %34, label %13

; <label>:13:                                     ; preds = %10
  %14 = icmp eq %struct.slotvec* %7, @slotvec0
  %15 = icmp ugt i32 %0, 2147483646
  br i1 %15, label %16, label %17

; <label>:16:                                     ; preds = %13
  tail call void @xalloc_die() #14
  unreachable

; <label>:17:                                     ; preds = %13
  %18 = bitcast %struct.slotvec* %7 to i8*
  %19 = select i1 %14, i8* null, i8* %18
  %20 = add nsw i32 %0, 1
  %21 = sext i32 %20 to i64
  %22 = shl nsw i64 %21, 4
  %23 = tail call i8* @xrealloc(i8* %19, i64 %22) #9
  %24 = bitcast i8* %23 to %struct.slotvec*
  store i8* %23, i8** bitcast (%struct.slotvec** @slotvec to i8**), align 8
  br i1 %14, label %25, label %26

; <label>:25:                                     ; preds = %17
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %23, i8* bitcast (%struct.slotvec* @slotvec0 to i8*), i64 16, i32 8, i1 false)
  br label %26

; <label>:26:                                     ; preds = %25, %17
  %27 = load i32, i32* @nslots, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %24, i64 %28
  %30 = bitcast %struct.slotvec* %29 to i8*
  %31 = sub nsw i32 %20, %27
  %32 = sext i32 %31 to i64
  %33 = shl nsw i64 %32, 4
  tail call void @llvm.memset.p0i8.i64(i8* %30, i8 0, i64 %33, i32 8, i1 false)
  store i32 %20, i32* @nslots, align 4
  br label %34

; <label>:34:                                     ; preds = %10, %26
  %35 = phi %struct.slotvec* [ %24, %26 ], [ %7, %10 ]
  %36 = sext i32 %0 to i64
  %37 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 1
  %40 = load i8*, i8** %39, align 8
  %41 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = or i32 %42, 1
  %44 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 0
  %47 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 3
  %48 = load i8*, i8** %47, align 8
  %49 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 4
  %50 = load i8*, i8** %49, align 8
  %51 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %40, i64 %38, i8* %1, i64 %2, i32 %45, i32 %43, i32* %46, i8* %48, i8* %50)
  %52 = icmp ugt i64 %38, %51
  br i1 %52, label %63, label %53

; <label>:53:                                     ; preds = %34
  %54 = add i64 %51, 1
  store i64 %54, i64* %37, align 8
  %55 = icmp eq i8* %40, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0)
  br i1 %55, label %57, label %56

; <label>:56:                                     ; preds = %53
  tail call void @free(i8* %40) #9
  br label %57

; <label>:57:                                     ; preds = %53, %56
  %58 = tail call noalias i8* @xmalloc(i64 %54) #9
  store i8* %58, i8** %39, align 8
  %59 = load i32, i32* %44, align 8
  %60 = load i8*, i8** %47, align 8
  %61 = load i8*, i8** %49, align 8
  %62 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %58, i64 %54, i8* %1, i64 %2, i32 %59, i32 %43, i32* %46, i8* %60, i8* %61)
  br label %63

; <label>:63:                                     ; preds = %34, %57
  %64 = phi i8* [ %58, %57 ], [ %40, %34 ]
  store i32 %6, i32* %5, align 4
  ret i8* %64
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #7

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_mem(i32, i8*, i64) local_unnamed_addr #6 {
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @default_quoting_options)
  ret i8* %4
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg(i8*) local_unnamed_addr #6 {
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @default_quoting_options) #9
  ret i8* %2
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_mem(i8*, i64) local_unnamed_addr #6 {
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @default_quoting_options) #9
  ret i8* %3
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_style(i32, i32, i8*) local_unnamed_addr #6 {
  %4 = alloca [52 x i8], align 4
  %5 = alloca %struct.quoting_options, align 8
  %6 = bitcast %struct.quoting_options* %5 to i8*
  call void @llvm.lifetime.start(i64 56, i8* nonnull %6) #9
  %7 = getelementptr inbounds [52 x i8], [52 x i8]* %4, i64 0, i64 0
  call void @llvm.lifetime.start(i64 52, i8* nonnull %7)
  call void @llvm.memset.p0i8.i64(i8* nonnull %7, i8 0, i64 52, i32 4, i1 false)
  %8 = icmp eq i32 %1, 10
  br i1 %8, label %9, label %10

; <label>:9:                                      ; preds = %3
  tail call void @abort() #14
  unreachable

; <label>:10:                                     ; preds = %3
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0
  store i32 %1, i32* %11, align 8
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1
  %13 = bitcast i32* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* nonnull %7, i64 52, i32 4, i1 false) #9
  call void @llvm.lifetime.end(i64 52, i8* nonnull %7)
  %14 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %5)
  call void @llvm.lifetime.end(i64 56, i8* nonnull %6) #9
  ret i8* %14
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_style_mem(i32, i32, i8*, i64) local_unnamed_addr #6 {
  %5 = alloca [52 x i8], align 4
  %6 = alloca %struct.quoting_options, align 8
  %7 = bitcast %struct.quoting_options* %6 to i8*
  call void @llvm.lifetime.start(i64 56, i8* nonnull %7) #9
  %8 = getelementptr inbounds [52 x i8], [52 x i8]* %5, i64 0, i64 0
  call void @llvm.lifetime.start(i64 52, i8* nonnull %8)
  call void @llvm.memset.p0i8.i64(i8* nonnull %8, i8 0, i64 52, i32 4, i1 false)
  %9 = icmp eq i32 %1, 10
  br i1 %9, label %10, label %11

; <label>:10:                                     ; preds = %4
  tail call void @abort() #14
  unreachable

; <label>:11:                                     ; preds = %4
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0
  store i32 %1, i32* %12, align 8
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1
  %14 = bitcast i32* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %14, i8* nonnull %8, i64 52, i32 4, i1 false) #9
  call void @llvm.lifetime.end(i64 52, i8* nonnull %8)
  %15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 %3, %struct.quoting_options* nonnull %6)
  call void @llvm.lifetime.end(i64 56, i8* nonnull %7) #9
  ret i8* %15
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_style(i32, i8*) local_unnamed_addr #6 {
  %3 = alloca [52 x i8], align 4
  %4 = alloca %struct.quoting_options, align 8
  %5 = bitcast %struct.quoting_options* %4 to i8*
  call void @llvm.lifetime.start(i64 56, i8* nonnull %5) #9
  %6 = getelementptr inbounds [52 x i8], [52 x i8]* %3, i64 0, i64 0
  call void @llvm.lifetime.start(i64 52, i8* nonnull %6)
  call void @llvm.memset.p0i8.i64(i8* nonnull %6, i8 0, i64 52, i32 4, i1 false)
  %7 = icmp eq i32 %0, 10
  br i1 %7, label %8, label %9

; <label>:8:                                      ; preds = %2
  tail call void @abort() #14
  unreachable

; <label>:9:                                      ; preds = %2
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0
  store i32 %0, i32* %10, align 8
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1
  %12 = bitcast i32* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %12, i8* nonnull %6, i64 52, i32 4, i1 false) #9
  call void @llvm.lifetime.end(i64 52, i8* nonnull %6)
  %13 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 -1, %struct.quoting_options* nonnull %4) #9
  call void @llvm.lifetime.end(i64 56, i8* nonnull %5) #9
  ret i8* %13
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_style_mem(i32, i8*, i64) local_unnamed_addr #6 {
  %4 = alloca [52 x i8], align 4
  %5 = alloca %struct.quoting_options, align 8
  %6 = bitcast %struct.quoting_options* %5 to i8*
  call void @llvm.lifetime.start(i64 56, i8* nonnull %6) #9
  %7 = getelementptr inbounds [52 x i8], [52 x i8]* %4, i64 0, i64 0
  call void @llvm.lifetime.start(i64 52, i8* nonnull %7)
  call void @llvm.memset.p0i8.i64(i8* nonnull %7, i8 0, i64 52, i32 4, i1 false)
  %8 = icmp eq i32 %0, 10
  br i1 %8, label %9, label %10

; <label>:9:                                      ; preds = %3
  tail call void @abort() #14
  unreachable

; <label>:10:                                     ; preds = %3
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0
  store i32 %0, i32* %11, align 8
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1
  %13 = bitcast i32* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* nonnull %7, i64 52, i32 4, i1 false) #9
  call void @llvm.lifetime.end(i64 52, i8* nonnull %7)
  %14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 %2, %struct.quoting_options* nonnull %5) #9
  call void @llvm.lifetime.end(i64 56, i8* nonnull %6) #9
  ret i8* %14
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_char_mem(i8*, i64, i8 signext) local_unnamed_addr #6 {
  %4 = alloca %struct.quoting_options, align 8
  %5 = bitcast %struct.quoting_options* %4 to i8*
  call void @llvm.lifetime.start(i64 56, i8* nonnull %5) #9
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %5, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false)
  %6 = lshr i8 %2, 5
  %7 = zext i8 %6 to i64
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 %7
  %9 = and i8 %2, 31
  %10 = zext i8 %9 to i32
  %11 = load i32, i32* %8, align 4
  %12 = lshr i32 %11, %10
  %13 = and i32 %12, 1
  %14 = xor i32 %13, 1
  %15 = shl i32 %14, %10
  %16 = xor i32 %15, %11
  store i32 %16, i32* %8, align 4
  %17 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %4)
  call void @llvm.lifetime.end(i64 56, i8* nonnull %5) #9
  ret i8* %17
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_char(i8*, i8 signext) local_unnamed_addr #6 {
  %3 = alloca %struct.quoting_options, align 8
  %4 = bitcast %struct.quoting_options* %3 to i8*
  call void @llvm.lifetime.start(i64 56, i8* nonnull %4) #9
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %4, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #9
  %5 = lshr i8 %1, 5
  %6 = zext i8 %5 to i64
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 %6
  %8 = and i8 %1, 31
  %9 = zext i8 %8 to i32
  %10 = load i32, i32* %7, align 4
  %11 = lshr i32 %10, %9
  %12 = and i32 %11, 1
  %13 = xor i32 %12, 1
  %14 = shl i32 %13, %9
  %15 = xor i32 %14, %10
  store i32 %15, i32* %7, align 4
  %16 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %3) #9
  call void @llvm.lifetime.end(i64 56, i8* nonnull %4) #9
  ret i8* %16
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_colon(i8*) local_unnamed_addr #6 {
  %2 = alloca %struct.quoting_options, align 8
  %3 = bitcast %struct.quoting_options* %2 to i8*
  call void @llvm.lifetime.start(i64 56, i8* nonnull %3) #9
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %3, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #9
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %2, i64 0, i32 2, i64 1
  %5 = load i32, i32* %4, align 4
  %6 = or i32 %5, 67108864
  store i32 %6, i32* %4, align 4
  %7 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %2) #9
  call void @llvm.lifetime.end(i64 56, i8* nonnull %3) #9
  ret i8* %7
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_colon_mem(i8*, i64) local_unnamed_addr #6 {
  %3 = alloca %struct.quoting_options, align 8
  %4 = bitcast %struct.quoting_options* %3 to i8*
  call void @llvm.lifetime.start(i64 56, i8* nonnull %4) #9
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %4, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #9
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 1
  %6 = load i32, i32* %5, align 4
  %7 = or i32 %6, 67108864
  store i32 %7, i32* %5, align 4
  %8 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %3) #9
  call void @llvm.lifetime.end(i64 56, i8* nonnull %4) #9
  ret i8* %8
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_style_colon(i32, i32, i8*) local_unnamed_addr #6 {
  %4 = alloca [52 x i8], align 4
  %5 = alloca %struct.quoting_options, align 8
  %6 = alloca [52 x i8], align 4
  %7 = bitcast %struct.quoting_options* %5 to i8*
  call void @llvm.lifetime.start(i64 56, i8* nonnull %7) #9
  %8 = getelementptr inbounds [52 x i8], [52 x i8]* %4, i64 0, i64 0
  call void @llvm.lifetime.start(i64 52, i8* nonnull %8)
  call void @llvm.memset.p0i8.i64(i8* nonnull %8, i8 0, i64 52, i32 4, i1 false)
  %9 = icmp eq i32 %1, 10
  br i1 %9, label %10, label %11

; <label>:10:                                     ; preds = %3
  tail call void @abort() #14
  unreachable

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds [52 x i8], [52 x i8]* %6, i64 0, i64 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %12, i8* nonnull %8, i64 52, i32 4, i1 false)
  call void @llvm.lifetime.end(i64 52, i8* nonnull %8)
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0
  store i32 %1, i32* %13, align 8
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1
  %15 = bitcast i32* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %15, i8* nonnull %12, i64 52, i32 4, i1 false)
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 1
  %17 = load i32, i32* %16, align 4
  %18 = or i32 %17, 67108864
  store i32 %18, i32* %16, align 4
  %19 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %5)
  call void @llvm.lifetime.end(i64 56, i8* nonnull %7) #9
  ret i8* %19
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_custom(i32, i8*, i8*, i8*) local_unnamed_addr #6 {
  %5 = alloca %struct.quoting_options, align 8
  %6 = bitcast %struct.quoting_options* %5 to i8*
  call void @llvm.lifetime.start(i64 56, i8* nonnull %6) #9
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %6, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #9
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0
  store i32 10, i32* %7, align 8
  %8 = icmp ne i8* %1, null
  %9 = icmp ne i8* %2, null
  %10 = and i1 %8, %9
  br i1 %10, label %12, label %11

; <label>:11:                                     ; preds = %4
  tail call void @abort() #14
  unreachable

; <label>:12:                                     ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3
  store i8* %1, i8** %13, align 8
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4
  store i8* %2, i8** %14, align 8
  %15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 -1, %struct.quoting_options* nonnull %5) #9
  call void @llvm.lifetime.end(i64 56, i8* nonnull %6) #9
  ret i8* %15
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_custom_mem(i32, i8*, i8*, i8*, i64) local_unnamed_addr #6 {
  %6 = alloca %struct.quoting_options, align 8
  %7 = bitcast %struct.quoting_options* %6 to i8*
  call void @llvm.lifetime.start(i64 56, i8* nonnull %7) #9
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %7, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false)
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0
  store i32 10, i32* %8, align 8
  %9 = icmp ne i8* %1, null
  %10 = icmp ne i8* %2, null
  %11 = and i1 %9, %10
  br i1 %11, label %13, label %12

; <label>:12:                                     ; preds = %5
  tail call void @abort() #14
  unreachable

; <label>:13:                                     ; preds = %5
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3
  store i8* %1, i8** %14, align 8
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4
  store i8* %2, i8** %15, align 8
  %16 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 %4, %struct.quoting_options* nonnull %6)
  call void @llvm.lifetime.end(i64 56, i8* nonnull %7) #9
  ret i8* %16
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_custom(i8*, i8*, i8*) local_unnamed_addr #6 {
  %4 = alloca %struct.quoting_options, align 8
  %5 = bitcast %struct.quoting_options* %4 to i8*
  call void @llvm.lifetime.start(i64 56, i8* nonnull %5) #9
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %5, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #9
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0
  store i32 10, i32* %6, align 8
  %7 = icmp ne i8* %0, null
  %8 = icmp ne i8* %1, null
  %9 = and i1 %7, %8
  br i1 %9, label %11, label %10

; <label>:10:                                     ; preds = %3
  tail call void @abort() #14
  unreachable

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 3
  store i8* %0, i8** %12, align 8
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 4
  store i8* %1, i8** %13, align 8
  %14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4) #9
  call void @llvm.lifetime.end(i64 56, i8* nonnull %5) #9
  ret i8* %14
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_custom_mem(i8*, i8*, i8*, i64) local_unnamed_addr #6 {
  %5 = alloca %struct.quoting_options, align 8
  %6 = bitcast %struct.quoting_options* %5 to i8*
  call void @llvm.lifetime.start(i64 56, i8* nonnull %6) #9
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %6, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #9
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0
  store i32 10, i32* %7, align 8
  %8 = icmp ne i8* %0, null
  %9 = icmp ne i8* %1, null
  %10 = and i1 %8, %9
  br i1 %10, label %12, label %11

; <label>:11:                                     ; preds = %4
  tail call void @abort() #14
  unreachable

; <label>:12:                                     ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3
  store i8* %0, i8** %13, align 8
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4
  store i8* %1, i8** %14, align 8
  %15 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5) #9
  call void @llvm.lifetime.end(i64 56, i8* nonnull %6) #9
  ret i8* %15
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote_n_mem(i32, i8*, i64) local_unnamed_addr #6 {
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @quote_quoting_options)
  ret i8* %4
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote_mem(i8*, i64) local_unnamed_addr #6 {
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @quote_quoting_options) #9
  ret i8* %3
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote_n(i32, i8*) local_unnamed_addr #6 {
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #9
  ret i8* %3
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote(i8*) local_unnamed_addr #6 {
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #9
  ret i8* %2
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc_arn(%struct._IO_FILE*, i8*, i8*, i8*, i8** readonly, i64) local_unnamed_addr #6 {
  %7 = icmp eq i8* %1, null
  br i1 %7, label %10, label %8

; <label>:8:                                      ; preds = %6
  %9 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.329, i64 0, i64 0), i8* nonnull %1, i8* %2, i8* %3) #9
  br label %12

; <label>:10:                                     ; preds = %6
  %11 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.330, i64 0, i64 0), i8* %2, i8* %3) #9
  br label %12

; <label>:12:                                     ; preds = %10, %8
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.331, i64 0, i64 0), i32 5) #9
  %14 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @version_etc_copyright, i64 0, i64 0), i8* %13, i32 2017) #9
  %15 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([203 x i8], [203 x i8]* @.str.3.332, i64 0, i64 0), i32 5) #9
  %16 = tail call i32 @fputs_unlocked(i8* %15, %struct._IO_FILE* %0) #9
  switch i64 %5, label %126 [
    i64 0, label %17
    i64 1, label %18
    i64 2, label %22
    i64 3, label %28
    i64 4, label %36
    i64 5, label %46
    i64 6, label %58
    i64 7, label %72
    i64 8, label %88
    i64 9, label %106
  ]

; <label>:17:                                     ; preds = %12
  tail call void @abort() #14
  unreachable

; <label>:18:                                     ; preds = %12
  %19 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4.333, i64 0, i64 0), i32 5) #9
  %20 = load i8*, i8** %4, align 8
  %21 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %19, i8* %20) #9
  br label %146

; <label>:22:                                     ; preds = %12
  %23 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5.334, i64 0, i64 0), i32 5) #9
  %24 = load i8*, i8** %4, align 8
  %25 = getelementptr inbounds i8*, i8** %4, i64 1
  %26 = load i8*, i8** %25, align 8
  %27 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %23, i8* %24, i8* %26) #9
  br label %146

; <label>:28:                                     ; preds = %12
  %29 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6.335, i64 0, i64 0), i32 5) #9
  %30 = load i8*, i8** %4, align 8
  %31 = getelementptr inbounds i8*, i8** %4, i64 1
  %32 = load i8*, i8** %31, align 8
  %33 = getelementptr inbounds i8*, i8** %4, i64 2
  %34 = load i8*, i8** %33, align 8
  %35 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %29, i8* %30, i8* %32, i8* %34) #9
  br label %146

; <label>:36:                                     ; preds = %12
  %37 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7.336, i64 0, i64 0), i32 5) #9
  %38 = load i8*, i8** %4, align 8
  %39 = getelementptr inbounds i8*, i8** %4, i64 1
  %40 = load i8*, i8** %39, align 8
  %41 = getelementptr inbounds i8*, i8** %4, i64 2
  %42 = load i8*, i8** %41, align 8
  %43 = getelementptr inbounds i8*, i8** %4, i64 3
  %44 = load i8*, i8** %43, align 8
  %45 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %37, i8* %38, i8* %40, i8* %42, i8* %44) #9
  br label %146

; <label>:46:                                     ; preds = %12
  %47 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.8.337, i64 0, i64 0), i32 5) #9
  %48 = load i8*, i8** %4, align 8
  %49 = getelementptr inbounds i8*, i8** %4, i64 1
  %50 = load i8*, i8** %49, align 8
  %51 = getelementptr inbounds i8*, i8** %4, i64 2
  %52 = load i8*, i8** %51, align 8
  %53 = getelementptr inbounds i8*, i8** %4, i64 3
  %54 = load i8*, i8** %53, align 8
  %55 = getelementptr inbounds i8*, i8** %4, i64 4
  %56 = load i8*, i8** %55, align 8
  %57 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %47, i8* %48, i8* %50, i8* %52, i8* %54, i8* %56) #9
  br label %146

; <label>:58:                                     ; preds = %12
  %59 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.9.338, i64 0, i64 0), i32 5) #9
  %60 = load i8*, i8** %4, align 8
  %61 = getelementptr inbounds i8*, i8** %4, i64 1
  %62 = load i8*, i8** %61, align 8
  %63 = getelementptr inbounds i8*, i8** %4, i64 2
  %64 = load i8*, i8** %63, align 8
  %65 = getelementptr inbounds i8*, i8** %4, i64 3
  %66 = load i8*, i8** %65, align 8
  %67 = getelementptr inbounds i8*, i8** %4, i64 4
  %68 = load i8*, i8** %67, align 8
  %69 = getelementptr inbounds i8*, i8** %4, i64 5
  %70 = load i8*, i8** %69, align 8
  %71 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %59, i8* %60, i8* %62, i8* %64, i8* %66, i8* %68, i8* %70) #9
  br label %146

; <label>:72:                                     ; preds = %12
  %73 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.10.339, i64 0, i64 0), i32 5) #9
  %74 = load i8*, i8** %4, align 8
  %75 = getelementptr inbounds i8*, i8** %4, i64 1
  %76 = load i8*, i8** %75, align 8
  %77 = getelementptr inbounds i8*, i8** %4, i64 2
  %78 = load i8*, i8** %77, align 8
  %79 = getelementptr inbounds i8*, i8** %4, i64 3
  %80 = load i8*, i8** %79, align 8
  %81 = getelementptr inbounds i8*, i8** %4, i64 4
  %82 = load i8*, i8** %81, align 8
  %83 = getelementptr inbounds i8*, i8** %4, i64 5
  %84 = load i8*, i8** %83, align 8
  %85 = getelementptr inbounds i8*, i8** %4, i64 6
  %86 = load i8*, i8** %85, align 8
  %87 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %73, i8* %74, i8* %76, i8* %78, i8* %80, i8* %82, i8* %84, i8* %86) #9
  br label %146

; <label>:88:                                     ; preds = %12
  %89 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.11.340, i64 0, i64 0), i32 5) #9
  %90 = load i8*, i8** %4, align 8
  %91 = getelementptr inbounds i8*, i8** %4, i64 1
  %92 = load i8*, i8** %91, align 8
  %93 = getelementptr inbounds i8*, i8** %4, i64 2
  %94 = load i8*, i8** %93, align 8
  %95 = getelementptr inbounds i8*, i8** %4, i64 3
  %96 = load i8*, i8** %95, align 8
  %97 = getelementptr inbounds i8*, i8** %4, i64 4
  %98 = load i8*, i8** %97, align 8
  %99 = getelementptr inbounds i8*, i8** %4, i64 5
  %100 = load i8*, i8** %99, align 8
  %101 = getelementptr inbounds i8*, i8** %4, i64 6
  %102 = load i8*, i8** %101, align 8
  %103 = getelementptr inbounds i8*, i8** %4, i64 7
  %104 = load i8*, i8** %103, align 8
  %105 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %89, i8* %90, i8* %92, i8* %94, i8* %96, i8* %98, i8* %100, i8* %102, i8* %104) #9
  br label %146

; <label>:106:                                    ; preds = %12
  %107 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.12.341, i64 0, i64 0), i32 5) #9
  %108 = load i8*, i8** %4, align 8
  %109 = getelementptr inbounds i8*, i8** %4, i64 1
  %110 = load i8*, i8** %109, align 8
  %111 = getelementptr inbounds i8*, i8** %4, i64 2
  %112 = load i8*, i8** %111, align 8
  %113 = getelementptr inbounds i8*, i8** %4, i64 3
  %114 = load i8*, i8** %113, align 8
  %115 = getelementptr inbounds i8*, i8** %4, i64 4
  %116 = load i8*, i8** %115, align 8
  %117 = getelementptr inbounds i8*, i8** %4, i64 5
  %118 = load i8*, i8** %117, align 8
  %119 = getelementptr inbounds i8*, i8** %4, i64 6
  %120 = load i8*, i8** %119, align 8
  %121 = getelementptr inbounds i8*, i8** %4, i64 7
  %122 = load i8*, i8** %121, align 8
  %123 = getelementptr inbounds i8*, i8** %4, i64 8
  %124 = load i8*, i8** %123, align 8
  %125 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %107, i8* %108, i8* %110, i8* %112, i8* %114, i8* %116, i8* %118, i8* %120, i8* %122, i8* %124) #9
  br label %146

; <label>:126:                                    ; preds = %12
  %127 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.13.342, i64 0, i64 0), i32 5) #9
  %128 = load i8*, i8** %4, align 8
  %129 = getelementptr inbounds i8*, i8** %4, i64 1
  %130 = load i8*, i8** %129, align 8
  %131 = getelementptr inbounds i8*, i8** %4, i64 2
  %132 = load i8*, i8** %131, align 8
  %133 = getelementptr inbounds i8*, i8** %4, i64 3
  %134 = load i8*, i8** %133, align 8
  %135 = getelementptr inbounds i8*, i8** %4, i64 4
  %136 = load i8*, i8** %135, align 8
  %137 = getelementptr inbounds i8*, i8** %4, i64 5
  %138 = load i8*, i8** %137, align 8
  %139 = getelementptr inbounds i8*, i8** %4, i64 6
  %140 = load i8*, i8** %139, align 8
  %141 = getelementptr inbounds i8*, i8** %4, i64 7
  %142 = load i8*, i8** %141, align 8
  %143 = getelementptr inbounds i8*, i8** %4, i64 8
  %144 = load i8*, i8** %143, align 8
  %145 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %127, i8* %128, i8* %130, i8* %132, i8* %134, i8* %136, i8* %138, i8* %140, i8* %142, i8* %144) #9
  br label %146

; <label>:146:                                    ; preds = %126, %106, %88, %72, %58, %46, %36, %28, %22, %18
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc_ar(%struct._IO_FILE*, i8*, i8*, i8*, i8** readonly) local_unnamed_addr #6 {
  br label %6

; <label>:6:                                      ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ]
  %8 = getelementptr inbounds i8*, i8** %4, i64 %7
  %9 = load i8*, i8** %8, align 8
  %10 = icmp eq i8* %9, null
  %11 = add i64 %7, 1
  br i1 %10, label %12, label %6

; <label>:12:                                     ; preds = %6
  tail call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %4, i64 %7)
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc_va(%struct._IO_FILE*, i8*, i8*, i8*, %struct.__va_list_tag* nocapture) local_unnamed_addr #6 {
  %6 = alloca [10 x i8*], align 16
  %7 = bitcast [10 x i8*]* %6 to i8*
  call void @llvm.lifetime.start(i64 80, i8* nonnull %7) #9
  %8 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 0
  %9 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 3
  %10 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 2
  %11 = load i32, i32* %8, align 8
  %12 = icmp ult i32 %11, 41
  br i1 %12, label %13, label %18

; <label>:13:                                     ; preds = %5
  %14 = load i8*, i8** %9, align 8
  %15 = sext i32 %11 to i64
  %16 = getelementptr i8, i8* %14, i64 %15
  %17 = add i32 %11, 8
  store i32 %17, i32* %8, align 8
  br label %21

; <label>:18:                                     ; preds = %5
  %19 = load i8*, i8** %10, align 8
  %20 = getelementptr i8, i8* %19, i64 8
  store i8* %20, i8** %10, align 8
  br label %21

; <label>:21:                                     ; preds = %18, %13
  %22 = phi i32 [ %17, %13 ], [ %11, %18 ]
  %23 = phi i8* [ %16, %13 ], [ %19, %18 ]
  %24 = bitcast i8* %23 to i8**
  %25 = load i8*, i8** %24, align 8
  %26 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 0
  store i8* %25, i8** %26, align 16
  %27 = icmp eq i8* %25, null
  br i1 %27, label %30, label %28

; <label>:28:                                     ; preds = %21
  %29 = icmp ult i32 %22, 41
  br i1 %29, label %35, label %32

; <label>:30:                                     ; preds = %135, %128, %121, %114, %108, %91, %74, %57, %40, %21
  %31 = phi i64 [ 0, %21 ], [ 1, %40 ], [ 2, %57 ], [ 3, %74 ], [ 4, %91 ], [ 5, %108 ], [ 6, %114 ], [ 7, %121 ], [ 8, %128 ], [ %142, %135 ]
  call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %26, i64 %31)
  call void @llvm.lifetime.end(i64 80, i8* nonnull %7) #9
  ret void

; <label>:32:                                     ; preds = %28
  %33 = load i8*, i8** %10, align 8
  %34 = getelementptr i8, i8* %33, i64 8
  store i8* %34, i8** %10, align 8
  br label %40

; <label>:35:                                     ; preds = %28
  %36 = load i8*, i8** %9, align 8
  %37 = sext i32 %22 to i64
  %38 = getelementptr i8, i8* %36, i64 %37
  %39 = add i32 %22, 8
  store i32 %39, i32* %8, align 8
  br label %40

; <label>:40:                                     ; preds = %35, %32
  %41 = phi i32 [ %39, %35 ], [ %22, %32 ]
  %42 = phi i8* [ %38, %35 ], [ %33, %32 ]
  %43 = bitcast i8* %42 to i8**
  %44 = load i8*, i8** %43, align 8
  %45 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 1
  store i8* %44, i8** %45, align 8
  %46 = icmp eq i8* %44, null
  br i1 %46, label %30, label %47

; <label>:47:                                     ; preds = %40
  %48 = icmp ult i32 %41, 41
  br i1 %48, label %52, label %49

; <label>:49:                                     ; preds = %47
  %50 = load i8*, i8** %10, align 8
  %51 = getelementptr i8, i8* %50, i64 8
  store i8* %51, i8** %10, align 8
  br label %57

; <label>:52:                                     ; preds = %47
  %53 = load i8*, i8** %9, align 8
  %54 = sext i32 %41 to i64
  %55 = getelementptr i8, i8* %53, i64 %54
  %56 = add i32 %41, 8
  store i32 %56, i32* %8, align 8
  br label %57

; <label>:57:                                     ; preds = %52, %49
  %58 = phi i32 [ %56, %52 ], [ %41, %49 ]
  %59 = phi i8* [ %55, %52 ], [ %50, %49 ]
  %60 = bitcast i8* %59 to i8**
  %61 = load i8*, i8** %60, align 8
  %62 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 2
  store i8* %61, i8** %62, align 16
  %63 = icmp eq i8* %61, null
  br i1 %63, label %30, label %64

; <label>:64:                                     ; preds = %57
  %65 = icmp ult i32 %58, 41
  br i1 %65, label %69, label %66

; <label>:66:                                     ; preds = %64
  %67 = load i8*, i8** %10, align 8
  %68 = getelementptr i8, i8* %67, i64 8
  store i8* %68, i8** %10, align 8
  br label %74

; <label>:69:                                     ; preds = %64
  %70 = load i8*, i8** %9, align 8
  %71 = sext i32 %58 to i64
  %72 = getelementptr i8, i8* %70, i64 %71
  %73 = add i32 %58, 8
  store i32 %73, i32* %8, align 8
  br label %74

; <label>:74:                                     ; preds = %69, %66
  %75 = phi i32 [ %73, %69 ], [ %58, %66 ]
  %76 = phi i8* [ %72, %69 ], [ %67, %66 ]
  %77 = bitcast i8* %76 to i8**
  %78 = load i8*, i8** %77, align 8
  %79 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 3
  store i8* %78, i8** %79, align 8
  %80 = icmp eq i8* %78, null
  br i1 %80, label %30, label %81

; <label>:81:                                     ; preds = %74
  %82 = icmp ult i32 %75, 41
  br i1 %82, label %86, label %83

; <label>:83:                                     ; preds = %81
  %84 = load i8*, i8** %10, align 8
  %85 = getelementptr i8, i8* %84, i64 8
  store i8* %85, i8** %10, align 8
  br label %91

; <label>:86:                                     ; preds = %81
  %87 = load i8*, i8** %9, align 8
  %88 = sext i32 %75 to i64
  %89 = getelementptr i8, i8* %87, i64 %88
  %90 = add i32 %75, 8
  store i32 %90, i32* %8, align 8
  br label %91

; <label>:91:                                     ; preds = %86, %83
  %92 = phi i32 [ %90, %86 ], [ %75, %83 ]
  %93 = phi i8* [ %89, %86 ], [ %84, %83 ]
  %94 = bitcast i8* %93 to i8**
  %95 = load i8*, i8** %94, align 8
  %96 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 4
  store i8* %95, i8** %96, align 16
  %97 = icmp eq i8* %95, null
  br i1 %97, label %30, label %98

; <label>:98:                                     ; preds = %91
  %99 = icmp ult i32 %92, 41
  br i1 %99, label %103, label %100

; <label>:100:                                    ; preds = %98
  %101 = load i8*, i8** %10, align 8
  %102 = getelementptr i8, i8* %101, i64 8
  store i8* %102, i8** %10, align 8
  br label %108

; <label>:103:                                    ; preds = %98
  %104 = load i8*, i8** %9, align 8
  %105 = sext i32 %92 to i64
  %106 = getelementptr i8, i8* %104, i64 %105
  %107 = add i32 %92, 8
  store i32 %107, i32* %8, align 8
  br label %108

; <label>:108:                                    ; preds = %103, %100
  %109 = phi i8* [ %106, %103 ], [ %101, %100 ]
  %110 = bitcast i8* %109 to i8**
  %111 = load i8*, i8** %110, align 8
  %112 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 5
  store i8* %111, i8** %112, align 8
  %113 = icmp eq i8* %111, null
  br i1 %113, label %30, label %114

; <label>:114:                                    ; preds = %108
  %115 = load i8*, i8** %10, align 8
  %116 = getelementptr i8, i8* %115, i64 8
  store i8* %116, i8** %10, align 8
  %117 = bitcast i8* %115 to i8**
  %118 = load i8*, i8** %117, align 8
  %119 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 6
  store i8* %118, i8** %119, align 16
  %120 = icmp eq i8* %118, null
  br i1 %120, label %30, label %121

; <label>:121:                                    ; preds = %114
  %122 = load i8*, i8** %10, align 8
  %123 = getelementptr i8, i8* %122, i64 8
  store i8* %123, i8** %10, align 8
  %124 = bitcast i8* %122 to i8**
  %125 = load i8*, i8** %124, align 8
  %126 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 7
  store i8* %125, i8** %126, align 8
  %127 = icmp eq i8* %125, null
  br i1 %127, label %30, label %128

; <label>:128:                                    ; preds = %121
  %129 = load i8*, i8** %10, align 8
  %130 = getelementptr i8, i8* %129, i64 8
  store i8* %130, i8** %10, align 8
  %131 = bitcast i8* %129 to i8**
  %132 = load i8*, i8** %131, align 8
  %133 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 8
  store i8* %132, i8** %133, align 16
  %134 = icmp eq i8* %132, null
  br i1 %134, label %30, label %135

; <label>:135:                                    ; preds = %128
  %136 = load i8*, i8** %10, align 8
  %137 = getelementptr i8, i8* %136, i64 8
  store i8* %137, i8** %10, align 8
  %138 = bitcast i8* %136 to i8**
  %139 = load i8*, i8** %138, align 8
  %140 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 9
  store i8* %139, i8** %140, align 8
  %141 = icmp eq i8* %139, null
  %142 = select i1 %141, i64 9, i64 10
  br label %30
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc(%struct._IO_FILE*, i8*, i8*, i8*, ...) local_unnamed_addr #6 {
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  %6 = bitcast [1 x %struct.__va_list_tag]* %5 to i8*
  call void @llvm.lifetime.start(i64 24, i8* nonnull %6) #9
  %7 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i64 0, i64 0
  call void @llvm.va_start(i8* nonnull %6)
  call void @version_etc_va(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, %struct.__va_list_tag* nonnull %7)
  call void @llvm.va_end(i8* nonnull %6)
  call void @llvm.lifetime.end(i64 24, i8* nonnull %6) #9
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define void @emit_bug_reporting_address() local_unnamed_addr #6 {
  %1 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.14.345, i64 0, i64 0), i32 5) #9
  %2 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.15.346, i64 0, i64 0)) #9
  %3 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16.347, i64 0, i64 0), i32 5) #9
  %4 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %3, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17.348, i64 0, i64 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.18.349, i64 0, i64 0)) #9
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.19.350, i64 0, i64 0), i32 5) #9
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %7 = tail call i32 @fputs_unlocked(i8* %5, %struct._IO_FILE* %6) #9
  ret void
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @xnmalloc(i64, i64) local_unnamed_addr #12 {
  %3 = udiv i64 9223372036854775807, %1
  %4 = icmp ult i64 %3, %0
  br i1 %4, label %5, label %6

; <label>:5:                                      ; preds = %2
  tail call void @xalloc_die() #14
  unreachable

; <label>:6:                                      ; preds = %2
  %7 = mul i64 %1, %0
  %8 = tail call noalias i8* @malloc(i64 %7) #9
  %9 = icmp eq i8* %8, null
  %10 = icmp ne i64 %7, 0
  %11 = and i1 %10, %9
  br i1 %11, label %12, label %13

; <label>:12:                                     ; preds = %6
  tail call void @xalloc_die() #14
  unreachable

; <label>:13:                                     ; preds = %6
  ret i8* %8
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xmalloc(i64) local_unnamed_addr #6 {
  %2 = tail call noalias i8* @malloc(i64 %0) #9
  %3 = icmp eq i8* %2, null
  %4 = icmp ne i64 %0, 0
  %5 = and i1 %4, %3
  br i1 %5, label %6, label %7

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #14
  unreachable

; <label>:7:                                      ; preds = %1
  ret i8* %2
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @xnrealloc(i8*, i64, i64) local_unnamed_addr #12 {
  %4 = udiv i64 9223372036854775807, %2
  %5 = icmp ult i64 %4, %1
  br i1 %5, label %6, label %7

; <label>:6:                                      ; preds = %3
  tail call void @xalloc_die() #14
  unreachable

; <label>:7:                                      ; preds = %3
  %8 = mul i64 %2, %1
  %9 = icmp eq i64 %8, 0
  %10 = icmp ne i8* %0, null
  %11 = and i1 %10, %9
  br i1 %11, label %12, label %13

; <label>:12:                                     ; preds = %7
  tail call void @free(i8* nonnull %0) #9
  br label %19

; <label>:13:                                     ; preds = %7
  %14 = tail call i8* @realloc(i8* %0, i64 %8) #9
  %15 = icmp eq i8* %14, null
  %16 = icmp ne i64 %8, 0
  %17 = and i1 %16, %15
  br i1 %17, label %18, label %19

; <label>:18:                                     ; preds = %13
  tail call void @xalloc_die() #14
  unreachable

; <label>:19:                                     ; preds = %12, %13
  %20 = phi i8* [ null, %12 ], [ %14, %13 ]
  ret i8* %20
}

; Function Attrs: nounwind
declare noalias i8* @realloc(i8* nocapture, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xrealloc(i8*, i64) local_unnamed_addr #6 {
  %3 = icmp eq i64 %1, 0
  %4 = icmp ne i8* %0, null
  %5 = and i1 %4, %3
  br i1 %5, label %6, label %7

; <label>:6:                                      ; preds = %2
  tail call void @free(i8* nonnull %0) #9
  br label %13

; <label>:7:                                      ; preds = %2
  %8 = tail call i8* @realloc(i8* %0, i64 %1) #9
  %9 = icmp eq i8* %8, null
  %10 = icmp ne i64 %1, 0
  %11 = and i1 %10, %9
  br i1 %11, label %12, label %13

; <label>:12:                                     ; preds = %7
  tail call void @xalloc_die() #14
  unreachable

; <label>:13:                                     ; preds = %7, %6
  %14 = phi i8* [ null, %6 ], [ %8, %7 ]
  ret i8* %14
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @x2nrealloc(i8*, i64* nocapture, i64) local_unnamed_addr #12 {
  %4 = load i64, i64* %1, align 8
  %5 = icmp eq i8* %0, null
  br i1 %5, label %6, label %13

; <label>:6:                                      ; preds = %3
  %7 = icmp eq i64 %4, 0
  br i1 %7, label %8, label %17

; <label>:8:                                      ; preds = %6
  %9 = udiv i64 128, %2
  %10 = icmp ugt i64 %2, 128
  %11 = zext i1 %10 to i64
  %12 = add nuw nsw i64 %9, %11
  br label %17

; <label>:13:                                     ; preds = %3
  %14 = udiv i64 6148914691236517204, %2
  %15 = icmp ugt i64 %14, %4
  br i1 %15, label %20, label %16

; <label>:16:                                     ; preds = %13
  tail call void @xalloc_die() #14
  unreachable

; <label>:17:                                     ; preds = %6, %8
  %18 = phi i64 [ %12, %8 ], [ %4, %6 ]
  store i64 %18, i64* %1, align 8
  %19 = mul i64 %18, %2
  br label %27

; <label>:20:                                     ; preds = %13
  %21 = lshr i64 %4, 1
  %22 = add i64 %4, 1
  %23 = add i64 %22, %21
  store i64 %23, i64* %1, align 8
  %24 = mul i64 %23, %2
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %27

; <label>:26:                                     ; preds = %20
  tail call void @free(i8* nonnull %0) #9
  br label %34

; <label>:27:                                     ; preds = %17, %20
  %28 = phi i64 [ %19, %17 ], [ %24, %20 ]
  %29 = tail call i8* @realloc(i8* %0, i64 %28) #9
  %30 = icmp eq i8* %29, null
  %31 = icmp ne i64 %28, 0
  %32 = and i1 %31, %30
  br i1 %32, label %33, label %34

; <label>:33:                                     ; preds = %27
  tail call void @xalloc_die() #14
  unreachable

; <label>:34:                                     ; preds = %26, %27
  %35 = phi i8* [ null, %26 ], [ %29, %27 ]
  ret i8* %35
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @xcharalloc(i64) local_unnamed_addr #12 {
  %2 = tail call noalias i8* @malloc(i64 %0) #9
  %3 = icmp eq i8* %2, null
  %4 = icmp ne i64 %0, 0
  %5 = and i1 %4, %3
  br i1 %5, label %6, label %7

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #14
  unreachable

; <label>:7:                                      ; preds = %1
  ret i8* %2
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @x2realloc(i8*, i64* nocapture) local_unnamed_addr #6 {
  %3 = load i64, i64* %1, align 8
  %4 = icmp eq i8* %0, null
  br i1 %4, label %5, label %8

; <label>:5:                                      ; preds = %2
  %6 = icmp eq i64 %3, 0
  %7 = select i1 %6, i64 128, i64 %3
  store i64 %7, i64* %1, align 8
  br label %17

; <label>:8:                                      ; preds = %2
  %9 = icmp ult i64 %3, 6148914691236517204
  br i1 %9, label %11, label %10

; <label>:10:                                     ; preds = %8
  tail call void @xalloc_die() #14
  unreachable

; <label>:11:                                     ; preds = %8
  %12 = lshr i64 %3, 1
  %13 = add i64 %3, 1
  %14 = add i64 %13, %12
  store i64 %14, i64* %1, align 8
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %17

; <label>:16:                                     ; preds = %11
  tail call void @free(i8* nonnull %0) #9
  br label %24

; <label>:17:                                     ; preds = %11, %5
  %18 = phi i64 [ %7, %5 ], [ %14, %11 ]
  %19 = tail call i8* @realloc(i8* %0, i64 %18) #9
  %20 = icmp eq i8* %19, null
  %21 = icmp ne i64 %18, 0
  %22 = and i1 %21, %20
  br i1 %22, label %23, label %24

; <label>:23:                                     ; preds = %17
  tail call void @xalloc_die() #14
  unreachable

; <label>:24:                                     ; preds = %16, %17
  %25 = phi i8* [ null, %16 ], [ %19, %17 ]
  ret i8* %25
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xzalloc(i64) local_unnamed_addr #6 {
  %2 = tail call noalias i8* @malloc(i64 %0) #9
  %3 = icmp eq i8* %2, null
  %4 = icmp ne i64 %0, 0
  %5 = and i1 %4, %3
  br i1 %5, label %6, label %7

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #14
  unreachable

; <label>:7:                                      ; preds = %1
  tail call void @llvm.memset.p0i8.i64(i8* %2, i8 0, i64 %0, i32 1, i1 false)
  ret i8* %2
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xcalloc(i64, i64) local_unnamed_addr #6 {
  %3 = udiv i64 9223372036854775807, %1
  %4 = icmp ult i64 %3, %0
  br i1 %4, label %8, label %5

; <label>:5:                                      ; preds = %2
  %6 = tail call i8* @rpl_calloc(i64 %0, i64 %1) #9
  %7 = icmp eq i8* %6, null
  br i1 %7, label %8, label %9

; <label>:8:                                      ; preds = %5, %2
  tail call void @xalloc_die() #14
  unreachable

; <label>:9:                                      ; preds = %5
  ret i8* %6
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xmemdup(i8* nocapture readonly, i64) local_unnamed_addr #6 {
  %3 = tail call noalias i8* @malloc(i64 %1) #9
  %4 = icmp eq i8* %3, null
  %5 = icmp ne i64 %1, 0
  %6 = and i1 %5, %4
  br i1 %6, label %7, label %8

; <label>:7:                                      ; preds = %2
  tail call void @xalloc_die() #14
  unreachable

; <label>:8:                                      ; preds = %2
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %3, i8* %0, i64 %1, i32 1, i1 false)
  ret i8* %3
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xstrdup(i8* nocapture readonly) local_unnamed_addr #6 {
  %2 = tail call i64 @strlen(i8* %0) #13
  %3 = add i64 %2, 1
  %4 = tail call noalias i8* @malloc(i64 %3) #9
  %5 = icmp eq i8* %4, null
  %6 = icmp ne i64 %3, 0
  %7 = and i1 %6, %5
  br i1 %7, label %8, label %9

; <label>:8:                                      ; preds = %1
  tail call void @xalloc_die() #14
  unreachable

; <label>:9:                                      ; preds = %1
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %4, i8* %0, i64 %3, i32 1, i1 false) #9
  ret i8* %4
}

; Function Attrs: noreturn nounwind sspstrong uwtable
define void @xalloc_die() local_unnamed_addr #0 {
  %1 = load volatile i32, i32* @exit_failure, align 4
  %2 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1.361, i64 0, i64 0), i32 5) #9
  tail call void (i32, i32, i8*, ...) @error(i32 %1, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.362, i64 0, i64 0), i8* %2) #9
  tail call void @abort() #14
  unreachable
}

; Function Attrs: nounwind sspstrong uwtable
define i64 @xnumtoumax(i8*, i32, i64, i64, i8*, i8*, i32) local_unnamed_addr #6 {
  %8 = alloca i64, align 8
  %9 = bitcast i64* %8 to i8*
  call void @llvm.lifetime.start(i64 8, i8* nonnull %9) #9
  %10 = call i32 @xstrtoumax(i8* %0, i8** null, i32 %1, i64* nonnull %8, i8* %4) #9
  switch i32 %10, label %11 [
    i32 0, label %13
    i32 1, label %22
    i32 3, label %24
  ]

; <label>:11:                                     ; preds = %7
  %12 = tail call i32* @__errno_location() #1
  br label %26

; <label>:13:                                     ; preds = %7
  %14 = load i64, i64* %8, align 8
  %15 = icmp ult i64 %14, %2
  %16 = icmp ugt i64 %14, %3
  %17 = or i1 %15, %16
  br i1 %17, label %18, label %35

; <label>:18:                                     ; preds = %13
  %19 = icmp ugt i64 %14, 1073741823
  %20 = tail call i32* @__errno_location() #1
  %21 = select i1 %19, i32 75, i32 34
  store i32 %21, i32* %20, align 4
  br label %26

; <label>:22:                                     ; preds = %7
  %23 = tail call i32* @__errno_location() #1
  store i32 75, i32* %23, align 4
  br label %26

; <label>:24:                                     ; preds = %7
  %25 = tail call i32* @__errno_location() #1
  store i32 0, i32* %25, align 4
  br label %26

; <label>:26:                                     ; preds = %11, %18, %22, %24
  %27 = phi i32* [ %12, %11 ], [ %20, %18 ], [ %23, %22 ], [ %25, %24 ]
  %28 = icmp ne i32 %6, 0
  %29 = select i1 %28, i32 %6, i32 1
  %30 = load i32, i32* %27, align 4
  %31 = icmp eq i32 %30, 22
  %32 = select i1 %31, i32 0, i32 %30
  %33 = call i8* @quote(i8* %0) #9
  call void (i32, i32, i8*, ...) @error(i32 %29, i32 %32, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.365, i64 0, i64 0), i8* %5, i8* %33) #9
  %34 = load i64, i64* %8, align 8
  br label %35

; <label>:35:                                     ; preds = %13, %26
  %36 = phi i64 [ %14, %13 ], [ %34, %26 ]
  call void @llvm.lifetime.end(i64 8, i8* nonnull %9) #9
  ret i64 %36
}

; Function Attrs: nounwind sspstrong uwtable
define i64 @xdectoumax(i8*, i64, i64, i8*, i8*, i32) local_unnamed_addr #6 {
  %7 = tail call i64 @xnumtoumax(i8* %0, i32 10, i64 %1, i64 %2, i8* %3, i8* %4, i32 %5)
  ret i64 %7
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @xstrtol(i8*, i8**, i32, i64* nocapture, i8* readonly) local_unnamed_addr #6 {
  %6 = alloca i8*, align 8
  %7 = bitcast i8** %6 to i8*
  call void @llvm.lifetime.start(i64 8, i8* nonnull %7) #9
  %8 = icmp ult i32 %2, 37
  br i1 %8, label %10, label %9

; <label>:9:                                      ; preds = %5
  tail call void @__assert_fail(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.368, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1.369, i64 0, i64 0), i32 96, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @__PRETTY_FUNCTION__.xstrtol, i64 0, i64 0)) #14
  unreachable

; <label>:10:                                     ; preds = %5
  %11 = icmp ne i8** %1, null
  %12 = select i1 %11, i8** %1, i8** %6
  %13 = tail call i32* @__errno_location() #1
  store i32 0, i32* %13, align 4
  %14 = call i64 @strtol(i8* %0, i8** %12, i32 %2) #9
  %15 = load i8*, i8** %12, align 8
  %16 = icmp eq i8* %15, %0
  br i1 %16, label %17, label %26

; <label>:17:                                     ; preds = %10
  %18 = icmp eq i8* %4, null
  br i1 %18, label %196, label %19

; <label>:19:                                     ; preds = %17
  %20 = load i8, i8* %0, align 1
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %196, label %22

; <label>:22:                                     ; preds = %19
  %23 = sext i8 %20 to i32
  %24 = tail call i8* @strchr(i8* nonnull %4, i32 %23) #9
  %25 = icmp eq i8* %24, null
  br i1 %25, label %196, label %33

; <label>:26:                                     ; preds = %10
  %27 = load i32, i32* %13, align 4
  switch i32 %27, label %196 [
    i32 0, label %29
    i32 34, label %28
  ]

; <label>:28:                                     ; preds = %26
  br label %29

; <label>:29:                                     ; preds = %26, %28
  %30 = phi i32 [ 1, %28 ], [ 0, %26 ]
  %31 = icmp eq i8* %4, null
  br i1 %31, label %32, label %33

; <label>:32:                                     ; preds = %29
  store i64 %14, i64* %3, align 8
  br label %196

; <label>:33:                                     ; preds = %22, %29
  %34 = phi i32 [ %30, %29 ], [ 0, %22 ]
  %35 = phi i64 [ %14, %29 ], [ 1, %22 ]
  %36 = load i8, i8* %15, align 1
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %193, label %38

; <label>:38:                                     ; preds = %33
  %39 = sext i8 %36 to i32
  %40 = tail call i8* @strchr(i8* nonnull %4, i32 %39) #9
  %41 = icmp eq i8* %40, null
  br i1 %41, label %42, label %44

; <label>:42:                                     ; preds = %38
  store i64 %35, i64* %3, align 8
  %43 = or i32 %34, 2
  br label %196

; <label>:44:                                     ; preds = %38
  switch i32 %39, label %58 [
    i32 69, label %45
    i32 71, label %45
    i32 103, label %45
    i32 107, label %45
    i32 75, label %45
    i32 77, label %45
    i32 109, label %45
    i32 80, label %45
    i32 84, label %45
    i32 116, label %45
    i32 89, label %45
    i32 90, label %45
  ]

; <label>:45:                                     ; preds = %44, %44, %44, %44, %44, %44, %44, %44, %44, %44, %44, %44
  %46 = tail call i8* @strchr(i8* nonnull %4, i32 48) #9
  %47 = icmp eq i8* %46, null
  br i1 %47, label %58, label %48

; <label>:48:                                     ; preds = %45
  %49 = getelementptr inbounds i8, i8* %15, i64 1
  %50 = load i8, i8* %49, align 1
  %51 = sext i8 %50 to i32
  switch i32 %51, label %58 [
    i32 105, label %52
    i32 66, label %57
    i32 68, label %57
  ]

; <label>:52:                                     ; preds = %48
  %53 = getelementptr inbounds i8, i8* %15, i64 2
  %54 = load i8, i8* %53, align 1
  %55 = icmp eq i8 %54, 66
  %56 = select i1 %55, i64 3, i64 1
  br label %58

; <label>:57:                                     ; preds = %48, %48
  br label %58

; <label>:58:                                     ; preds = %52, %45, %48, %57, %44
  %59 = phi i64 [ 1024, %44 ], [ 1024, %48 ], [ 1000, %57 ], [ 1024, %45 ], [ 1024, %52 ]
  %60 = phi i64 [ 1, %44 ], [ 1, %48 ], [ 2, %57 ], [ 1, %45 ], [ %56, %52 ]
  switch i32 %39, label %182 [
    i32 98, label %61
    i32 66, label %68
    i32 99, label %184
    i32 69, label %75
    i32 71, label %88
    i32 103, label %88
    i32 107, label %101
    i32 75, label %101
    i32 77, label %110
    i32 109, label %110
    i32 80, label %123
    i32 84, label %136
    i32 116, label %136
    i32 119, label %149
    i32 89, label %156
    i32 90, label %169
  ]

; <label>:61:                                     ; preds = %58
  %62 = icmp slt i64 %35, -18014398509481984
  br i1 %62, label %184, label %63

; <label>:63:                                     ; preds = %61
  %64 = icmp sgt i64 %35, 18014398509481983
  %65 = shl nsw i64 %35, 9
  %66 = select i1 %64, i64 9223372036854775807, i64 %65
  %67 = zext i1 %64 to i32
  br label %184

; <label>:68:                                     ; preds = %58
  %69 = icmp slt i64 %35, -9007199254740992
  br i1 %69, label %184, label %70

; <label>:70:                                     ; preds = %68
  %71 = icmp sgt i64 %35, 9007199254740991
  %72 = shl nsw i64 %35, 10
  %73 = select i1 %71, i64 9223372036854775807, i64 %72
  %74 = zext i1 %71 to i32
  br label %184

; <label>:75:                                     ; preds = %58
  %76 = sdiv i64 -9223372036854775808, %59
  %77 = icmp slt i64 %35, %76
  br i1 %77, label %84, label %78

; <label>:78:                                     ; preds = %75
  %79 = udiv i64 9223372036854775807, %59
  %80 = icmp slt i64 %79, %35
  %81 = mul nsw i64 %35, %59
  %82 = select i1 %80, i64 9223372036854775807, i64 %81
  %83 = zext i1 %80 to i32
  br label %84

; <label>:84:                                     ; preds = %78, %75
  %85 = phi i64 [ -9223372036854775808, %75 ], [ %82, %78 ]
  %86 = phi i32 [ 1, %75 ], [ %83, %78 ]
  %87 = icmp slt i64 %85, %76
  br i1 %87, label %204, label %198

; <label>:88:                                     ; preds = %58, %58
  %89 = sdiv i64 -9223372036854775808, %59
  %90 = icmp slt i64 %35, %89
  br i1 %90, label %97, label %91

; <label>:91:                                     ; preds = %88
  %92 = udiv i64 9223372036854775807, %59
  %93 = icmp slt i64 %92, %35
  %94 = mul nsw i64 %35, %59
  %95 = select i1 %93, i64 9223372036854775807, i64 %94
  %96 = zext i1 %93 to i32
  br label %97

; <label>:97:                                     ; preds = %91, %88
  %98 = phi i64 [ -9223372036854775808, %88 ], [ %95, %91 ]
  %99 = phi i32 [ 1, %88 ], [ %96, %91 ]
  %100 = icmp slt i64 %98, %89
  br i1 %100, label %258, label %252

; <label>:101:                                    ; preds = %58, %58
  %102 = sdiv i64 -9223372036854775808, %59
  %103 = icmp slt i64 %35, %102
  br i1 %103, label %184, label %104

; <label>:104:                                    ; preds = %101
  %105 = udiv i64 9223372036854775807, %59
  %106 = icmp slt i64 %105, %35
  %107 = mul nsw i64 %35, %59
  %108 = select i1 %106, i64 9223372036854775807, i64 %107
  %109 = zext i1 %106 to i32
  br label %184

; <label>:110:                                    ; preds = %58, %58
  %111 = sdiv i64 -9223372036854775808, %59
  %112 = icmp slt i64 %35, %111
  br i1 %112, label %119, label %113

; <label>:113:                                    ; preds = %110
  %114 = udiv i64 9223372036854775807, %59
  %115 = icmp slt i64 %114, %35
  %116 = mul nsw i64 %35, %59
  %117 = select i1 %115, i64 9223372036854775807, i64 %116
  %118 = zext i1 %115 to i32
  br label %119

; <label>:119:                                    ; preds = %113, %110
  %120 = phi i64 [ -9223372036854775808, %110 ], [ %117, %113 ]
  %121 = phi i32 [ 1, %110 ], [ %118, %113 ]
  %122 = icmp slt i64 %120, %111
  br i1 %122, label %279, label %273

; <label>:123:                                    ; preds = %58
  %124 = sdiv i64 -9223372036854775808, %59
  %125 = icmp slt i64 %35, %124
  br i1 %125, label %132, label %126

; <label>:126:                                    ; preds = %123
  %127 = udiv i64 9223372036854775807, %59
  %128 = icmp slt i64 %127, %35
  %129 = mul nsw i64 %35, %59
  %130 = select i1 %128, i64 9223372036854775807, i64 %129
  %131 = zext i1 %128 to i32
  br label %132

; <label>:132:                                    ; preds = %126, %123
  %133 = phi i64 [ -9223372036854775808, %123 ], [ %130, %126 ]
  %134 = phi i32 [ 1, %123 ], [ %131, %126 ]
  %135 = icmp slt i64 %133, %124
  br i1 %135, label %289, label %283

; <label>:136:                                    ; preds = %58, %58
  %137 = sdiv i64 -9223372036854775808, %59
  %138 = icmp slt i64 %35, %137
  br i1 %138, label %145, label %139

; <label>:139:                                    ; preds = %136
  %140 = udiv i64 9223372036854775807, %59
  %141 = icmp slt i64 %140, %35
  %142 = mul nsw i64 %35, %59
  %143 = select i1 %141, i64 9223372036854775807, i64 %142
  %144 = zext i1 %141 to i32
  br label %145

; <label>:145:                                    ; preds = %139, %136
  %146 = phi i64 [ -9223372036854775808, %136 ], [ %143, %139 ]
  %147 = phi i32 [ 1, %136 ], [ %144, %139 ]
  %148 = icmp slt i64 %146, %137
  br i1 %148, label %332, label %326

; <label>:149:                                    ; preds = %58
  %150 = icmp slt i64 %35, -4611686018427387904
  br i1 %150, label %184, label %151

; <label>:151:                                    ; preds = %149
  %152 = icmp sgt i64 %35, 4611686018427387903
  %153 = shl nsw i64 %35, 1
  %154 = select i1 %152, i64 9223372036854775807, i64 %153
  %155 = zext i1 %152 to i32
  br label %184

; <label>:156:                                    ; preds = %58
  %157 = sdiv i64 -9223372036854775808, %59
  %158 = icmp slt i64 %35, %157
  br i1 %158, label %165, label %159

; <label>:159:                                    ; preds = %156
  %160 = udiv i64 9223372036854775807, %59
  %161 = icmp slt i64 %160, %35
  %162 = mul nsw i64 %35, %59
  %163 = select i1 %161, i64 9223372036854775807, i64 %162
  %164 = zext i1 %161 to i32
  br label %165

; <label>:165:                                    ; preds = %159, %156
  %166 = phi i64 [ -9223372036854775808, %156 ], [ %163, %159 ]
  %167 = phi i32 [ 1, %156 ], [ %164, %159 ]
  %168 = icmp slt i64 %166, %157
  br i1 %168, label %364, label %358

; <label>:169:                                    ; preds = %58
  %170 = sdiv i64 -9223372036854775808, %59
  %171 = icmp slt i64 %35, %170
  br i1 %171, label %178, label %172

; <label>:172:                                    ; preds = %169
  %173 = udiv i64 9223372036854775807, %59
  %174 = icmp slt i64 %173, %35
  %175 = mul nsw i64 %35, %59
  %176 = select i1 %174, i64 9223372036854775807, i64 %175
  %177 = zext i1 %174 to i32
  br label %178

; <label>:178:                                    ; preds = %172, %169
  %179 = phi i64 [ -9223372036854775808, %169 ], [ %176, %172 ]
  %180 = phi i32 [ 1, %169 ], [ %177, %172 ]
  %181 = icmp slt i64 %179, %170
  br i1 %181, label %440, label %434

; <label>:182:                                    ; preds = %58
  store i64 %35, i64* %3, align 8
  %183 = or i32 %34, 2
  br label %196

; <label>:184:                                    ; preds = %101, %104, %495, %430, %354, %322, %279, %269, %248, %58, %61, %63, %68, %70, %149, %151
  %185 = phi i64 [ %35, %58 ], [ -9223372036854775808, %61 ], [ %66, %63 ], [ -9223372036854775808, %68 ], [ %73, %70 ], [ -9223372036854775808, %149 ], [ %154, %151 ], [ %249, %248 ], [ %270, %269 ], [ %280, %279 ], [ %323, %322 ], [ %355, %354 ], [ %431, %430 ], [ %496, %495 ], [ -9223372036854775808, %101 ], [ %108, %104 ]
  %186 = phi i32 [ 0, %58 ], [ 1, %61 ], [ %67, %63 ], [ 1, %68 ], [ %74, %70 ], [ 1, %149 ], [ %155, %151 ], [ %251, %248 ], [ %272, %269 ], [ %282, %279 ], [ %325, %322 ], [ %357, %354 ], [ %433, %430 ], [ %498, %495 ], [ 1, %101 ], [ %109, %104 ]
  %187 = or i32 %186, %34
  %188 = getelementptr inbounds i8, i8* %15, i64 %60
  store i8* %188, i8** %12, align 8
  %189 = load i8, i8* %188, align 1
  %190 = icmp eq i8 %189, 0
  %191 = or i32 %187, 2
  %192 = select i1 %190, i32 %187, i32 %191
  br label %193

; <label>:193:                                    ; preds = %184, %33
  %194 = phi i64 [ %35, %33 ], [ %185, %184 ]
  %195 = phi i32 [ %34, %33 ], [ %192, %184 ]
  store i64 %194, i64* %3, align 8
  br label %196

; <label>:196:                                    ; preds = %42, %182, %26, %17, %19, %22, %193, %32
  %197 = phi i32 [ %195, %193 ], [ %30, %32 ], [ 4, %22 ], [ 4, %19 ], [ 4, %17 ], [ 4, %26 ], [ %43, %42 ], [ %183, %182 ]
  call void @llvm.lifetime.end(i64 8, i8* nonnull %7) #9
  ret i32 %197

; <label>:198:                                    ; preds = %84
  %199 = udiv i64 9223372036854775807, %59
  %200 = icmp slt i64 %199, %85
  %201 = mul nsw i64 %85, %59
  %202 = select i1 %200, i64 9223372036854775807, i64 %201
  %203 = zext i1 %200 to i32
  br label %204

; <label>:204:                                    ; preds = %198, %84
  %205 = phi i64 [ -9223372036854775808, %84 ], [ %202, %198 ]
  %206 = phi i32 [ 1, %84 ], [ %203, %198 ]
  %207 = or i32 %206, %86
  %208 = icmp slt i64 %205, %76
  br i1 %208, label %215, label %209

; <label>:209:                                    ; preds = %204
  %210 = udiv i64 9223372036854775807, %59
  %211 = icmp slt i64 %210, %205
  %212 = mul nsw i64 %205, %59
  %213 = select i1 %211, i64 9223372036854775807, i64 %212
  %214 = zext i1 %211 to i32
  br label %215

; <label>:215:                                    ; preds = %209, %204
  %216 = phi i64 [ -9223372036854775808, %204 ], [ %213, %209 ]
  %217 = phi i32 [ 1, %204 ], [ %214, %209 ]
  %218 = or i32 %217, %207
  %219 = icmp slt i64 %216, %76
  br i1 %219, label %226, label %220

; <label>:220:                                    ; preds = %215
  %221 = udiv i64 9223372036854775807, %59
  %222 = icmp slt i64 %221, %216
  %223 = mul nsw i64 %216, %59
  %224 = select i1 %222, i64 9223372036854775807, i64 %223
  %225 = zext i1 %222 to i32
  br label %226

; <label>:226:                                    ; preds = %220, %215
  %227 = phi i64 [ -9223372036854775808, %215 ], [ %224, %220 ]
  %228 = phi i32 [ 1, %215 ], [ %225, %220 ]
  %229 = or i32 %228, %218
  %230 = icmp slt i64 %227, %76
  br i1 %230, label %237, label %231

; <label>:231:                                    ; preds = %226
  %232 = udiv i64 9223372036854775807, %59
  %233 = icmp slt i64 %232, %227
  %234 = mul nsw i64 %227, %59
  %235 = select i1 %233, i64 9223372036854775807, i64 %234
  %236 = zext i1 %233 to i32
  br label %237

; <label>:237:                                    ; preds = %231, %226
  %238 = phi i64 [ -9223372036854775808, %226 ], [ %235, %231 ]
  %239 = phi i32 [ 1, %226 ], [ %236, %231 ]
  %240 = or i32 %239, %229
  %241 = icmp slt i64 %238, %76
  br i1 %241, label %248, label %242

; <label>:242:                                    ; preds = %237
  %243 = udiv i64 9223372036854775807, %59
  %244 = icmp slt i64 %243, %238
  %245 = mul nsw i64 %238, %59
  %246 = select i1 %244, i64 9223372036854775807, i64 %245
  %247 = zext i1 %244 to i32
  br label %248

; <label>:248:                                    ; preds = %242, %237
  %249 = phi i64 [ -9223372036854775808, %237 ], [ %246, %242 ]
  %250 = phi i32 [ 1, %237 ], [ %247, %242 ]
  %251 = or i32 %250, %240
  br label %184

; <label>:252:                                    ; preds = %97
  %253 = udiv i64 9223372036854775807, %59
  %254 = icmp slt i64 %253, %98
  %255 = mul nsw i64 %98, %59
  %256 = select i1 %254, i64 9223372036854775807, i64 %255
  %257 = zext i1 %254 to i32
  br label %258

; <label>:258:                                    ; preds = %252, %97
  %259 = phi i64 [ -9223372036854775808, %97 ], [ %256, %252 ]
  %260 = phi i32 [ 1, %97 ], [ %257, %252 ]
  %261 = or i32 %260, %99
  %262 = icmp slt i64 %259, %89
  br i1 %262, label %269, label %263

; <label>:263:                                    ; preds = %258
  %264 = udiv i64 9223372036854775807, %59
  %265 = icmp slt i64 %264, %259
  %266 = mul nsw i64 %259, %59
  %267 = select i1 %265, i64 9223372036854775807, i64 %266
  %268 = zext i1 %265 to i32
  br label %269

; <label>:269:                                    ; preds = %263, %258
  %270 = phi i64 [ -9223372036854775808, %258 ], [ %267, %263 ]
  %271 = phi i32 [ 1, %258 ], [ %268, %263 ]
  %272 = or i32 %271, %261
  br label %184

; <label>:273:                                    ; preds = %119
  %274 = udiv i64 9223372036854775807, %59
  %275 = icmp slt i64 %274, %120
  %276 = mul nsw i64 %120, %59
  %277 = select i1 %275, i64 9223372036854775807, i64 %276
  %278 = zext i1 %275 to i32
  br label %279

; <label>:279:                                    ; preds = %273, %119
  %280 = phi i64 [ -9223372036854775808, %119 ], [ %277, %273 ]
  %281 = phi i32 [ 1, %119 ], [ %278, %273 ]
  %282 = or i32 %281, %121
  br label %184

; <label>:283:                                    ; preds = %132
  %284 = udiv i64 9223372036854775807, %59
  %285 = icmp slt i64 %284, %133
  %286 = mul nsw i64 %133, %59
  %287 = select i1 %285, i64 9223372036854775807, i64 %286
  %288 = zext i1 %285 to i32
  br label %289

; <label>:289:                                    ; preds = %283, %132
  %290 = phi i64 [ -9223372036854775808, %132 ], [ %287, %283 ]
  %291 = phi i32 [ 1, %132 ], [ %288, %283 ]
  %292 = or i32 %291, %134
  %293 = icmp slt i64 %290, %124
  br i1 %293, label %300, label %294

; <label>:294:                                    ; preds = %289
  %295 = udiv i64 9223372036854775807, %59
  %296 = icmp slt i64 %295, %290
  %297 = mul nsw i64 %290, %59
  %298 = select i1 %296, i64 9223372036854775807, i64 %297
  %299 = zext i1 %296 to i32
  br label %300

; <label>:300:                                    ; preds = %294, %289
  %301 = phi i64 [ -9223372036854775808, %289 ], [ %298, %294 ]
  %302 = phi i32 [ 1, %289 ], [ %299, %294 ]
  %303 = or i32 %302, %292
  %304 = icmp slt i64 %301, %124
  br i1 %304, label %311, label %305

; <label>:305:                                    ; preds = %300
  %306 = udiv i64 9223372036854775807, %59
  %307 = icmp slt i64 %306, %301
  %308 = mul nsw i64 %301, %59
  %309 = select i1 %307, i64 9223372036854775807, i64 %308
  %310 = zext i1 %307 to i32
  br label %311

; <label>:311:                                    ; preds = %305, %300
  %312 = phi i64 [ -9223372036854775808, %300 ], [ %309, %305 ]
  %313 = phi i32 [ 1, %300 ], [ %310, %305 ]
  %314 = or i32 %313, %303
  %315 = icmp slt i64 %312, %124
  br i1 %315, label %322, label %316

; <label>:316:                                    ; preds = %311
  %317 = udiv i64 9223372036854775807, %59
  %318 = icmp slt i64 %317, %312
  %319 = mul nsw i64 %312, %59
  %320 = select i1 %318, i64 9223372036854775807, i64 %319
  %321 = zext i1 %318 to i32
  br label %322

; <label>:322:                                    ; preds = %316, %311
  %323 = phi i64 [ -9223372036854775808, %311 ], [ %320, %316 ]
  %324 = phi i32 [ 1, %311 ], [ %321, %316 ]
  %325 = or i32 %324, %314
  br label %184

; <label>:326:                                    ; preds = %145
  %327 = udiv i64 9223372036854775807, %59
  %328 = icmp slt i64 %327, %146
  %329 = mul nsw i64 %146, %59
  %330 = select i1 %328, i64 9223372036854775807, i64 %329
  %331 = zext i1 %328 to i32
  br label %332

; <label>:332:                                    ; preds = %326, %145
  %333 = phi i64 [ -9223372036854775808, %145 ], [ %330, %326 ]
  %334 = phi i32 [ 1, %145 ], [ %331, %326 ]
  %335 = or i32 %334, %147
  %336 = icmp slt i64 %333, %137
  br i1 %336, label %343, label %337

; <label>:337:                                    ; preds = %332
  %338 = udiv i64 9223372036854775807, %59
  %339 = icmp slt i64 %338, %333
  %340 = mul nsw i64 %333, %59
  %341 = select i1 %339, i64 9223372036854775807, i64 %340
  %342 = zext i1 %339 to i32
  br label %343

; <label>:343:                                    ; preds = %337, %332
  %344 = phi i64 [ -9223372036854775808, %332 ], [ %341, %337 ]
  %345 = phi i32 [ 1, %332 ], [ %342, %337 ]
  %346 = or i32 %345, %335
  %347 = icmp slt i64 %344, %137
  br i1 %347, label %354, label %348

; <label>:348:                                    ; preds = %343
  %349 = udiv i64 9223372036854775807, %59
  %350 = icmp slt i64 %349, %344
  %351 = mul nsw i64 %344, %59
  %352 = select i1 %350, i64 9223372036854775807, i64 %351
  %353 = zext i1 %350 to i32
  br label %354

; <label>:354:                                    ; preds = %348, %343
  %355 = phi i64 [ -9223372036854775808, %343 ], [ %352, %348 ]
  %356 = phi i32 [ 1, %343 ], [ %353, %348 ]
  %357 = or i32 %356, %346
  br label %184

; <label>:358:                                    ; preds = %165
  %359 = udiv i64 9223372036854775807, %59
  %360 = icmp slt i64 %359, %166
  %361 = mul nsw i64 %166, %59
  %362 = select i1 %360, i64 9223372036854775807, i64 %361
  %363 = zext i1 %360 to i32
  br label %364

; <label>:364:                                    ; preds = %358, %165
  %365 = phi i64 [ -9223372036854775808, %165 ], [ %362, %358 ]
  %366 = phi i32 [ 1, %165 ], [ %363, %358 ]
  %367 = or i32 %366, %167
  %368 = icmp slt i64 %365, %157
  br i1 %368, label %375, label %369

; <label>:369:                                    ; preds = %364
  %370 = udiv i64 9223372036854775807, %59
  %371 = icmp slt i64 %370, %365
  %372 = mul nsw i64 %365, %59
  %373 = select i1 %371, i64 9223372036854775807, i64 %372
  %374 = zext i1 %371 to i32
  br label %375

; <label>:375:                                    ; preds = %369, %364
  %376 = phi i64 [ -9223372036854775808, %364 ], [ %373, %369 ]
  %377 = phi i32 [ 1, %364 ], [ %374, %369 ]
  %378 = or i32 %377, %367
  %379 = icmp slt i64 %376, %157
  br i1 %379, label %386, label %380

; <label>:380:                                    ; preds = %375
  %381 = udiv i64 9223372036854775807, %59
  %382 = icmp slt i64 %381, %376
  %383 = mul nsw i64 %376, %59
  %384 = select i1 %382, i64 9223372036854775807, i64 %383
  %385 = zext i1 %382 to i32
  br label %386

; <label>:386:                                    ; preds = %380, %375
  %387 = phi i64 [ -9223372036854775808, %375 ], [ %384, %380 ]
  %388 = phi i32 [ 1, %375 ], [ %385, %380 ]
  %389 = or i32 %388, %378
  %390 = icmp slt i64 %387, %157
  br i1 %390, label %397, label %391

; <label>:391:                                    ; preds = %386
  %392 = udiv i64 9223372036854775807, %59
  %393 = icmp slt i64 %392, %387
  %394 = mul nsw i64 %387, %59
  %395 = select i1 %393, i64 9223372036854775807, i64 %394
  %396 = zext i1 %393 to i32
  br label %397

; <label>:397:                                    ; preds = %391, %386
  %398 = phi i64 [ -9223372036854775808, %386 ], [ %395, %391 ]
  %399 = phi i32 [ 1, %386 ], [ %396, %391 ]
  %400 = or i32 %399, %389
  %401 = icmp slt i64 %398, %157
  br i1 %401, label %408, label %402

; <label>:402:                                    ; preds = %397
  %403 = udiv i64 9223372036854775807, %59
  %404 = icmp slt i64 %403, %398
  %405 = mul nsw i64 %398, %59
  %406 = select i1 %404, i64 9223372036854775807, i64 %405
  %407 = zext i1 %404 to i32
  br label %408

; <label>:408:                                    ; preds = %402, %397
  %409 = phi i64 [ -9223372036854775808, %397 ], [ %406, %402 ]
  %410 = phi i32 [ 1, %397 ], [ %407, %402 ]
  %411 = or i32 %410, %400
  %412 = icmp slt i64 %409, %157
  br i1 %412, label %419, label %413

; <label>:413:                                    ; preds = %408
  %414 = udiv i64 9223372036854775807, %59
  %415 = icmp slt i64 %414, %409
  %416 = mul nsw i64 %409, %59
  %417 = select i1 %415, i64 9223372036854775807, i64 %416
  %418 = zext i1 %415 to i32
  br label %419

; <label>:419:                                    ; preds = %413, %408
  %420 = phi i64 [ -9223372036854775808, %408 ], [ %417, %413 ]
  %421 = phi i32 [ 1, %408 ], [ %418, %413 ]
  %422 = or i32 %421, %411
  %423 = icmp slt i64 %420, %157
  br i1 %423, label %430, label %424

; <label>:424:                                    ; preds = %419
  %425 = udiv i64 9223372036854775807, %59
  %426 = icmp slt i64 %425, %420
  %427 = mul nsw i64 %420, %59
  %428 = select i1 %426, i64 9223372036854775807, i64 %427
  %429 = zext i1 %426 to i32
  br label %430

; <label>:430:                                    ; preds = %424, %419
  %431 = phi i64 [ -9223372036854775808, %419 ], [ %428, %424 ]
  %432 = phi i32 [ 1, %419 ], [ %429, %424 ]
  %433 = or i32 %432, %422
  br label %184

; <label>:434:                                    ; preds = %178
  %435 = udiv i64 9223372036854775807, %59
  %436 = icmp slt i64 %435, %179
  %437 = mul nsw i64 %179, %59
  %438 = select i1 %436, i64 9223372036854775807, i64 %437
  %439 = zext i1 %436 to i32
  br label %440

; <label>:440:                                    ; preds = %434, %178
  %441 = phi i64 [ -9223372036854775808, %178 ], [ %438, %434 ]
  %442 = phi i32 [ 1, %178 ], [ %439, %434 ]
  %443 = or i32 %442, %180
  %444 = icmp slt i64 %441, %170
  br i1 %444, label %451, label %445

; <label>:445:                                    ; preds = %440
  %446 = udiv i64 9223372036854775807, %59
  %447 = icmp slt i64 %446, %441
  %448 = mul nsw i64 %441, %59
  %449 = select i1 %447, i64 9223372036854775807, i64 %448
  %450 = zext i1 %447 to i32
  br label %451

; <label>:451:                                    ; preds = %445, %440
  %452 = phi i64 [ -9223372036854775808, %440 ], [ %449, %445 ]
  %453 = phi i32 [ 1, %440 ], [ %450, %445 ]
  %454 = or i32 %453, %443
  %455 = icmp slt i64 %452, %170
  br i1 %455, label %462, label %456

; <label>:456:                                    ; preds = %451
  %457 = udiv i64 9223372036854775807, %59
  %458 = icmp slt i64 %457, %452
  %459 = mul nsw i64 %452, %59
  %460 = select i1 %458, i64 9223372036854775807, i64 %459
  %461 = zext i1 %458 to i32
  br label %462

; <label>:462:                                    ; preds = %456, %451
  %463 = phi i64 [ -9223372036854775808, %451 ], [ %460, %456 ]
  %464 = phi i32 [ 1, %451 ], [ %461, %456 ]
  %465 = or i32 %464, %454
  %466 = icmp slt i64 %463, %170
  br i1 %466, label %473, label %467

; <label>:467:                                    ; preds = %462
  %468 = udiv i64 9223372036854775807, %59
  %469 = icmp slt i64 %468, %463
  %470 = mul nsw i64 %463, %59
  %471 = select i1 %469, i64 9223372036854775807, i64 %470
  %472 = zext i1 %469 to i32
  br label %473

; <label>:473:                                    ; preds = %467, %462
  %474 = phi i64 [ -9223372036854775808, %462 ], [ %471, %467 ]
  %475 = phi i32 [ 1, %462 ], [ %472, %467 ]
  %476 = or i32 %475, %465
  %477 = icmp slt i64 %474, %170
  br i1 %477, label %484, label %478

; <label>:478:                                    ; preds = %473
  %479 = udiv i64 9223372036854775807, %59
  %480 = icmp slt i64 %479, %474
  %481 = mul nsw i64 %474, %59
  %482 = select i1 %480, i64 9223372036854775807, i64 %481
  %483 = zext i1 %480 to i32
  br label %484

; <label>:484:                                    ; preds = %478, %473
  %485 = phi i64 [ -9223372036854775808, %473 ], [ %482, %478 ]
  %486 = phi i32 [ 1, %473 ], [ %483, %478 ]
  %487 = or i32 %486, %476
  %488 = icmp slt i64 %485, %170
  br i1 %488, label %495, label %489

; <label>:489:                                    ; preds = %484
  %490 = udiv i64 9223372036854775807, %59
  %491 = icmp slt i64 %490, %485
  %492 = mul nsw i64 %485, %59
  %493 = select i1 %491, i64 9223372036854775807, i64 %492
  %494 = zext i1 %491 to i32
  br label %495

; <label>:495:                                    ; preds = %489, %484
  %496 = phi i64 [ -9223372036854775808, %484 ], [ %493, %489 ]
  %497 = phi i32 [ 1, %484 ], [ %494, %489 ]
  %498 = or i32 %497, %487
  br label %184
}

; Function Attrs: nounwind
declare i64 @strtol(i8* readonly, i8** nocapture, i32) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i8* @strchr(i8*, i32) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define i32 @xstrtoumax(i8*, i8**, i32, i64* nocapture, i8* readonly) local_unnamed_addr #6 {
  %6 = alloca i8*, align 8
  %7 = bitcast i8** %6 to i8*
  call void @llvm.lifetime.start(i64 8, i8* nonnull %7) #9
  %8 = icmp ult i32 %2, 37
  br i1 %8, label %10, label %9

; <label>:9:                                      ; preds = %5
  tail call void @__assert_fail(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.372, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1.373, i64 0, i64 0), i32 96, i8* getelementptr inbounds ([79 x i8], [79 x i8]* @__PRETTY_FUNCTION__.xstrtoumax, i64 0, i64 0)) #14
  unreachable

; <label>:10:                                     ; preds = %5
  %11 = icmp ne i8** %1, null
  %12 = tail call i32* @__errno_location() #1
  store i32 0, i32* %12, align 4
  %13 = tail call i16** @__ctype_b_loc() #1
  %14 = load i16*, i16** %13, align 8
  br label %15

; <label>:15:                                     ; preds = %15, %10
  %16 = phi i8* [ %0, %10 ], [ %23, %15 ]
  %17 = load i8, i8* %16, align 1
  %18 = zext i8 %17 to i64
  %19 = getelementptr inbounds i16, i16* %14, i64 %18
  %20 = load i16, i16* %19, align 2
  %21 = and i16 %20, 8192
  %22 = icmp eq i16 %21, 0
  %23 = getelementptr inbounds i8, i8* %16, i64 1
  br i1 %22, label %24, label %15

; <label>:24:                                     ; preds = %15
  %25 = select i1 %11, i8** %1, i8** %6
  %26 = icmp eq i8 %17, 45
  br i1 %26, label %265, label %27

; <label>:27:                                     ; preds = %24
  %28 = call i64 @__strtoul_internal(i8* %0, i8** %25, i32 %2, i32 0) #9
  %29 = load i8*, i8** %25, align 8
  %30 = icmp eq i8* %29, %0
  br i1 %30, label %31, label %40

; <label>:31:                                     ; preds = %27
  %32 = icmp eq i8* %4, null
  br i1 %32, label %265, label %33

; <label>:33:                                     ; preds = %31
  %34 = load i8, i8* %0, align 1
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %265, label %36

; <label>:36:                                     ; preds = %33
  %37 = sext i8 %34 to i32
  %38 = call i8* @strchr(i8* nonnull %4, i32 %37) #9
  %39 = icmp eq i8* %38, null
  br i1 %39, label %265, label %47

; <label>:40:                                     ; preds = %27
  %41 = load i32, i32* %12, align 4
  switch i32 %41, label %265 [
    i32 0, label %43
    i32 34, label %42
  ]

; <label>:42:                                     ; preds = %40
  br label %43

; <label>:43:                                     ; preds = %40, %42
  %44 = phi i32 [ 1, %42 ], [ 0, %40 ]
  %45 = icmp eq i8* %4, null
  br i1 %45, label %46, label %47

; <label>:46:                                     ; preds = %43
  store i64 %28, i64* %3, align 8
  br label %265

; <label>:47:                                     ; preds = %36, %43
  %48 = phi i32 [ %44, %43 ], [ 0, %36 ]
  %49 = phi i64 [ %28, %43 ], [ 1, %36 ]
  %50 = load i8, i8* %29, align 1
  %51 = icmp eq i8 %50, 0
  br i1 %51, label %262, label %52

; <label>:52:                                     ; preds = %47
  %53 = sext i8 %50 to i32
  %54 = call i8* @strchr(i8* nonnull %4, i32 %53) #9
  %55 = icmp eq i8* %54, null
  br i1 %55, label %56, label %58

; <label>:56:                                     ; preds = %52
  store i64 %49, i64* %3, align 8
  %57 = or i32 %48, 2
  br label %265

; <label>:58:                                     ; preds = %52
  switch i32 %53, label %72 [
    i32 69, label %59
    i32 71, label %59
    i32 103, label %59
    i32 107, label %59
    i32 75, label %59
    i32 77, label %59
    i32 109, label %59
    i32 80, label %59
    i32 84, label %59
    i32 116, label %59
    i32 89, label %59
    i32 90, label %59
  ]

; <label>:59:                                     ; preds = %58, %58, %58, %58, %58, %58, %58, %58, %58, %58, %58, %58
  %60 = call i8* @strchr(i8* nonnull %4, i32 48) #9
  %61 = icmp eq i8* %60, null
  br i1 %61, label %72, label %62

; <label>:62:                                     ; preds = %59
  %63 = getelementptr inbounds i8, i8* %29, i64 1
  %64 = load i8, i8* %63, align 1
  %65 = sext i8 %64 to i32
  switch i32 %65, label %72 [
    i32 105, label %66
    i32 66, label %71
    i32 68, label %71
  ]

; <label>:66:                                     ; preds = %62
  %67 = getelementptr inbounds i8, i8* %29, i64 2
  %68 = load i8, i8* %67, align 1
  %69 = icmp eq i8 %68, 66
  %70 = select i1 %69, i64 3, i64 1
  br label %72

; <label>:71:                                     ; preds = %62, %62
  br label %72

; <label>:72:                                     ; preds = %66, %59, %62, %71, %58
  %73 = phi i64 [ 1024, %58 ], [ 1024, %62 ], [ 1000, %71 ], [ 1024, %59 ], [ 1024, %66 ]
  %74 = phi i64 [ 1, %58 ], [ 1, %62 ], [ 2, %71 ], [ 1, %59 ], [ %70, %66 ]
  switch i32 %53, label %251 [
    i32 98, label %75
    i32 66, label %80
    i32 99, label %253
    i32 69, label %85
    i32 71, label %111
    i32 103, label %111
    i32 107, label %125
    i32 75, label %125
    i32 77, label %131
    i32 109, label %131
    i32 80, label %141
    i32 84, label %163
    i32 116, label %163
    i32 119, label %181
    i32 89, label %187
    i32 90, label %221
  ]

; <label>:75:                                     ; preds = %72
  %76 = icmp ugt i64 %49, 36028797018963967
  %77 = shl i64 %49, 9
  %78 = select i1 %76, i64 -1, i64 %77
  %79 = zext i1 %76 to i32
  br label %253

; <label>:80:                                     ; preds = %72
  %81 = icmp ugt i64 %49, 18014398509481983
  %82 = shl i64 %49, 10
  %83 = select i1 %81, i64 -1, i64 %82
  %84 = zext i1 %81 to i32
  br label %253

; <label>:85:                                     ; preds = %72
  %86 = udiv i64 -1, %73
  %87 = icmp ult i64 %86, %49
  %88 = mul i64 %49, %73
  %89 = select i1 %87, i64 -1, i64 %88
  %90 = icmp ult i64 %86, %89
  %91 = mul i64 %89, %73
  %92 = select i1 %90, i64 -1, i64 %91
  %93 = or i1 %90, %87
  %94 = icmp ult i64 %86, %92
  %95 = mul i64 %92, %73
  %96 = select i1 %94, i64 -1, i64 %95
  %97 = or i1 %94, %93
  %98 = icmp ult i64 %86, %96
  %99 = mul i64 %96, %73
  %100 = select i1 %98, i64 -1, i64 %99
  %101 = or i1 %98, %97
  %102 = icmp ult i64 %86, %100
  %103 = mul i64 %100, %73
  %104 = select i1 %102, i64 -1, i64 %103
  %105 = or i1 %102, %101
  %106 = icmp ult i64 %86, %104
  %107 = mul i64 %104, %73
  %108 = select i1 %106, i64 -1, i64 %107
  %109 = or i1 %106, %105
  %110 = zext i1 %109 to i32
  br label %253

; <label>:111:                                    ; preds = %72, %72
  %112 = udiv i64 -1, %73
  %113 = icmp ult i64 %112, %49
  %114 = mul i64 %49, %73
  %115 = select i1 %113, i64 -1, i64 %114
  %116 = icmp ult i64 %112, %115
  %117 = mul i64 %115, %73
  %118 = select i1 %116, i64 -1, i64 %117
  %119 = or i1 %116, %113
  %120 = icmp ult i64 %112, %118
  %121 = mul i64 %118, %73
  %122 = select i1 %120, i64 -1, i64 %121
  %123 = or i1 %120, %119
  %124 = zext i1 %123 to i32
  br label %253

; <label>:125:                                    ; preds = %72, %72
  %126 = udiv i64 -1, %73
  %127 = icmp ult i64 %126, %49
  %128 = mul i64 %49, %73
  %129 = select i1 %127, i64 -1, i64 %128
  %130 = zext i1 %127 to i32
  br label %253

; <label>:131:                                    ; preds = %72, %72
  %132 = udiv i64 -1, %73
  %133 = icmp ult i64 %132, %49
  %134 = mul i64 %49, %73
  %135 = select i1 %133, i64 -1, i64 %134
  %136 = icmp ult i64 %132, %135
  %137 = mul i64 %135, %73
  %138 = select i1 %136, i64 -1, i64 %137
  %139 = or i1 %136, %133
  %140 = zext i1 %139 to i32
  br label %253

; <label>:141:                                    ; preds = %72
  %142 = udiv i64 -1, %73
  %143 = icmp ult i64 %142, %49
  %144 = mul i64 %49, %73
  %145 = select i1 %143, i64 -1, i64 %144
  %146 = icmp ult i64 %142, %145
  %147 = mul i64 %145, %73
  %148 = select i1 %146, i64 -1, i64 %147
  %149 = or i1 %146, %143
  %150 = icmp ult i64 %142, %148
  %151 = mul i64 %148, %73
  %152 = select i1 %150, i64 -1, i64 %151
  %153 = or i1 %150, %149
  %154 = icmp ult i64 %142, %152
  %155 = mul i64 %152, %73
  %156 = select i1 %154, i64 -1, i64 %155
  %157 = or i1 %154, %153
  %158 = icmp ult i64 %142, %156
  %159 = mul i64 %156, %73
  %160 = select i1 %158, i64 -1, i64 %159
  %161 = or i1 %158, %157
  %162 = zext i1 %161 to i32
  br label %253

; <label>:163:                                    ; preds = %72, %72
  %164 = udiv i64 -1, %73
  %165 = icmp ult i64 %164, %49
  %166 = mul i64 %49, %73
  %167 = select i1 %165, i64 -1, i64 %166
  %168 = icmp ult i64 %164, %167
  %169 = mul i64 %167, %73
  %170 = select i1 %168, i64 -1, i64 %169
  %171 = or i1 %168, %165
  %172 = icmp ult i64 %164, %170
  %173 = mul i64 %170, %73
  %174 = select i1 %172, i64 -1, i64 %173
  %175 = or i1 %172, %171
  %176 = icmp ult i64 %164, %174
  %177 = mul i64 %174, %73
  %178 = select i1 %176, i64 -1, i64 %177
  %179 = or i1 %176, %175
  %180 = zext i1 %179 to i32
  br label %253

; <label>:181:                                    ; preds = %72
  %182 = icmp slt i64 %49, 0
  %183 = shl i64 %49, 1
  %184 = select i1 %182, i64 -1, i64 %183
  %185 = lshr i64 %49, 63
  %186 = trunc i64 %185 to i32
  br label %253

; <label>:187:                                    ; preds = %72
  %188 = udiv i64 -1, %73
  %189 = icmp ult i64 %188, %49
  %190 = mul i64 %49, %73
  %191 = select i1 %189, i64 -1, i64 %190
  %192 = icmp ult i64 %188, %191
  %193 = mul i64 %191, %73
  %194 = select i1 %192, i64 -1, i64 %193
  %195 = or i1 %192, %189
  %196 = icmp ult i64 %188, %194
  %197 = mul i64 %194, %73
  %198 = select i1 %196, i64 -1, i64 %197
  %199 = or i1 %196, %195
  %200 = icmp ult i64 %188, %198
  %201 = mul i64 %198, %73
  %202 = select i1 %200, i64 -1, i64 %201
  %203 = or i1 %200, %199
  %204 = icmp ult i64 %188, %202
  %205 = mul i64 %202, %73
  %206 = select i1 %204, i64 -1, i64 %205
  %207 = or i1 %204, %203
  %208 = icmp ult i64 %188, %206
  %209 = mul i64 %206, %73
  %210 = select i1 %208, i64 -1, i64 %209
  %211 = or i1 %208, %207
  %212 = icmp ult i64 %188, %210
  %213 = mul i64 %210, %73
  %214 = select i1 %212, i64 -1, i64 %213
  %215 = or i1 %212, %211
  %216 = icmp ult i64 %188, %214
  %217 = mul i64 %214, %73
  %218 = select i1 %216, i64 -1, i64 %217
  %219 = or i1 %216, %215
  %220 = zext i1 %219 to i32
  br label %253

; <label>:221:                                    ; preds = %72
  %222 = udiv i64 -1, %73
  %223 = icmp ult i64 %222, %49
  %224 = mul i64 %49, %73
  %225 = select i1 %223, i64 -1, i64 %224
  %226 = icmp ult i64 %222, %225
  %227 = mul i64 %225, %73
  %228 = select i1 %226, i64 -1, i64 %227
  %229 = or i1 %226, %223
  %230 = icmp ult i64 %222, %228
  %231 = mul i64 %228, %73
  %232 = select i1 %230, i64 -1, i64 %231
  %233 = or i1 %230, %229
  %234 = icmp ult i64 %222, %232
  %235 = mul i64 %232, %73
  %236 = select i1 %234, i64 -1, i64 %235
  %237 = or i1 %234, %233
  %238 = icmp ult i64 %222, %236
  %239 = mul i64 %236, %73
  %240 = select i1 %238, i64 -1, i64 %239
  %241 = or i1 %238, %237
  %242 = icmp ult i64 %222, %240
  %243 = mul i64 %240, %73
  %244 = select i1 %242, i64 -1, i64 %243
  %245 = or i1 %242, %241
  %246 = icmp ult i64 %222, %244
  %247 = mul i64 %244, %73
  %248 = select i1 %246, i64 -1, i64 %247
  %249 = or i1 %246, %245
  %250 = zext i1 %249 to i32
  br label %253

; <label>:251:                                    ; preds = %72
  store i64 %49, i64* %3, align 8
  %252 = or i32 %48, 2
  br label %265

; <label>:253:                                    ; preds = %221, %187, %163, %141, %131, %125, %111, %85, %75, %80, %181, %72
  %254 = phi i64 [ %184, %181 ], [ %49, %72 ], [ %83, %80 ], [ %78, %75 ], [ %108, %85 ], [ %122, %111 ], [ %129, %125 ], [ %138, %131 ], [ %160, %141 ], [ %178, %163 ], [ %218, %187 ], [ %248, %221 ]
  %255 = phi i32 [ %186, %181 ], [ 0, %72 ], [ %84, %80 ], [ %79, %75 ], [ %110, %85 ], [ %124, %111 ], [ %130, %125 ], [ %140, %131 ], [ %162, %141 ], [ %180, %163 ], [ %220, %187 ], [ %250, %221 ]
  %256 = or i32 %255, %48
  %257 = getelementptr inbounds i8, i8* %29, i64 %74
  store i8* %257, i8** %25, align 8
  %258 = load i8, i8* %257, align 1
  %259 = icmp eq i8 %258, 0
  %260 = or i32 %256, 2
  %261 = select i1 %259, i32 %256, i32 %260
  br label %262

; <label>:262:                                    ; preds = %253, %47
  %263 = phi i64 [ %49, %47 ], [ %254, %253 ]
  %264 = phi i32 [ %48, %47 ], [ %261, %253 ]
  store i64 %263, i64* %3, align 8
  br label %265

; <label>:265:                                    ; preds = %24, %56, %251, %40, %31, %33, %36, %262, %46
  %266 = phi i32 [ %264, %262 ], [ %44, %46 ], [ 4, %24 ], [ 4, %36 ], [ 4, %33 ], [ 4, %31 ], [ 4, %40 ], [ %57, %56 ], [ %252, %251 ]
  call void @llvm.lifetime.end(i64 8, i8* nonnull %7) #9
  ret i32 %266
}

; Function Attrs: nounwind
declare i64 @__strtoul_internal(i8*, i8**, i32, i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @rpl_calloc(i64, i64) local_unnamed_addr #6 {
  %3 = icmp eq i64 %0, 0
  %4 = icmp eq i64 %1, 0
  %5 = or i1 %3, %4
  br i1 %5, label %12, label %6

; <label>:6:                                      ; preds = %2
  %7 = mul i64 %1, %0
  %8 = udiv i64 %7, %1
  %9 = icmp eq i64 %8, %0
  br i1 %9, label %12, label %10

; <label>:10:                                     ; preds = %6
  %11 = tail call i32* @__errno_location() #1
  store i32 12, i32* %11, align 4
  br label %16

; <label>:12:                                     ; preds = %6, %2
  %13 = phi i64 [ 1, %2 ], [ %1, %6 ]
  %14 = phi i64 [ 1, %2 ], [ %0, %6 ]
  %15 = tail call noalias i8* @calloc(i64 %14, i64 %13) #9
  br label %16

; <label>:16:                                     ; preds = %10, %12
  %17 = phi i8* [ %15, %12 ], [ null, %10 ]
  ret i8* %17
}

; Function Attrs: nounwind
declare noalias i8* @calloc(i64, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i32 @rpl_fcntl(i32, i32, ...) local_unnamed_addr #6 {
  %3 = alloca [1 x %struct.__va_list_tag], align 16
  %4 = bitcast [1 x %struct.__va_list_tag]* %3 to i8*
  call void @llvm.lifetime.start(i64 24, i8* nonnull %4) #9
  call void @llvm.va_start(i8* nonnull %4)
  %5 = icmp eq i32 %1, 1030
  %6 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 0
  %7 = load i32, i32* %6, align 16
  %8 = icmp ult i32 %7, 41
  br i1 %5, label %9, label %59

; <label>:9:                                      ; preds = %2
  br i1 %8, label %10, label %16

; <label>:10:                                     ; preds = %9
  %11 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 3
  %12 = load i8*, i8** %11, align 16
  %13 = sext i32 %7 to i64
  %14 = getelementptr i8, i8* %12, i64 %13
  %15 = add i32 %7, 8
  store i32 %15, i32* %6, align 16
  br label %20

; <label>:16:                                     ; preds = %9
  %17 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 2
  %18 = load i8*, i8** %17, align 8
  %19 = getelementptr i8, i8* %18, i64 8
  store i8* %19, i8** %17, align 8
  br label %20

; <label>:20:                                     ; preds = %16, %10
  %21 = phi i8* [ %14, %10 ], [ %18, %16 ]
  %22 = bitcast i8* %21 to i32*
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @rpl_fcntl.have_dupfd_cloexec, align 4
  %25 = icmp sgt i32 %24, -1
  br i1 %25, label %26, label %39

; <label>:26:                                     ; preds = %20
  %27 = call i32 (i32, i32, ...) @fcntl(i32 %0, i32 1030, i32 %23) #9
  %28 = icmp sgt i32 %27, -1
  br i1 %28, label %36, label %29

; <label>:29:                                     ; preds = %26
  %30 = tail call i32* @__errno_location() #1
  %31 = load i32, i32* %30, align 4
  %32 = icmp eq i32 %31, 22
  br i1 %32, label %33, label %36

; <label>:33:                                     ; preds = %29
  %34 = call i32 (i32, i32, ...) @rpl_fcntl(i32 %0, i32 0, i32 %23)
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %75, label %36

; <label>:36:                                     ; preds = %29, %26, %33
  %37 = phi i32 [ %27, %26 ], [ %27, %29 ], [ %34, %33 ]
  %38 = phi i32 [ 1, %26 ], [ 1, %29 ], [ -1, %33 ]
  store i32 %38, i32* @rpl_fcntl.have_dupfd_cloexec, align 4
  br label %42

; <label>:39:                                     ; preds = %20
  %40 = call i32 (i32, i32, ...) @rpl_fcntl(i32 %0, i32 0, i32 %23)
  %41 = load i32, i32* @rpl_fcntl.have_dupfd_cloexec, align 4
  br label %42

; <label>:42:                                     ; preds = %39, %36
  %43 = phi i32 [ %38, %36 ], [ %41, %39 ]
  %44 = phi i32 [ %37, %36 ], [ %40, %39 ]
  %45 = icmp sgt i32 %44, -1
  %46 = icmp eq i32 %43, -1
  %47 = and i1 %45, %46
  br i1 %47, label %48, label %75

; <label>:48:                                     ; preds = %42
  %49 = call i32 (i32, i32, ...) @fcntl(i32 %44, i32 1) #9
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %55, label %51

; <label>:51:                                     ; preds = %48
  %52 = or i32 %49, 1
  %53 = call i32 (i32, i32, ...) @fcntl(i32 %44, i32 2, i32 %52) #9
  %54 = icmp eq i32 %53, -1
  br i1 %54, label %55, label %75

; <label>:55:                                     ; preds = %51, %48
  %56 = tail call i32* @__errno_location() #1
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @close(i32 %44) #9
  store i32 %57, i32* %56, align 4
  br label %75

; <label>:59:                                     ; preds = %2
  br i1 %8, label %60, label %66

; <label>:60:                                     ; preds = %59
  %61 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 3
  %62 = load i8*, i8** %61, align 16
  %63 = sext i32 %7 to i64
  %64 = getelementptr i8, i8* %62, i64 %63
  %65 = add i32 %7, 8
  store i32 %65, i32* %6, align 16
  br label %70

; <label>:66:                                     ; preds = %59
  %67 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 2
  %68 = load i8*, i8** %67, align 8
  %69 = getelementptr i8, i8* %68, i64 8
  store i8* %69, i8** %67, align 8
  br label %70

; <label>:70:                                     ; preds = %66, %60
  %71 = phi i8* [ %64, %60 ], [ %68, %66 ]
  %72 = bitcast i8* %71 to i8**
  %73 = load i8*, i8** %72, align 8
  %74 = call i32 (i32, i32, ...) @fcntl(i32 %0, i32 %1, i8* %73) #9
  br label %75

; <label>:75:                                     ; preds = %33, %51, %55, %42, %70
  %76 = phi i32 [ %74, %70 ], [ %34, %33 ], [ %44, %42 ], [ -1, %55 ], [ %44, %51 ]
  call void @llvm.va_end(i8* nonnull %4)
  call void @llvm.lifetime.end(i64 24, i8* nonnull %4) #9
  ret i32 %76
}

declare i32 @fcntl(i32, i32, ...) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define i64 @rpl_mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #6 {
  %5 = alloca i32, align 4
  %6 = bitcast i32* %5 to i8*
  call void @llvm.lifetime.start(i64 4, i8* nonnull %6) #9
  %7 = icmp eq i32* %0, null
  %8 = select i1 %7, i32* %5, i32* %0
  %9 = call i64 @mbrtowc(i32* %8, i8* %1, i64 %2, %struct.__mbstate_t* %3) #9
  %10 = icmp ugt i64 %9, -3
  %11 = icmp ne i64 %2, 0
  %12 = and i1 %11, %10
  br i1 %12, label %13, label %18

; <label>:13:                                     ; preds = %4
  %14 = call zeroext i1 @hard_locale(i32 0) #9
  br i1 %14, label %18, label %15

; <label>:15:                                     ; preds = %13
  %16 = load i8, i8* %1, align 1
  %17 = zext i8 %16 to i32
  store i32 %17, i32* %8, align 4
  br label %18

; <label>:18:                                     ; preds = %4, %13, %15
  %19 = phi i64 [ 1, %15 ], [ %9, %13 ], [ %9, %4 ]
  call void @llvm.lifetime.end(i64 4, i8* nonnull %6) #9
  ret i64 %19
}

; Function Attrs: nounwind
declare i64 @mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i32 @close_stream(%struct._IO_FILE*) local_unnamed_addr #6 {
  %2 = tail call i64 @__fpending(%struct._IO_FILE* %0) #9
  %3 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0
  %4 = load i32, i32* %3, align 8
  %5 = and i32 %4, 32
  %6 = icmp eq i32 %5, 0
  %7 = tail call i32 @rpl_fclose(%struct._IO_FILE* %0) #9
  %8 = icmp ne i32 %7, 0
  br i1 %6, label %9, label %19

; <label>:9:                                      ; preds = %1
  %10 = xor i1 %8, true
  %11 = icmp ne i64 %2, 0
  %12 = or i1 %11, %10
  %13 = sext i1 %8 to i32
  br i1 %12, label %22, label %14

; <label>:14:                                     ; preds = %9
  %15 = tail call i32* @__errno_location() #1
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 9
  %18 = sext i1 %17 to i32
  br label %22

; <label>:19:                                     ; preds = %1
  br i1 %8, label %22, label %20

; <label>:20:                                     ; preds = %19
  %21 = tail call i32* @__errno_location() #1
  store i32 0, i32* %21, align 4
  br label %22

; <label>:22:                                     ; preds = %9, %14, %19, %20
  %23 = phi i32 [ -1, %20 ], [ -1, %19 ], [ %18, %14 ], [ %13, %9 ]
  ret i32 %23
}

; Function Attrs: nounwind
declare i64 @__fpending(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define zeroext i1 @hard_locale(i32) local_unnamed_addr #6 {
  %2 = tail call i8* @setlocale(i32 %0, i8* null) #9
  %3 = icmp eq i8* %2, null
  br i1 %3, label %15, label %4

; <label>:4:                                      ; preds = %1
  %5 = load i8, i8* %2, align 1
  %6 = icmp eq i8 %5, 67
  br i1 %6, label %7, label %11

; <label>:7:                                      ; preds = %4
  %8 = getelementptr inbounds i8, i8* %2, i64 1
  %9 = load i8, i8* %8, align 1
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %14, label %11

; <label>:11:                                     ; preds = %4, %7
  %12 = tail call i32 @strcmp(i8* nonnull %2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.384, i64 0, i64 0)) #9
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %15

; <label>:14:                                     ; preds = %11, %7
  br label %15

; <label>:15:                                     ; preds = %1, %11, %14
  %16 = phi i1 [ false, %14 ], [ true, %11 ], [ true, %1 ]
  ret i1 %16
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @locale_charset() local_unnamed_addr #6 {
  %1 = alloca [51 x i8], align 16
  %2 = alloca [51 x i8], align 16
  %3 = tail call i8* @nl_langinfo(i32 14) #9
  %4 = icmp eq i8* %3, null
  %5 = select i1 %4, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.387, i64 0, i64 0), i8* %3
  %6 = load volatile i8*, i8** @charset_aliases, align 8
  %7 = icmp eq i8* %6, null
  br i1 %7, label %8, label %127

; <label>:8:                                      ; preds = %0
  %9 = tail call i8* @getenv(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3.388, i64 0, i64 0)) #9
  %10 = icmp eq i8* %9, null
  br i1 %10, label %14, label %11

; <label>:11:                                     ; preds = %8
  %12 = load i8, i8* %9, align 1
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %14, label %15

; <label>:14:                                     ; preds = %11, %8
  br label %15

; <label>:15:                                     ; preds = %14, %11
  %16 = phi i8* [ getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4.389, i64 0, i64 0), %14 ], [ %9, %11 ]
  %17 = tail call i64 @strlen(i8* nonnull %16) #13
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %24, label %19

; <label>:19:                                     ; preds = %15
  %20 = add i64 %17, -1
  %21 = getelementptr inbounds i8, i8* %16, i64 %20
  %22 = load i8, i8* %21, align 1
  %23 = icmp ne i8 %22, 47
  br label %24

; <label>:24:                                     ; preds = %19, %15
  %25 = phi i1 [ false, %15 ], [ %23, %19 ]
  %26 = zext i1 %25 to i64
  %27 = add i64 %17, 14
  %28 = add i64 %27, %26
  %29 = tail call noalias i8* @malloc(i64 %28) #9
  %30 = icmp eq i8* %29, null
  br i1 %30, label %125, label %31

; <label>:31:                                     ; preds = %24
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %29, i8* %16, i64 %17, i32 1, i1 false) #9
  %32 = getelementptr inbounds i8, i8* %29, i64 %17
  br i1 %25, label %33, label %35

; <label>:33:                                     ; preds = %31
  store i8 47, i8* %32, align 1
  %34 = getelementptr inbounds i8, i8* %32, i64 %26
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %34, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2.390, i64 0, i64 0), i64 14, i32 1, i1 false) #9
  br label %37

; <label>:35:                                     ; preds = %31
  %36 = getelementptr inbounds i8, i8* %32, i64 %26
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %36, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2.390, i64 0, i64 0), i64 14, i32 1, i1 false) #9
  br label %37

; <label>:37:                                     ; preds = %35, %33
  %38 = tail call i32 (i8*, i32, ...) @open(i8* nonnull %29, i32 131072) #9
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %123, label %40

; <label>:40:                                     ; preds = %37
  %41 = tail call %struct._IO_FILE* @fdopen(i32 %38, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.391, i64 0, i64 0)) #9
  %42 = icmp eq %struct._IO_FILE* %41, null
  br i1 %42, label %48, label %43

; <label>:43:                                     ; preds = %40
  %44 = getelementptr inbounds [51 x i8], [51 x i8]* %1, i64 0, i64 0
  %45 = getelementptr inbounds [51 x i8], [51 x i8]* %2, i64 0, i64 0
  %46 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %41, i64 0, i32 1
  %47 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %41, i64 0, i32 2
  br label %50

; <label>:48:                                     ; preds = %40
  %49 = tail call i32 @close(i32 %38) #9
  br label %123

; <label>:50:                                     ; preds = %111, %43
  %51 = phi i64 [ %112, %111 ], [ 0, %43 ]
  %52 = phi i8* [ %113, %111 ], [ null, %43 ]
  call void @llvm.lifetime.start(i64 51, i8* nonnull %44) #9
  call void @llvm.lifetime.start(i64 51, i8* nonnull %45) #9
  %53 = load i8*, i8** %46, align 8
  %54 = load i8*, i8** %47, align 8
  %55 = icmp ult i8* %53, %54
  br i1 %55, label %58, label %56

; <label>:56:                                     ; preds = %50
  %57 = call i32 @__uflow(%struct._IO_FILE* nonnull %41) #9
  br label %62

; <label>:58:                                     ; preds = %50
  %59 = getelementptr inbounds i8, i8* %53, i64 1
  store i8* %59, i8** %46, align 8
  %60 = load i8, i8* %53, align 1
  %61 = zext i8 %60 to i32
  br label %62

; <label>:62:                                     ; preds = %58, %56
  %63 = phi i32 [ %57, %56 ], [ %61, %58 ]
  switch i32 %63, label %77 [
    i32 -1, label %115
    i32 32, label %111
    i32 10, label %111
    i32 9, label %111
    i32 35, label %64
  ]

; <label>:64:                                     ; preds = %62
  br label %65

; <label>:65:                                     ; preds = %64, %75
  %66 = load i8*, i8** %46, align 8
  %67 = load i8*, i8** %47, align 8
  %68 = icmp ult i8* %66, %67
  br i1 %68, label %71, label %69

; <label>:69:                                     ; preds = %65
  %70 = call i32 @__uflow(%struct._IO_FILE* nonnull %41) #9
  br label %75

; <label>:71:                                     ; preds = %65
  %72 = getelementptr inbounds i8, i8* %66, i64 1
  store i8* %72, i8** %46, align 8
  %73 = load i8, i8* %66, align 1
  %74 = zext i8 %73 to i32
  br label %75

; <label>:75:                                     ; preds = %71, %69
  %76 = phi i32 [ %70, %69 ], [ %74, %71 ]
  switch i32 %76, label %65 [
    i32 -1, label %114
    i32 10, label %110
  ]

; <label>:77:                                     ; preds = %62
  %78 = call i32 @ungetc(i32 %63, %struct._IO_FILE* nonnull %41) #9
  %79 = call i32 (%struct._IO_FILE*, i8*, ...) @fscanf(%struct._IO_FILE* nonnull %41, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6.392, i64 0, i64 0), i8* nonnull %44, i8* nonnull %45) #9
  %80 = icmp slt i32 %79, 2
  br i1 %80, label %115, label %81

; <label>:81:                                     ; preds = %77
  %82 = call i64 @strlen(i8* nonnull %44) #13
  %83 = call i64 @strlen(i8* nonnull %45) #13
  %84 = icmp eq i64 %51, 0
  %85 = add i64 %82, 1
  %86 = add i64 %85, %83
  %87 = add i64 %86, 1
  br i1 %84, label %88, label %91

; <label>:88:                                     ; preds = %81
  %89 = add i64 %86, 2
  %90 = call noalias i8* @malloc(i64 %89) #9
  br label %95

; <label>:91:                                     ; preds = %81
  %92 = add i64 %87, %51
  %93 = add i64 %92, 1
  %94 = call i8* @realloc(i8* %52, i64 %93) #9
  br label %95

; <label>:95:                                     ; preds = %91, %88
  %96 = phi i64 [ %87, %88 ], [ %92, %91 ]
  %97 = phi i8* [ %90, %88 ], [ %94, %91 ]
  %98 = icmp eq i8* %97, null
  br i1 %98, label %99, label %100

; <label>:99:                                     ; preds = %95
  call void @free(i8* %52) #9
  br label %116

; <label>:100:                                    ; preds = %95
  %101 = getelementptr inbounds i8, i8* %97, i64 %96
  %102 = xor i64 %83, -1
  %103 = getelementptr inbounds i8, i8* %101, i64 %102
  %104 = xor i64 %82, -1
  %105 = getelementptr inbounds i8, i8* %103, i64 %104
  %106 = call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %105, i1 false) #9
  %107 = call i8* @__strcpy_chk(i8* nonnull %105, i8* nonnull %44, i64 %106) #9
  %108 = call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %103, i1 false) #9
  %109 = call i8* @__strcpy_chk(i8* nonnull %103, i8* nonnull %45, i64 %108) #9
  br label %111

; <label>:110:                                    ; preds = %75
  br label %111

; <label>:111:                                    ; preds = %110, %100, %62, %62, %62
  %112 = phi i64 [ %96, %100 ], [ %51, %62 ], [ %51, %62 ], [ %51, %62 ], [ %51, %110 ]
  %113 = phi i8* [ %97, %100 ], [ %52, %62 ], [ %52, %62 ], [ %52, %62 ], [ %52, %110 ]
  call void @llvm.lifetime.end(i64 51, i8* nonnull %45) #9
  call void @llvm.lifetime.end(i64 51, i8* nonnull %44) #9
  br label %50

; <label>:114:                                    ; preds = %75
  br label %116

; <label>:115:                                    ; preds = %62, %77
  br label %116

; <label>:116:                                    ; preds = %115, %114, %99
  %117 = phi i64 [ 0, %99 ], [ %51, %114 ], [ %51, %115 ]
  %118 = phi i8* [ null, %99 ], [ %52, %114 ], [ %52, %115 ]
  call void @llvm.lifetime.end(i64 51, i8* nonnull %45) #9
  call void @llvm.lifetime.end(i64 51, i8* nonnull %44) #9
  %119 = call i32 @rpl_fclose(%struct._IO_FILE* nonnull %41) #9
  %120 = icmp eq i64 %117, 0
  br i1 %120, label %123, label %121

; <label>:121:                                    ; preds = %116
  %122 = getelementptr inbounds i8, i8* %118, i64 %117
  store i8 0, i8* %122, align 1
  br label %123

; <label>:123:                                    ; preds = %121, %116, %48, %37
  %124 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.387, i64 0, i64 0), %37 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.387, i64 0, i64 0), %48 ], [ %118, %121 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.387, i64 0, i64 0), %116 ]
  call void @free(i8* %29) #9
  br label %125

; <label>:125:                                    ; preds = %123, %24
  %126 = phi i8* [ %124, %123 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.387, i64 0, i64 0), %24 ]
  store volatile i8* %126, i8** @charset_aliases, align 8
  br label %127

; <label>:127:                                    ; preds = %0, %125
  %128 = phi i8* [ %6, %0 ], [ %126, %125 ]
  %129 = load i8, i8* %128, align 1
  %130 = icmp eq i8 %129, 0
  br i1 %130, label %157, label %131

; <label>:131:                                    ; preds = %127
  br label %132

; <label>:132:                                    ; preds = %131, %147
  %133 = phi i8 [ %154, %147 ], [ %129, %131 ]
  %134 = phi i8* [ %153, %147 ], [ %128, %131 ]
  %135 = call i32 @strcmp(i8* %5, i8* %134) #9
  %136 = icmp eq i32 %135, 0
  br i1 %136, label %143, label %137

; <label>:137:                                    ; preds = %132
  %138 = icmp eq i8 %133, 42
  br i1 %138, label %139, label %147

; <label>:139:                                    ; preds = %137
  %140 = getelementptr inbounds i8, i8* %134, i64 1
  %141 = load i8, i8* %140, align 1
  %142 = icmp eq i8 %141, 0
  br i1 %142, label %143, label %147

; <label>:143:                                    ; preds = %139, %132
  %144 = call i64 @strlen(i8* %134) #13
  %145 = getelementptr inbounds i8, i8* %134, i64 %144
  %146 = getelementptr inbounds i8, i8* %145, i64 1
  br label %157

; <label>:147:                                    ; preds = %137, %139
  %148 = call i64 @strlen(i8* %134) #13
  %149 = add i64 %148, 1
  %150 = getelementptr inbounds i8, i8* %134, i64 %149
  %151 = call i64 @strlen(i8* %150) #13
  %152 = add i64 %151, 1
  %153 = getelementptr inbounds i8, i8* %150, i64 %152
  %154 = load i8, i8* %153, align 1
  %155 = icmp eq i8 %154, 0
  br i1 %155, label %156, label %132

; <label>:156:                                    ; preds = %147
  br label %157

; <label>:157:                                    ; preds = %156, %127, %143
  %158 = phi i8* [ %146, %143 ], [ %5, %127 ], [ %5, %156 ]
  %159 = load i8, i8* %158, align 1
  %160 = icmp eq i8 %159, 0
  %161 = select i1 %160, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.393, i64 0, i64 0), i8* %158
  ret i8* %161
}

; Function Attrs: nounwind
declare i8* @nl_langinfo(i32) local_unnamed_addr #2

; Function Attrs: nounwind
declare noalias %struct._IO_FILE* @fdopen(i32, i8* nocapture readonly) local_unnamed_addr #2

declare i32 @__uflow(%struct._IO_FILE*) local_unnamed_addr #3

; Function Attrs: nounwind
declare i32 @ungetc(i32, %struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @fscanf(%struct._IO_FILE* nocapture, i8* nocapture readonly, ...) local_unnamed_addr #2

; Function Attrs: nounwind readnone
declare i64 @llvm.objectsize.i64.p0i8(i8*, i1) #1

; Function Attrs: nounwind
declare i8* @__strcpy_chk(i8*, i8*, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i32 @rpl_fclose(%struct._IO_FILE* nonnull) local_unnamed_addr #6 {
  %2 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #9
  %3 = icmp slt i32 %2, 0
  br i1 %3, label %4, label %6

; <label>:4:                                      ; preds = %1
  %5 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0)
  br label %24

; <label>:6:                                      ; preds = %1
  %7 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #9
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %13, label %9

; <label>:9:                                      ; preds = %6
  %10 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #9
  %11 = tail call i64 @lseek(i32 %10, i64 0, i32 1) #9
  %12 = icmp eq i64 %11, -1
  br i1 %12, label %16, label %13

; <label>:13:                                     ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(%struct._IO_FILE* nonnull %0) #9
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %18

; <label>:16:                                     ; preds = %13, %9
  %17 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0)
  br label %24

; <label>:18:                                     ; preds = %13
  %19 = tail call i32* @__errno_location() #1
  %20 = load i32, i32* %19, align 4
  %21 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0)
  %22 = icmp eq i32 %20, 0
  br i1 %22, label %24, label %23

; <label>:23:                                     ; preds = %18
  store i32 %20, i32* %19, align 4
  br label %24

; <label>:24:                                     ; preds = %16, %23, %18, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ]
  ret i32 %25
}

; Function Attrs: nounwind
declare i32 @fileno(%struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @fclose(%struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @__freading(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind
declare i64 @lseek(i32, i64, i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i32 @rpl_fflush(%struct._IO_FILE*) local_unnamed_addr #6 {
  %2 = icmp eq %struct._IO_FILE* %0, null
  br i1 %2, label %6, label %3

; <label>:3:                                      ; preds = %1
  %4 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #9
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %8

; <label>:6:                                      ; preds = %3, %1
  %7 = tail call i32 @fflush(%struct._IO_FILE* %0)
  br label %17

; <label>:8:                                      ; preds = %3
  %9 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = and i32 %10, 256
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %15, label %13

; <label>:13:                                     ; preds = %8
  %14 = tail call i32 @rpl_fseeko(%struct._IO_FILE* nonnull %0, i64 0, i32 1) #9
  br label %15

; <label>:15:                                     ; preds = %8, %13
  %16 = tail call i32 @fflush(%struct._IO_FILE* nonnull %0)
  br label %17

; <label>:17:                                     ; preds = %15, %6
  %18 = phi i32 [ %7, %6 ], [ %16, %15 ]
  ret i32 %18
}

; Function Attrs: nounwind
declare i32 @fflush(%struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i32 @rpl_fseeko(%struct._IO_FILE* nocapture nonnull, i64, i32) local_unnamed_addr #6 {
  %4 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2
  %5 = load i8*, i8** %4, align 8
  %6 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1
  %7 = load i8*, i8** %6, align 8
  %8 = icmp eq i8* %5, %7
  br i1 %8, label %9, label %28

; <label>:9:                                      ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5
  %11 = load i8*, i8** %10, align 8
  %12 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 4
  %13 = load i8*, i8** %12, align 8
  %14 = icmp eq i8* %11, %13
  br i1 %14, label %15, label %28

; <label>:15:                                     ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 9
  %17 = load i8*, i8** %16, align 8
  %18 = icmp eq i8* %17, null
  br i1 %18, label %19, label %28

; <label>:19:                                     ; preds = %15
  %20 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #9
  %21 = tail call i64 @lseek(i32 %20, i64 %1, i32 %2) #9
  %22 = icmp eq i64 %21, -1
  br i1 %22, label %30, label %23

; <label>:23:                                     ; preds = %19
  %24 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = and i32 %25, -17
  store i32 %26, i32* %24, align 8
  %27 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 21
  store i64 %21, i64* %27, align 8
  br label %30

; <label>:28:                                     ; preds = %15, %9, %3
  %29 = tail call i32 @fseeko(%struct._IO_FILE* nonnull %0, i64 %1, i32 %2)
  br label %30

; <label>:30:                                     ; preds = %23, %19, %28
  %31 = phi i32 [ %29, %28 ], [ 0, %23 ], [ -1, %19 ]
  ret i32 %31
}

; Function Attrs: nounwind
declare i32 @fseeko(%struct._IO_FILE* nocapture, i64, i32) local_unnamed_addr #2

attributes #0 = { noreturn nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noreturn nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { argmemonly nounwind }
attributes #8 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { nounwind }
attributes #10 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #11 = { nounwind readonly sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #12 = { inlinehint nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #13 = { nounwind readonly }
attributes #14 = { noreturn nounwind }
attributes #15 = { noreturn }
attributes #16 = { cold }
