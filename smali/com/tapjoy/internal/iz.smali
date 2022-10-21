.class public final Lcom/tapjoy/internal/iz;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final a:Ljava/util/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 39
    const-class v0, Lcom/tapjoy/internal/iz;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/tapjoy/internal/iz;->a:Ljava/util/logging/Logger;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/tapjoy/internal/jf;)Lcom/tapjoy/internal/iw;
    .locals 1

    if-eqz p0, :cond_0

    .line 61
    new-instance v0, Lcom/tapjoy/internal/ja;

    invoke-direct {v0, p0}, Lcom/tapjoy/internal/ja;-><init>(Lcom/tapjoy/internal/jf;)V

    return-object v0

    .line 60
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "sink == null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static a(Lcom/tapjoy/internal/jg;)Lcom/tapjoy/internal/ix;
    .locals 1

    if-eqz p0, :cond_0

    .line 51
    new-instance v0, Lcom/tapjoy/internal/jb;

    invoke-direct {v0, p0}, Lcom/tapjoy/internal/jb;-><init>(Lcom/tapjoy/internal/jg;)V

    return-object v0

    .line 50
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "source == null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static a(Ljava/io/OutputStream;)Lcom/tapjoy/internal/jf;
    .locals 2

    .line 66
    new-instance v0, Lcom/tapjoy/internal/jh;

    invoke-direct {v0}, Lcom/tapjoy/internal/jh;-><init>()V

    if-eqz p0, :cond_0

    .line 1073
    new-instance v1, Lcom/tapjoy/internal/iz$1;

    invoke-direct {v1, v0, p0}, Lcom/tapjoy/internal/iz$1;-><init>(Lcom/tapjoy/internal/jh;Ljava/io/OutputStream;)V

    return-object v1

    .line 1070
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "out == null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static a(Ljava/io/InputStream;)Lcom/tapjoy/internal/jg;
    .locals 2

    .line 125
    new-instance v0, Lcom/tapjoy/internal/jh;

    invoke-direct {v0}, Lcom/tapjoy/internal/jh;-><init>()V

    if-eqz p0, :cond_0

    .line 1132
    new-instance v1, Lcom/tapjoy/internal/iz$2;

    invoke-direct {v1, v0, p0}, Lcom/tapjoy/internal/iz$2;-><init>(Lcom/tapjoy/internal/jh;Ljava/io/InputStream;)V

    return-object v1

    .line 1129
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "in == null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static a(Ljava/lang/AssertionError;)Z
    .locals 1

    .line 242
    invoke-virtual {p0}, Ljava/lang/AssertionError;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/AssertionError;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 243
    invoke-virtual {p0}, Ljava/lang/AssertionError;->getMessage()Ljava/lang/String;

    move-result-object p0

    const-string v0, "getsockname failed"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
