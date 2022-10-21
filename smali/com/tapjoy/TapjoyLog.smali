.class public Lcom/tapjoy/TapjoyLog;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String; = "TapjoyLog"

.field private static b:I = 0x6

.field private static c:I = 0x4

.field private static d:I = 0x2

.field private static e:Z = false

.field private static f:I = 0x6


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    .line 23
    sget-object v0, Lcom/tapjoy/TapjoyLog;->a:Ljava/lang/String;

    return-object v0
.end method

.method private static a(ILjava/lang/String;Ljava/lang/String;)V
    .locals 5

    .line 180
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/tapjoy/TapjoyLog;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 182
    sget v0, Lcom/tapjoy/TapjoyLog;->f:I

    if-gt v0, p0, :cond_3

    .line 184
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x1000

    if-le v0, v1, :cond_2

    const/4 v0, 0x0

    .line 186
    :goto_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    div-int/2addr v2, v1

    if-gt v0, v2, :cond_1

    mul-int/lit16 v2, v0, 0x1000

    add-int/lit8 v0, v0, 0x1

    mul-int/lit16 v3, v0, 0x1000

    .line 190
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    if-le v3, v4, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    .line 191
    :cond_0
    invoke-virtual {p2, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, p1, v2}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    return-void

    .line 196
    :cond_2
    invoke-static {p0, p1, p2}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    :cond_3
    return-void
.end method

