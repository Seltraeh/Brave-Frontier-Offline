.class public Lch/boye/httpclientandroidlib/impl/EnglishReasonPhraseCatalog;
.super Ljava/lang/Object;
.source "EnglishReasonPhraseCatalog.java"

# interfaces
.implements Lch/boye/httpclientandroidlib/ReasonPhraseCatalog;


# annotations
.annotation build Lch/boye/httpclientandroidlib/annotation/Immutable;
.end annotation


# static fields
.field public static final INSTANCE:Lch/boye/httpclientandroidlib/impl/EnglishReasonPhraseCatalog;

.field private static final REASON_PHRASES:[[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 53
    new-instance v0, Lch/boye/httpclientandroidlib/impl/EnglishReasonPhraseCatalog;

    invoke-direct {v0}, Lch/boye/httpclientandroidlib/impl/EnglishReasonPhraseCatalog;-><init>()V

    sput-object v0, Lch/boye/httpclientandroidlib/impl/EnglishReasonPhraseCatalog;->INSTANCE:Lch/boye/httpclientandroidlib/impl/EnglishReasonPhraseCatalog;

    const/4 v0, 0x6

    new-array v0, v0, [[Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput-object v2, v0, v1

    const/4 v1, 0x3

    new-array v2, v1, [Ljava/lang/String;

    const/4 v3, 0x1

    aput-object v2, v0, v3

    const/16 v2, 0x8

    new-array v3, v2, [Ljava/lang/String;

    const/4 v4, 0x2

    aput-object v3, v0, v4

    new-array v3, v2, [Ljava/lang/String;

    aput-object v3, v0, v1

    const/16 v1, 0x19

    new-array v1, v1, [Ljava/lang/String;

    const/4 v3, 0x4

    aput-object v1, v0, v3

    new-array v1, v2, [Ljava/lang/String;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 92
    sput-object v0, Lch/boye/httpclientandroidlib/impl/EnglishReasonPhraseCatalog;->REASON_PHRASES:[[Ljava/lang/String;

    const/16 v0, 0xc8

    const-string v1, "OK"

    .line 122
    invoke-static {v0, v1}, Lch/boye/httpclientandroidlib/impl/EnglishReasonPhraseCatalog;->setReason(ILjava/lang/String;)V

    const/16 v0, 0xc9

    const-string v1, "Created"

    .line 124
    invoke-static {v0, v1}, Lch/boye/httpclientandroidlib/impl/EnglishReasonPhraseCatalog;->setReason(ILjava/lang/String;)V

    const/16 v0, 0xca

    const-string v1, "Accepted"

    .line 126
    invoke-static {v0, v1}, Lch/boye/httpclientandroidlib/impl/EnglishReasonPhraseCatalog;->setReason(ILjava/lang/String;)V

    const/16 v0, 0xcc

    const-string v1, "No Content"

    .line 128
    invoke-static {v0, v1}, Lch/boye/httpclientandroidlib/impl/EnglishReasonPhraseCatalog;->setReason(ILjava/lang/String;)V

    const/16 v0, 0x12d

    const-string v1, "Moved Permanently"

    .line 130
    invoke-static {v0, v1}, Lch/boye/httpclientandroidlib/impl/EnglishReasonPhraseCatalog;->setReason(ILjava/lang/String;)V

    const/16 v0, 0x12e

    const-string v1, "Moved Temporarily"

    .line 132
    invoke-static {v0, v1}, Lch/boye/httpclientandroidlib/impl/EnglishReasonPhraseCatalog;->setReason(ILjava/lang/String;)V

    const/16 v0, 0x130

    const-string v1, "Not Modified"

    .line 134
    invoke-static {v0, v1}, Lch/boye/httpclientandroidlib/impl/EnglishReasonPhraseCatalog;->setReason(ILjava/lang/String;)V

    const/16 v0, 0x190

    const-string v1, "Bad Request"

    .line 136
    invoke-static {v0, v1}, Lch/boye/httpclientandroidlib/impl/EnglishReasonPhraseCatalog;->setReason(ILjava/lang/String;)V

    const/16 v0, 0x191

    const-string v1, "Unauthorized"

    .line 138
    invoke-static {v0, v1}, Lch/boye/httpclientandroidlib/impl/EnglishReasonPhraseCatalog;->setReason(ILjava/lang/String;)V

    const/16 v0, 0x193

    const-string v1, "Forbidden"

    .line 140
    invoke-static {v0, v1}, Lch/boye/httpclientandroidlib/impl/EnglishReasonPhraseCatalog;->setReason(ILjava/lang/String;)V

    const/16 v0, 0x194

    const-string v1, "Not Found"

    .line 142
    invoke-static {v0, v1}, Lch/boye/httpclientandroidlib/impl/EnglishReasonPhraseCatalog;->setReason(ILjava/lang/String;)V

    const/16 v0, 0x1f4

    const-string v1, "Internal Server Error"

    .line 144
    invoke-static {v0, v1}, Lch/boye/httpclientandroidlib/impl/EnglishReasonPhraseCatalog;->setReason(ILjava/lang/String;)V

    const/16 v0, 0x1f5

    const-string v1, "Not Implemented"

    .line 146
    invoke-static {v0, v1}, Lch/boye/httpclientandroidlib/impl/EnglishReasonPhraseCatalog;->setReason(ILjava/lang/String;)V

    const/16 v0, 0x1f6

    const-string v1, "Bad Gateway"

    .line 148
    invoke-static {v0, v1}, Lch/boye/httpclientandroidlib/impl/EnglishReasonPhraseCatalog;->setReason(ILjava/lang/String;)V

    const/16 v0, 0x1f7

    const-string v1, "Service Unavailable"

    .line 150
    invoke-static {v0, v1}, Lch/boye/httpclientandroidlib/impl/EnglishReasonPhraseCatalog;->setReason(ILjava/lang/String;)V

    const/16 v0, 0x64

    const-string v1, "Continue"

    .line 154
    invoke-static {v0, v1}, Lch/boye/httpclientandroidlib/impl/EnglishReasonPhraseCatalog;->setReason(ILjava/lang/String;)V

    const/16 v0, 0x133

    const-string v1, "Temporary Redirect"

    .line 156
    invoke-static {v0, v1}, Lch/boye/httpclientandroidlib/impl/EnglishReasonPhraseCatalog;->setReason(ILjava/lang/String;)V

    const/16 v0, 0x195

    const-string v1, "Method Not Allowed"

    .line 158
    invoke-static {v0, v1}, Lch/boye/httpclientandroidlib/impl/EnglishReasonPhraseCatalog;->setReason(ILjava/lang/String;)V

    const/16 v0, 0x199

    const-string v1, "Conflict"

    .line 160
    invoke-static {v0, v1}, Lch/boye/httpclientandroidlib/impl/EnglishReasonPhraseCatalog;->setReason(ILjava/lang/String;)V

    const/16 v0, 0x19c

    const-string v1, "Precondition Failed"

    .line 162
    invoke-static {v0, v1}, Lch/boye/httpclientandroidlib/impl/EnglishReasonPhraseCatalog;->setReason(ILjava/lang/String;)V

    const/16 v0, 0x19d

    const-string v1, "Request Too Long"

    .line 164
    invoke-static {v0, v1}, Lch/boye/httpclientandroidlib/impl/EnglishReasonPhraseCatalog;->setReason(ILjava/lang/String;)V

    const/16 v0, 0x19e

    const-string v1, "Request-URI Too Long"

    .line 166
    invoke-static {v0, v1}, Lch/boye/httpclientandroidlib/impl/EnglishReasonPhraseCatalog;->setReason(ILjava/lang/String;)V

    const/16 v0, 0x19f

    const-string v1, "Unsupported Media Type"

    .line 168
    invoke-static {v0, v1}, Lch/boye/httpclientandroidlib/impl/EnglishReasonPhraseCatalog;->setReason(ILjava/lang/String;)V

    const/16 v0, 0x12c

    const-string v1, "Multiple Choices"

    .line 170
    invoke-static {v0, v1}, Lch/boye/httpclientandroidlib/impl/EnglishReasonPhraseCatalog;->setReason(ILjava/lang/String;)V

    const/16 v0, 0x12f

    const-string v1, "See Other"

    .line 172
    invoke-static {v0, v1}, Lch/boye/httpclientandroidlib/impl/EnglishReasonPhraseCatalog;->setReason(ILjava/lang/String;)V

    const/16 v0, 0x131

    const-string v1, "Use Proxy"

    .line 174
    invoke-static {v0, v1}, Lch/boye/httpclientandroidlib/impl/EnglishReasonPhraseCatalog;->setReason(ILjava/lang/String;)V

    const/16 v0, 0x192

    const-string v1, "Payment Required"

    .line 176
    invoke-static {v0, v1}, Lch/boye/httpclientandroidlib/impl/EnglishReasonPhraseCatalog;->setReason(ILjava/lang/String;)V

    const/16 v0, 0x196

    const-string v1, "Not Acceptable"

    .line 178
    invoke-static {v0, v1}, Lch/boye/httpclientandroidlib/impl/EnglishReasonPhraseCatalog;->setReason(ILjava/lang/String;)V

    const/16 v0, 0x197

    const-string v1, "Proxy Authentication Required"

    .line 180
    invoke-static {v0, v1}, Lch/boye/httpclientandroidlib/impl/EnglishReasonPhraseCatalog;->setReason(ILjava/lang/String;)V

    const/16 v0, 0x198

    const-string v1, "Request Timeout"

    .line 182
    invoke-static {v0, v1}, Lch/boye/httpclientandroidlib/impl/EnglishReasonPhraseCatalog;->setReason(ILjava/lang/String;)V

    const/16 v0, 0x65

    const-string v1, "Switching Protocols"

    .line 185
    invoke-static {v0, v1}, Lch/boye/httpclientandroidlib/impl/EnglishReasonPhraseCatalog;->setReason(ILjava/lang/String;)V

    const/16 v0, 0xcb

    const-string v1, "Non Authoritative Information"

    .line 187
    invoke-static {v0, v1}, Lch/boye/httpclientandroidlib/impl/EnglishReasonPhraseCatalog;->setReason(ILjava/lang/String;)V

    const/16 v0, 0xcd

    const-string v1, "Reset Content"

    .line 189
    invoke-static {v0, v1}, Lch/boye/httpclientandroidlib/impl/EnglishReasonPhraseCatalog;->setReason(ILjava/lang/String;)V

    const/16 v0, 0xce

    const-string v1, "Partial Content"

    .line 191
    invoke-static {v0, v1}, Lch/boye/httpclientandroidlib/impl/EnglishReasonPhraseCatalog;->setReason(ILjava/lang/String;)V

    const/16 v0, 0x1f8

    const-string v1, "Gateway Timeout"

    .line 193
    invoke-static {v0, v1}, Lch/boye/httpclientandroidlib/impl/EnglishReasonPhraseCatalog;->setReason(ILjava/lang/String;)V

    const/16 v0, 0x1f9

    const-string v1, "Http Version Not Supported"

    .line 195
    invoke-static {v0, v1}, Lch/boye/httpclientandroidlib/impl/EnglishReasonPhraseCatalog;->setReason(ILjava/lang/String;)V

    const/16 v0, 0x19a

    const-string v1, "Gone"

    .line 197
    invoke-static {v0, v1}, Lch/boye/httpclientandroidlib/impl/EnglishReasonPhraseCatalog;->setReason(ILjava/lang/String;)V

    const/16 v0, 0x19b

    const-string v1, "Length Required"

    .line 199
    invoke-static {v0, v1}, Lch/boye/httpclientandroidlib/impl/EnglishReasonPhraseCatalog;->setReason(ILjava/lang/String;)V

    const/16 v0, 0x1a0

    const-string v1, "Requested Range Not Satisfiable"

    .line 201
    invoke-static {v0, v1}, Lch/boye/httpclientandroidlib/impl/EnglishReasonPhraseCatalog;->setReason(ILjava/lang/String;)V

    const/16 v0, 0x1a1

    const-string v1, "Expectation Failed"

    .line 203
    invoke-static {v0, v1}, Lch/boye/httpclientandroidlib/impl/EnglishReasonPhraseCatalog;->setReason(ILjava/lang/String;)V

    const/16 v0, 0x66

    const-string v1, "Processing"

    .line 207
    invoke-static {v0, v1}, Lch/boye/httpclientandroidlib/impl/EnglishReasonPhraseCatalog;->setReason(ILjava/lang/String;)V

    const/16 v0, 0xcf

    const-string v1, "Multi-Status"

    .line 209
    invoke-static {v0, v1}, Lch/boye/httpclientandroidlib/impl/EnglishReasonPhraseCatalog;->setReason(ILjava/lang/String;)V

    const/16 v0, 0x1a6

    const-string v1, "Unprocessable Entity"

    .line 211
    invoke-static {v0, v1}, Lch/boye/httpclientandroidlib/impl/EnglishReasonPhraseCatalog;->setReason(ILjava/lang/String;)V

    const/16 v0, 0x1a3

    const-string v1, "Insufficient Space On Resource"

    .line 213
    invoke-static {v0, v1}, Lch/boye/httpclientandroidlib/impl/EnglishReasonPhraseCatalog;->setReason(ILjava/lang/String;)V

    const/16 v0, 0x1a4

    const-string v1, "Method Failure"

    .line 215
    invoke-static {v0, v1}, Lch/boye/httpclientandroidlib/impl/EnglishReasonPhraseCatalog;->setReason(ILjava/lang/String;)V

    const/16 v0, 0x1a7

    const-string v1, "Locked"

    .line 217
    invoke-static {v0, v1}, Lch/boye/httpclientandroidlib/impl/EnglishReasonPhraseCatalog;->setReason(ILjava/lang/String;)V

    const/16 v0, 0x1fb

    const-string v1, "Insufficient Storage"

    .line 219
    invoke-static {v0, v1}, Lch/boye/httpclientandroidlib/impl/EnglishReasonPhraseCatalog;->setReason(ILjava/lang/String;)V

    const/16 v0, 0x1a8

    const-string v1, "Failed Dependency"

    .line 221
    invoke-static {v0, v1}, Lch/boye/httpclientandroidlib/impl/EnglishReasonPhraseCatalog;->setReason(ILjava/lang/String;)V

    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static setReason(ILjava/lang/String;)V
    .locals 2

    .line 111
    div-int/lit8 v0, p0, 0x64

    mul-int/lit8 v1, v0, 0x64

    sub-int/2addr p0, v1

    .line 113
    sget-object v1, Lch/boye/httpclientandroidlib/impl/EnglishReasonPhraseCatalog;->REASON_PHRASES:[[Ljava/lang/String;

    aget-object v0, v1, v0

    aput-object p1, v0, p0

    return-void
.end method


# virtual methods
.method public getReason(ILjava/util/Locale;)Ljava/lang/String;
    .locals 3

    const/16 p2, 0x64

    if-lt p1, p2, :cond_1

    const/16 p2, 0x258

    if-ge p1, p2, :cond_1

    .line 80
    div-int/lit8 p2, p1, 0x64

    mul-int/lit8 v0, p2, 0x64

    sub-int/2addr p1, v0

    const/4 v0, 0x0

    .line 84
    sget-object v1, Lch/boye/httpclientandroidlib/impl/EnglishReasonPhraseCatalog;->REASON_PHRASES:[[Ljava/lang/String;

    aget-object v2, v1, p2

    array-length v2, v2

    if-le v2, p1, :cond_0

    .line 85
    aget-object p2, v1, p2

    aget-object v0, p2, p1

    :cond_0
    return-object v0

    .line 76
    :cond_1
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown category for status code "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method