.method static a(Ljava/lang/String;Z)V
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    if-nez p1, :cond_0

    .line 70
    invoke-static {}, Lcom/tapjoy/TapjoyAppSettings;->getInstance()Lcom/tapjoy/TapjoyAppSettings;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/tapjoy/TapjoyAppSettings;->getInstance()Lcom/tapjoy/TapjoyAppSettings;

    move-result-object p1

    .line 2094
    iget-object p1, p1, Lcom/tapjoy/TapjoyAppSettings;->a:Ljava/lang/String;

    if-eqz p1, :cond_0

    .line 71
    sget-object p0, Lcom/tapjoy/TapjoyLog;->a:Ljava/lang/String;

    const-string p1, "setLoggingLevel -- log setting already persisted"

    invoke-static {p0, p1}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const-string p1, "internal"

    .line 76
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 77
    sget p0, Lcom/tapjoy/TapjoyLog;->d:I

    sput p0, Lcom/tapjoy/TapjoyLog;->f:I

    .line 78
    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p1, 0x13

    if-lt p0, p1, :cond_4

    .line 79
    new-instance p0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 80
    new-instance p1, Lcom/tapjoy/TapjoyLog$1;

    invoke-direct {p1}, Lcom/tapjoy/TapjoyLog$1;-><init>()V

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_1
    const-string p1, "debug_on"

    .line 88
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 89
    sget p0, Lcom/tapjoy/TapjoyLog;->c:I

    sput p0, Lcom/tapjoy/TapjoyLog;->f:I

    goto :goto_0

    :cond_2
    const-string p1, "debug_off"

    .line 90
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 91
    sget p0, Lcom/tapjoy/TapjoyLog;->b:I

    sput p0, Lcom/tapjoy/TapjoyLog;->f:I

    goto :goto_0

    .line 93
    :cond_3
    sget-object p1, Lcom/tapjoy/TapjoyLog;->a:Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "unrecognized loggingLevel: "

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    sget p0, Lcom/tapjoy/TapjoyLog;->b:I

    sput p0, Lcom/tapjoy/TapjoyLog;->f:I

    .line 97
    :cond_4
    :goto_0
    sget-object p0, Lcom/tapjoy/TapjoyLog;->a:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "logThreshold="

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v0, Lcom/tapjoy/TapjoyLog;->f:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x3

    .line 159
    invoke-static {v0, p0, p1}, Lcom/tapjoy/TapjoyLog;->a(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static e(Ljava/lang/String;Lcom/tapjoy/TapjoyErrorMessage;)V
    .locals 2

    if-eqz p1, :cond_1

    .line 136
    sget v0, Lcom/tapjoy/TapjoyLog;->f:I

    sget v1, Lcom/tapjoy/TapjoyLog;->d:I

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/tapjoy/TapjoyErrorMessage;->getType()Lcom/tapjoy/TapjoyErrorMessage$ErrorType;

    move-result-object v0

    sget-object v1, Lcom/tapjoy/TapjoyErrorMessage$ErrorType;->INTERNAL_ERROR:Lcom/tapjoy/TapjoyErrorMessage$ErrorType;

    if-eq v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x6

    .line 137
    invoke-virtual {p1}, Lcom/tapjoy/TapjoyErrorMessage;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p0, p1}, Lcom/tapjoy/TapjoyLog;->a(ILjava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 126
    new-instance v0, Lcom/tapjoy/TapjoyErrorMessage;

    sget-object v1, Lcom/tapjoy/TapjoyErrorMessage$ErrorType;->INTERNAL_ERROR:Lcom/tapjoy/TapjoyErrorMessage$ErrorType;

    invoke-direct {v0, v1, p1}, Lcom/tapjoy/TapjoyErrorMessage;-><init>(Lcom/tapjoy/TapjoyErrorMessage$ErrorType;Ljava/lang/String;)V

    invoke-static {p0, v0}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;Lcom/tapjoy/TapjoyErrorMessage;)V

    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x4

    .line 116
    invoke-static {v0, p0, p1}, Lcom/tapjoy/TapjoyLog;->a(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static isLoggingEnabled()Z
    .locals 1

    .line 105
    sget-boolean v0, Lcom/tapjoy/TapjoyLog;->e:Z

    return v0
.end method

.method public static setDebugEnabled(Z)V
    .locals 3

    .line 43
    sput-boolean p0, Lcom/tapjoy/TapjoyLog;->e:Z

    .line 1050
    invoke-static {}, Lcom/tapjoy/internal/hd;->a()Lcom/tapjoy/internal/hd;

    move-result-object v0

    .line 2024
    sget-boolean v1, Lcom/tapjoy/internal/ha;->a:Z

    const/4 v2, 0x0

    if-eq v1, p0, :cond_1

    .line 2025
    sput-boolean p0, Lcom/tapjoy/internal/ha;->a:Z

    if-eqz p0, :cond_0

    const-string v1, "The debug mode has been enabled"

    .line 2027
    invoke-static {v1}, Lcom/tapjoy/internal/ha;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v1, "The debug mode has been disabled"

    .line 2029
    invoke-static {v1}, Lcom/tapjoy/internal/ha;->a(Ljava/lang/String;)V

    :goto_0
    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_2

    if-eqz p0, :cond_2

    .line 1150
    iget-boolean p0, v0, Lcom/tapjoy/internal/hd;->j:Z

    if-eqz p0, :cond_2

    .line 1151
    iget-object p0, v0, Lcom/tapjoy/internal/hd;->h:Lcom/tapjoy/internal/hb;

    invoke-virtual {p0}, Lcom/tapjoy/internal/hb;->a()V

    .line 46
    :cond_2
    sget-boolean p0, Lcom/tapjoy/TapjoyLog;->e:Z

    if-eqz p0, :cond_3

    const-string p0, "debug_on"

    .line 47
    invoke-static {p0, v2}, Lcom/tapjoy/TapjoyLog;->a(Ljava/lang/String;Z)V

    return-void

    :cond_3
    const-string p0, "debug_off"

    .line 49
    invoke-static {p0, v2}, Lcom/tapjoy/TapjoyLog;->a(Ljava/lang/String;Z)V

    return-void
.end method

.method public static setInternalLogging(Z)V
    .locals 1

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    const-string v0, "internal"

    .line 55
    invoke-static {v0, p0}, Lcom/tapjoy/TapjoyLog;->a(Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x2

    .line 169
    invoke-static {v0, p0, p1}, Lcom/tapjoy/TapjoyLog;->a(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x5

    .line 149
    invoke-static {v0, p0, p1}, Lcom/tapjoy/TapjoyLog;->a(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method
