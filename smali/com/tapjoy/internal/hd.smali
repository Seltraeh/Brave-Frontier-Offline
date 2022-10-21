.class public final Lcom/tapjoy/internal/hd;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final p:Lcom/tapjoy/internal/hd;

.field private static q:Lcom/tapjoy/internal/hd;

.field private static w:Landroid/os/Handler;

.field private static x:Ljava/io/File;


# instance fields
.field public final a:Lcom/tapjoy/internal/hl;

.field public b:Lcom/tapjoy/internal/hm;

.field public c:Z

.field public d:Ljava/lang/String;

.field public e:Landroid/content/Context;

.field public f:Lcom/tapjoy/internal/hg;

.field public g:Lcom/tapjoy/internal/hc;

.field public h:Lcom/tapjoy/internal/hb;

.field public i:Ljava/lang/String;

.field public j:Z

.field public k:Ljava/lang/String;

.field public l:Ljava/lang/String;

.field public m:Z

.field public n:Ljava/lang/String;

.field public o:Lcom/tapjoy/internal/he;

.field private r:Z

.field private s:Z

.field private t:Lcom/tapjoy/internal/hq;

.field private u:Ljava/lang/String;

.field private v:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 64
    new-instance v0, Lcom/tapjoy/internal/hd;

    invoke-direct {v0}, Lcom/tapjoy/internal/hd;-><init>()V

    .line 65
    sput-object v0, Lcom/tapjoy/internal/hd;->p:Lcom/tapjoy/internal/hd;

    sput-object v0, Lcom/tapjoy/internal/hd;->q:Lcom/tapjoy/internal/hd;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 101
    iput-boolean v0, p0, Lcom/tapjoy/internal/hd;->c:Z

    .line 102
    iput-boolean v0, p0, Lcom/tapjoy/internal/hd;->r:Z

    const/4 v1, 0x0

    .line 107
    iput-object v1, p0, Lcom/tapjoy/internal/hd;->d:Ljava/lang/String;

    .line 108
    iput-boolean v0, p0, Lcom/tapjoy/internal/hd;->s:Z

    .line 123
    iput-boolean v0, p0, Lcom/tapjoy/internal/hd;->m:Z

    .line 949
    invoke-static {v1}, Lcom/tapjoy/internal/he;->a(Lcom/tapjoy/internal/gs;)Lcom/tapjoy/internal/he;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/hd;->o:Lcom/tapjoy/internal/he;

    .line 126
    new-instance v0, Lcom/tapjoy/internal/hl;

    invoke-direct {v0, p0}, Lcom/tapjoy/internal/hl;-><init>(Lcom/tapjoy/internal/hd;)V

    iput-object v0, p0, Lcom/tapjoy/internal/hd;->a:Lcom/tapjoy/internal/hl;

    return-void
.end method

.method static synthetic a(Lcom/tapjoy/internal/hd;)Landroid/content/Context;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/tapjoy/internal/hd;->e:Landroid/content/Context;

    return-object p0
.end method

.method public static a()Lcom/tapjoy/internal/hd;
    .locals 1

    .line 68
    sget-object v0, Lcom/tapjoy/internal/hd;->q:Lcom/tapjoy/internal/hd;

    return-object v0
.end method

.method public static a(Landroid/content/Context;)Lcom/tapjoy/internal/hd;
    .locals 1

    .line 1068
    sget-object v0, Lcom/tapjoy/internal/hd;->q:Lcom/tapjoy/internal/hd;

    .line 73
    invoke-virtual {v0, p0}, Lcom/tapjoy/internal/hd;->b(Landroid/content/Context;)V

    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 8068
    sget-object v0, Lcom/tapjoy/internal/hd;->q:Lcom/tapjoy/internal/hd;

    .line 1001
    invoke-virtual {v0, p0}, Lcom/tapjoy/internal/hd;->b(Landroid/content/Context;)V

    .line 1002
    iget-object p0, v0, Lcom/tapjoy/internal/hd;->f:Lcom/tapjoy/internal/hg;

    invoke-virtual {p0}, Lcom/tapjoy/internal/hg;->c()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/tapjoy/internal/ju;->c(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 1003
    iget-object p0, v0, Lcom/tapjoy/internal/hd;->f:Lcom/tapjoy/internal/hg;

    .line 8342
    monitor-enter p0

    .line 8343
    :try_start_0
    iget-object v1, p0, Lcom/tapjoy/internal/hg;->c:Lcom/tapjoy/internal/hn;

    iget-object v1, v1, Lcom/tapjoy/internal/hn;->d:Lcom/tapjoy/internal/n;

    invoke-virtual {v1, p1}, Lcom/tapjoy/internal/n;->a(Ljava/lang/String;)V

    .line 8344
    iget-object v1, p0, Lcom/tapjoy/internal/hg;->b:Lcom/tapjoy/internal/fk$a;

    iput-object p1, v1, Lcom/tapjoy/internal/fk$a;->d:Ljava/lang/String;

    .line 8345
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1004
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    if-lez p0, :cond_0

    .line 1005
    iget-object p0, v0, Lcom/tapjoy/internal/hd;->g:Lcom/tapjoy/internal/hc;

    .line 9083
    sget-object p1, Lcom/tapjoy/internal/fb;->a:Lcom/tapjoy/internal/fb;

    const-string v0, "referrer"

    invoke-virtual {p0, p1, v0}, Lcom/tapjoy/internal/hc;->a(Lcom/tapjoy/internal/fb;Ljava/lang/String;)Lcom/tapjoy/internal/ey$a;

    move-result-object p1

    .line 9084
    invoke-virtual {p0, p1}, Lcom/tapjoy/internal/hc;->a(Lcom/tapjoy/internal/ey$a;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 8345
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_0
    :goto_0
    return-void
.end method

.method public static a(Landroid/opengl/GLSurfaceView;)V
    .locals 1

    const-string v0, "setGLSurfaceView: The given GLSurfaceView was null"

    .line 389
    invoke-static {p0, v0}, Lcom/tapjoy/internal/ha;->a(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 393
    :cond_0
    invoke-static {p0}, Lcom/tapjoy/internal/gv;->a(Landroid/opengl/GLSurfaceView;)V

    return-void
.end method

.method public static declared-synchronized a(Ljava/lang/Runnable;)V
    .locals 3

    const-class v0, Lcom/tapjoy/internal/hd;

    monitor-enter v0

    .line 962
    :try_start_0
    sget-object v1, Lcom/tapjoy/internal/hd;->w:Landroid/os/Handler;

    if-nez v1, :cond_0

    .line 963
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v1, Lcom/tapjoy/internal/hd;->w:Landroid/os/Handler;

    .line 965
    :cond_0
    sget-object v1, Lcom/tapjoy/internal/hd;->w:Landroid/os/Handler;

    invoke-virtual {v1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 966
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;JZ)Z
    .locals 0

    .line 359
    invoke-virtual {p0, p1}, Lcom/tapjoy/internal/hd;->b(Landroid/content/Context;)V

    .line 360
    iget-object p1, p0, Lcom/tapjoy/internal/hd;->f:Lcom/tapjoy/internal/hg;

    invoke-virtual {p1, p2, p3, p4, p5}, Lcom/tapjoy/internal/hg;->a(Ljava/lang/String;JZ)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 361
    iget-object p1, p0, Lcom/tapjoy/internal/hd;->g:Lcom/tapjoy/internal/hc;

    invoke-virtual {p1, p2}, Lcom/tapjoy/internal/hc;->b(Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public static declared-synchronized c(Landroid/content/Context;)Ljava/io/File;
    .locals 3

    const-class v0, Lcom/tapjoy/internal/hd;

    monitor-enter v0

    .line 972
    :try_start_0
    sget-object v1, Lcom/tapjoy/internal/hd;->x:Ljava/io/File;

    if-nez v1, :cond_0

    const-string v1, "fiverocks"

    const/4 v2, 0x0

    .line 973
    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object p0

    sput-object p0, Lcom/tapjoy/internal/hd;->x:Ljava/io/File;

    .line 975
    :cond_0
    sget-object p0, Lcom/tapjoy/internal/hd;->x:Ljava/io/File;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method static d(Landroid/content/Context;)Ljava/io/File;
    .locals 2

    .line 979
    new-instance v0, Ljava/io/File;

    invoke-static {p0}, Lcom/tapjoy/internal/hd;->c(Landroid/content/Context;)Ljava/io/File;

    move-result-object p0

    const-string v1, "install"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private h()Z
    .locals 1

    .line 614
    iget-object v0, p0, Lcom/tapjoy/internal/hd;->t:Lcom/tapjoy/internal/hq;

    invoke-virtual {v0}, Lcom/tapjoy/internal/hq;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 615
    iget-object v0, p0, Lcom/tapjoy/internal/hd;->a:Lcom/tapjoy/internal/hl;

    invoke-virtual {v0}, Lcom/tapjoy/internal/hl;->a()V

    .line 616
    sget-object v0, Lcom/tapjoy/internal/hx;->a:Lcom/tapjoy/internal/hx;

    invoke-virtual {v0}, Lcom/tapjoy/internal/hx;->a()V

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public final a(Z)Lcom/tapjoy/internal/fe;
    .locals 0

    if-eqz p1, :cond_0

    .line 211
    iget-object p1, p0, Lcom/tapjoy/internal/hd;->f:Lcom/tapjoy/internal/hg;

    invoke-virtual {p1}, Lcom/tapjoy/internal/hg;->a()V

    .line 213
    :cond_0
    iget-object p1, p0, Lcom/tapjoy/internal/hd;->f:Lcom/tapjoy/internal/hg;

    invoke-virtual {p1}, Lcom/tapjoy/internal/hg;->b()Lcom/tapjoy/internal/fe;

    move-result-object p1

    return-object p1
.end method

.method public final a(Landroid/app/Activity;)V
    .locals 2

    const-string v0, "onActivityStart: The given activity was null"

    .line 564
    invoke-static {p1, v0}, Lcom/tapjoy/internal/ha;->a(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "onActivityStart"

    .line 569
    invoke-static {v0}, Lcom/tapjoy/internal/ha;->c(Ljava/lang/String;)Z

    .line 570
    invoke-virtual {p1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1}, Lcom/tapjoy/internal/b;->a(Landroid/app/Application;)V

    .line 571
    invoke-static {p1}, Lcom/tapjoy/internal/b;->b(Landroid/app/Activity;)V

    .line 573
    invoke-virtual {p0, v0}, Lcom/tapjoy/internal/hd;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 577
    :cond_1
    invoke-direct {p0}, Lcom/tapjoy/internal/hd;->h()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 578
    invoke-static {p1}, Lcom/tapjoy/internal/gx;->b(Landroid/app/Activity;)V

    :cond_2
    return-void
.end method

.method public final declared-synchronized a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    monitor-enter p0

    .line 480
    :try_start_0
    iget-boolean v0, p0, Lcom/tapjoy/internal/hd;->j:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 491
    monitor-exit p0

    return-void

    .line 493
    :cond_0
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/tapjoy/internal/hd;->b(Landroid/content/Context;)V

    .line 495
    iget-object p1, p0, Lcom/tapjoy/internal/hd;->e:Landroid/content/Context;

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    const-string v2, "The given context was null"

    invoke-static {p1, v2}, Lcom/tapjoy/internal/ha;->a(ZLjava/lang/String;)Z

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez p1, :cond_2

    .line 496
    monitor-exit p0

    return-void

    :cond_2
    if-eqz p5, :cond_3

    .line 3115
    :try_start_2
    invoke-virtual {p5}, Ljava/lang/String;->length()I

    move-result p1

    const/16 v2, 0x18

    if-ne p1, v2, :cond_3

    const-string p1, "[0-9a-f]{24}"

    invoke-virtual {p5, p1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p1, 0x1

    goto :goto_1

    :cond_3
    const-string p1, "Invalid App ID: {}"

    new-array v2, v0, [Ljava/lang/Object;

    aput-object p5, v2, v1

    .line 3118
    invoke-static {p1, v2}, Lcom/tapjoy/internal/ha;->b(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 p1, 0x0

    :goto_1
    if-nez p1, :cond_4

    .line 499
    monitor-exit p0

    return-void

    :cond_4
    if-eqz p6, :cond_5

    .line 3125
    :try_start_3
    invoke-virtual {p6}, Ljava/lang/String;->length()I

    move-result p1

    const/16 v2, 0x14

    if-ne p1, v2, :cond_5

    const-string p1, "[0-9A-Za-z\\-_]{20}"

    invoke-virtual {p6, p1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5

    const/4 p1, 0x1

    goto :goto_2

    :cond_5
    const-string p1, "Invalid App Key: {}"

    new-array v2, v0, [Ljava/lang/Object;

    aput-object p6, v2, v1

    .line 3128
    invoke-static {p1, v2}, Lcom/tapjoy/internal/ha;->b(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const/4 p1, 0x0

    :goto_2
    if-nez p1, :cond_6

    .line 502
    monitor-exit p0

    return-void

    .line 504
    :cond_6
    :try_start_4
    iput-object p2, p0, Lcom/tapjoy/internal/hd;->k:Ljava/lang/String;

    .line 505
    iput-object p3, p0, Lcom/tapjoy/internal/hd;->l:Ljava/lang/String;

    .line 506
    iput-object p5, p0, Lcom/tapjoy/internal/hd;->u:Ljava/lang/String;

    .line 507
    iput-object p6, p0, Lcom/tapjoy/internal/hd;->v:Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 512
    :try_start_5
    new-instance p1, Ljava/net/URL;

    invoke-direct {p1, p4}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/net/MalformedURLException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    const-string p2, "TapjoySDK"

    .line 4109
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " "

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " ("

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "; Android "

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "; "

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4110
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p2

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ")"

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 518
    new-instance p3, Lcom/tapjoy/internal/bz;

    invoke-direct {p3, p2, p1}, Lcom/tapjoy/internal/bz;-><init>(Ljava/lang/String;Ljava/net/URL;)V

    .line 5104
    sput-object p3, Lcom/tapjoy/internal/bv;->b:Lcom/tapjoy/internal/by;

    .line 521
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    .line 6094
    sput-object p1, Lcom/tapjoy/internal/bv;->a:Ljava/util/concurrent/ExecutorService;

    .line 522
    iget-object p1, p0, Lcom/tapjoy/internal/hd;->h:Lcom/tapjoy/internal/hb;

    .line 6188
    iput-object p3, p1, Lcom/tapjoy/internal/hb;->b:Lcom/tapjoy/internal/by;

    .line 6189
    invoke-virtual {p1}, Lcom/tapjoy/internal/hb;->a()V

    .line 525
    iput-boolean v0, p0, Lcom/tapjoy/internal/hd;->j:Z

    .line 6557
    new-instance p1, Lcom/tapjoy/internal/hh;

    iget-object p2, p0, Lcom/tapjoy/internal/hd;->e:Landroid/content/Context;

    invoke-static {p2}, Lcom/tapjoy/internal/hd;->d(Landroid/content/Context;)Ljava/io/File;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/tapjoy/internal/hh;-><init>(Ljava/io/File;)V

    .line 7019
    invoke-virtual {p1}, Lcom/tapjoy/internal/hh;->b()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_7

    goto :goto_3

    :cond_7
    const/4 v0, 0x0

    :goto_3
    if-nez v0, :cond_8

    .line 6558
    invoke-virtual {p1}, Lcom/tapjoy/internal/hh;->a()Z

    move-result p1

    if-eqz p1, :cond_8

    .line 6559
    iget-object p1, p0, Lcom/tapjoy/internal/hd;->g:Lcom/tapjoy/internal/hc;

    .line 7078
    sget-object p2, Lcom/tapjoy/internal/fb;->a:Lcom/tapjoy/internal/fb;

    const-string p3, "install"

    invoke-virtual {p1, p2, p3}, Lcom/tapjoy/internal/hc;->a(Lcom/tapjoy/internal/fb;Ljava/lang/String;)Lcom/tapjoy/internal/ey$a;

    move-result-object p2

    .line 7079
    invoke-virtual {p1, p2}, Lcom/tapjoy/internal/hc;->a(Lcom/tapjoy/internal/ey$a;)V

    .line 535
    :cond_8
    iget-object p1, p0, Lcom/tapjoy/internal/hd;->f:Lcom/tapjoy/internal/hg;

    .line 7673
    invoke-static {p5}, Lcom/tapjoy/internal/ju;->c(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_9

    .line 7676
    iget-object p2, p1, Lcom/tapjoy/internal/hg;->c:Lcom/tapjoy/internal/hn;

    iget-object p2, p2, Lcom/tapjoy/internal/hn;->D:Lcom/tapjoy/internal/n;

    invoke-virtual {p2}, Lcom/tapjoy/internal/n;->a()Ljava/lang/String;

    move-result-object p2

    .line 7678
    invoke-virtual {p5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_9

    .line 7679
    iget-object p2, p1, Lcom/tapjoy/internal/hg;->c:Lcom/tapjoy/internal/hn;

    iget-object p2, p2, Lcom/tapjoy/internal/hn;->D:Lcom/tapjoy/internal/n;

    invoke-virtual {p2, p5}, Lcom/tapjoy/internal/n;->a(Ljava/lang/String;)V

    .line 7680
    iget-object p1, p1, Lcom/tapjoy/internal/hg;->c:Lcom/tapjoy/internal/hn;

    invoke-virtual {p1, v1}, Lcom/tapjoy/internal/hn;->a(Z)V

    .line 537
    :cond_9
    invoke-virtual {p0}, Lcom/tapjoy/internal/hd;->b()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 538
    monitor-exit p0

    return-void

    :catch_0
    move-exception p1

    .line 514
    :try_start_7
    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized a(Ljava/lang/String;)V
    .locals 5
    .param p1    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    monitor-enter p0

    .line 239
    :try_start_0
    iget-boolean v0, p0, Lcom/tapjoy/internal/hd;->j:Z

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    .line 240
    iget-object v0, p0, Lcom/tapjoy/internal/hd;->n:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 241
    iget-object p1, p0, Lcom/tapjoy/internal/hd;->n:Ljava/lang/String;

    :cond_0
    const/4 v0, 0x0

    .line 243
    iput-object v0, p0, Lcom/tapjoy/internal/hd;->n:Ljava/lang/String;

    if-eqz p1, :cond_2

    .line 2253
    iget-object v0, p0, Lcom/tapjoy/internal/hd;->f:Lcom/tapjoy/internal/hg;

    invoke-virtual {v0}, Lcom/tapjoy/internal/hg;->b()Lcom/tapjoy/internal/fe;

    move-result-object v0

    const-string v1, "GCM registration id of device {} updated for sender {}: {}"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 2254
    iget-object v4, v0, Lcom/tapjoy/internal/fe;->d:Lcom/tapjoy/internal/fd;

    iget-object v4, v4, Lcom/tapjoy/internal/fd;->h:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/tapjoy/internal/hd;->d:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Lcom/tapjoy/internal/ha;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2256
    new-instance v1, Lcom/tapjoy/internal/ip;

    invoke-direct {v1, v0, p1}, Lcom/tapjoy/internal/ip;-><init>(Lcom/tapjoy/internal/fe;Ljava/lang/String;)V

    new-instance v0, Lcom/tapjoy/internal/hd$1;

    invoke-direct {v0, p0, p1}, Lcom/tapjoy/internal/hd$1;-><init>(Lcom/tapjoy/internal/hd;Ljava/lang/String;)V

    .line 3081
    sget-object p1, Lcom/tapjoy/internal/bv;->a:Ljava/util/concurrent/ExecutorService;

    invoke-virtual {v1, v0, p1}, Lcom/tapjoy/internal/bv;->a(Lcom/tapjoy/internal/ca;Ljava/util/concurrent/ExecutorService;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 245
    monitor-exit p0

    return-void

    :cond_1
    if-eqz p1, :cond_2

    .line 248
    :try_start_1
    iput-object p1, p0, Lcom/tapjoy/internal/hd;->n:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 250
    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 11
    .param p2    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    const-string v0, "skuDetails"

    const-string v1, "trackPurchase"

    .line 654
    invoke-virtual {p0, v1}, Lcom/tapjoy/internal/hd;->c(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    return-void

    .line 659
    :cond_0
    :try_start_0
    new-instance v2, Lcom/tapjoy/internal/d;

    invoke-direct {v2, p1}, Lcom/tapjoy/internal/d;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 664
    iget-object p1, v2, Lcom/tapjoy/internal/d;->a:Ljava/lang/String;

    invoke-static {p1}, Lcom/tapjoy/internal/gy;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 665
    iget-object p1, v2, Lcom/tapjoy/internal/d;->f:Ljava/lang/String;

    invoke-static {p1}, Lcom/tapjoy/internal/gy;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v3, "insufficient fields"

    if-eqz v4, :cond_8

    if-nez p1, :cond_1

    goto/16 :goto_1

    .line 670
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x3

    if-eq v5, v6, :cond_2

    const-string p1, "invalid currency code"

    .line 671
    invoke-static {v1, v0, p1}, Lcom/tapjoy/internal/ha;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 674
    :cond_2
    invoke-static {p2}, Lcom/tapjoy/internal/gy;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 675
    invoke-static {p3}, Lcom/tapjoy/internal/gy;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    const-string v0, "purchaseData"

    if-eqz p2, :cond_5

    if-eqz p3, :cond_4

    .line 679
    :try_start_1
    new-instance v5, Lcom/tapjoy/internal/e;

    invoke-direct {v5, p2}, Lcom/tapjoy/internal/e;-><init>(Ljava/lang/String;)V

    .line 680
    iget-object v6, v5, Lcom/tapjoy/internal/e;->a:Ljava/lang/String;

    invoke-static {v6}, Lcom/tapjoy/internal/ju;->c(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_3

    iget-object v6, v5, Lcom/tapjoy/internal/e;->b:Ljava/lang/String;

    .line 681
    invoke-static {v6}, Lcom/tapjoy/internal/ju;->c(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_3

    iget-object v6, v5, Lcom/tapjoy/internal/e;->c:Ljava/lang/String;

    .line 682
    invoke-static {v6}, Lcom/tapjoy/internal/ju;->c(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_3

    iget-wide v5, v5, Lcom/tapjoy/internal/e;->d:J

    const-wide/16 v7, 0x0

    cmp-long v9, v5, v7

    if-nez v9, :cond_6

    .line 684
    :cond_3
    invoke-static {v1, v0, v3}, Lcom/tapjoy/internal/ha;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    const-string v3, "invalid PurchaseData JSON"

    .line 687
    invoke-static {v1, v0, v3}, Lcom/tapjoy/internal/ha;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    const-string v0, "dataSignature"

    const-string v3, "is null, skipping purchase validation"

    .line 692
    invoke-static {v1, v0, v3}, Lcom/tapjoy/internal/ha;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    if-eqz p3, :cond_6

    const-string v3, "is null. skipping purchase validation"

    .line 698
    invoke-static {v1, v0, v3}, Lcom/tapjoy/internal/ha;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 701
    :cond_6
    :goto_0
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    .line 702
    invoke-static {p4}, Lcom/tapjoy/internal/gy;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 704
    iget-object v3, p0, Lcom/tapjoy/internal/hd;->g:Lcom/tapjoy/internal/hc;

    iget-wide v0, v2, Lcom/tapjoy/internal/d;->g:J

    long-to-double v0, v0

    const-wide v6, 0x412e848000000000L    # 1000000.0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    div-double v6, v0, v6

    move-object v8, p2

    move-object v9, p3

    invoke-virtual/range {v3 .. v10}, Lcom/tapjoy/internal/hc;->a(Ljava/lang/String;Ljava/lang/String;DLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_7

    if-eqz p3, :cond_7

    const-string p1, "trackPurchase with purchaseData called"

    .line 707
    invoke-static {p1}, Lcom/tapjoy/internal/ha;->a(Ljava/lang/String;)V

    return-void

    :cond_7
    const-string p1, "trackPurchase without purchaseData called"

    .line 710
    invoke-static {p1}, Lcom/tapjoy/internal/ha;->a(Ljava/lang/String;)V

    return-void

    .line 667
    :cond_8
    :goto_1
    invoke-static {v1, v0, v3}, Lcom/tapjoy/internal/ha;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catch_1
    const-string p1, "invalid SkuDetails JSON"

    .line 661
    invoke-static {v1, v0, p1}, Lcom/tapjoy/internal/ha;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 7
    .param p1    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    const-string v0, "trackEvent"

    .line 764
    invoke-virtual {p0, v0}, Lcom/tapjoy/internal/hd;->d(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "trackEvent: name was null"

    .line 767
    invoke-static {p2, v0}, Lcom/tapjoy/internal/ha;->a(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    cmp-long v3, p5, v1

    if-eqz v3, :cond_2

    .line 772
    invoke-static {}, Lcom/tapjoy/internal/jy;->b()Ljava/util/LinkedHashMap;

    move-result-object v0

    .line 773
    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p5

    const-string p6, "value"

    invoke-interface {v0, p6, p5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 775
    :cond_2
    iget-object v1, p0, Lcom/tapjoy/internal/hd;->g:Lcom/tapjoy/internal/hc;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, v0

    invoke-virtual/range {v1 .. v6}, Lcom/tapjoy/internal/hc;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    const/4 p5, 0x5

    new-array p5, p5, [Ljava/lang/Object;

    const/4 p6, 0x0

    aput-object p1, p5, p6

    const/4 p1, 0x1

    aput-object p2, p5, p1

    const/4 p1, 0x2

    aput-object p3, p5, p1

    const/4 p1, 0x3

    aput-object p4, p5, p1

    const/4 p1, 0x4

    aput-object v0, p5, p1

    const-string p1, "trackEvent category:{}, name:{}, p1:{}, p2:{}, values:{} called"

    .line 776
    invoke-static {p1, p5}, Lcom/tapjoy/internal/ha;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;JLjava/lang/String;J)V
    .locals 9
    .param p1    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p8    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p11    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    move-object v0, p0

    move-object v1, p2

    move-object v2, p5

    move-object/from16 v3, p8

    move-object/from16 v4, p11

    const-string v5, "trackEvent"

    .line 783
    invoke-virtual {p0, v5}, Lcom/tapjoy/internal/hd;->d(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    return-void

    :cond_0
    const-string v5, "trackEvent: name was null"

    .line 786
    invoke-static {p2, v5}, Lcom/tapjoy/internal/ha;->a(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    return-void

    .line 789
    :cond_1
    invoke-static {}, Lcom/tapjoy/internal/jy;->b()Ljava/util/LinkedHashMap;

    move-result-object v5

    const-wide/16 v6, 0x0

    if-eqz v2, :cond_2

    cmp-long v8, p6, v6

    if-eqz v8, :cond_2

    .line 791
    invoke-static/range {p6 .. p7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-interface {v5, p5, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    if-eqz v3, :cond_3

    cmp-long v2, p9, v6

    if-eqz v2, :cond_3

    .line 794
    invoke-static/range {p9 .. p10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v5, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    if-eqz v4, :cond_4

    cmp-long v2, p12, v6

    if-eqz v2, :cond_4

    .line 797
    invoke-static/range {p12 .. p13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v5, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 799
    :cond_4
    invoke-interface {v5}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_5

    const/4 v5, 0x0

    .line 802
    :cond_5
    iget-object v2, v0, Lcom/tapjoy/internal/hd;->g:Lcom/tapjoy/internal/hc;

    move-object p5, v2

    move-object p6, p1

    move-object/from16 p7, p2

    move-object/from16 p8, p3

    move-object/from16 p9, p4

    move-object/from16 p10, v5

    invoke-virtual/range {p5 .. p10}, Lcom/tapjoy/internal/hc;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object v1, v2, v3

    const/4 v1, 0x2

    aput-object p3, v2, v1

    const/4 v1, 0x3

    aput-object p4, v2, v1

    const/4 v1, 0x4

    aput-object v5, v2, v1

    const-string v1, "trackEvent category:{}, name:{}, p1:{}, p2:{}, values:{} called"

    .line 803
    invoke-static {v1, v2}, Lcom/tapjoy/internal/ha;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method final a(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 884
    iget-object v0, p0, Lcom/tapjoy/internal/hd;->g:Lcom/tapjoy/internal/hc;

    invoke-virtual {v0, p1}, Lcom/tapjoy/internal/hc;->a(Ljava/util/Map;)V

    return-void
.end method

.method final a(Ljava/util/Map;J)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;J)V"
        }
    .end annotation

    .line 888
    iget-object v0, p0, Lcom/tapjoy/internal/hd;->g:Lcom/tapjoy/internal/hc;

    invoke-virtual {v0, p1, p2, p3}, Lcom/tapjoy/internal/hc;->a(Ljava/util/Map;J)V

    return-void
.end method

.method final a(Ljava/util/Map;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 892
    iget-object v0, p0, Lcom/tapjoy/internal/hd;->g:Lcom/tapjoy/internal/hc;

    invoke-virtual {v0, p1, p2}, Lcom/tapjoy/internal/hc;->a(Ljava/util/Map;Ljava/lang/String;)V

    return-void
.end method

.method public final a(Ljava/util/Set;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "setUserTags"

    .line 452
    invoke-virtual {p0, v0}, Lcom/tapjoy/internal/hd;->d(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_3

    .line 455
    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 456
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 457
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 459
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 460
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0xc8

    if-gt v2, v3, :cond_1

    .line 461
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 462
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    if-ge v1, v3, :cond_2

    goto :goto_0

    :cond_2
    move-object p1, v0

    .line 470
    :cond_3
    iget-object v0, p0, Lcom/tapjoy/internal/hd;->f:Lcom/tapjoy/internal/hg;

    invoke-virtual {v0, p1}, Lcom/tapjoy/internal/hg;->a(Ljava/util/Set;)V

    return-void
.end method

.method public final a(Landroid/content/Context;Ljava/lang/String;Z)Z
    .locals 6

    .line 351
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/tapjoy/internal/hd;->a(Landroid/content/Context;Ljava/lang/String;JZ)Z

    move-result p1

    return p1
.end method

.method public final declared-synchronized b()V
    .locals 2

    monitor-enter p0

    .line 223
    :try_start_0
    iget-boolean v0, p0, Lcom/tapjoy/internal/hd;->j:Z

    if-eqz v0, :cond_0

    .line 224
    iget-object v0, p0, Lcom/tapjoy/internal/hd;->e:Landroid/content/Context;

    invoke-static {v0}, Lcom/tapjoy/internal/hf;->a(Landroid/content/Context;)Lcom/tapjoy/internal/hf;

    move-result-object v0

    iget-object v1, p0, Lcom/tapjoy/internal/hd;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/hf;->d(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 232
    invoke-virtual {p0, v0}, Lcom/tapjoy/internal/hd;->a(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 234
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final b(Landroid/app/Activity;)V
    .locals 1

    const-string v0, "onActivityStop: The given activity was null"

    .line 583
    invoke-static {p1, v0}, Lcom/tapjoy/internal/ha;->a(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "onActivityStop"

    .line 588
    invoke-static {v0}, Lcom/tapjoy/internal/ha;->c(Ljava/lang/String;)Z

    .line 589
    invoke-static {p1}, Lcom/tapjoy/internal/b;->c(Landroid/app/Activity;)V

    .line 591
    invoke-virtual {p0, v0}, Lcom/tapjoy/internal/hd;->c(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    return-void

    .line 595
    :cond_1
    invoke-static {}, Lcom/tapjoy/internal/b;->b()Z

    move-result p1

    if-nez p1, :cond_2

    .line 596
    iget-object p1, p0, Lcom/tapjoy/internal/hd;->t:Lcom/tapjoy/internal/hq;

    invoke-virtual {p1}, Lcom/tapjoy/internal/hq;->b()V

    :cond_2
    return-void
.end method

.method public final declared-synchronized b(Landroid/content/Context;)V
    .locals 4

    monitor-enter p0

    .line 165
    :try_start_0
    iget-object v0, p0, Lcom/tapjoy/internal/hd;->e:Landroid/content/Context;

    if-nez v0, :cond_1

    .line 166
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    .line 167
    iput-object p1, p0, Lcom/tapjoy/internal/hd;->e:Landroid/content/Context;

    .line 168
    invoke-static {}, Lcom/tapjoy/internal/ge;->a()Lcom/tapjoy/internal/ge;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tapjoy/internal/ge;->a(Landroid/content/Context;)V

    .line 170
    invoke-static {p1}, Lcom/tapjoy/internal/hg;->a(Landroid/content/Context;)Lcom/tapjoy/internal/hg;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/hd;->f:Lcom/tapjoy/internal/hg;

    .line 2013
    new-instance v0, Ljava/io/File;

    invoke-static {p1}, Lcom/tapjoy/internal/hd;->c(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    const-string v2, "events2"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 173
    iget-object v1, p0, Lcom/tapjoy/internal/hd;->h:Lcom/tapjoy/internal/hb;

    if-nez v1, :cond_0

    .line 174
    new-instance v1, Lcom/tapjoy/internal/hb;

    invoke-direct {v1, v0}, Lcom/tapjoy/internal/hb;-><init>(Ljava/io/File;)V

    iput-object v1, p0, Lcom/tapjoy/internal/hd;->h:Lcom/tapjoy/internal/hb;

    .line 177
    :cond_0
    new-instance v0, Lcom/tapjoy/internal/hc;

    iget-object v1, p0, Lcom/tapjoy/internal/hd;->f:Lcom/tapjoy/internal/hg;

    iget-object v2, p0, Lcom/tapjoy/internal/hd;->h:Lcom/tapjoy/internal/hb;

    invoke-direct {v0, v1, v2}, Lcom/tapjoy/internal/hc;-><init>(Lcom/tapjoy/internal/hg;Lcom/tapjoy/internal/hb;)V

    iput-object v0, p0, Lcom/tapjoy/internal/hd;->g:Lcom/tapjoy/internal/hc;

    .line 178
    new-instance v1, Lcom/tapjoy/internal/hq;

    invoke-direct {v1, v0}, Lcom/tapjoy/internal/hq;-><init>(Lcom/tapjoy/internal/hc;)V

    iput-object v1, p0, Lcom/tapjoy/internal/hd;->t:Lcom/tapjoy/internal/hq;

    .line 179
    new-instance v0, Lcom/tapjoy/internal/hm;

    invoke-direct {v0, p1}, Lcom/tapjoy/internal/hm;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tapjoy/internal/hd;->b:Lcom/tapjoy/internal/hm;

    .line 181
    new-instance v0, Lcom/tapjoy/internal/gl;

    new-instance v1, Ljava/io/File;

    .line 182
    invoke-static {p1}, Lcom/tapjoy/internal/hd;->c(Landroid/content/Context;)Ljava/io/File;

    move-result-object v2

    const-string v3, "usages"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/tapjoy/internal/hd;->g:Lcom/tapjoy/internal/hc;

    invoke-direct {v0, v1, v2}, Lcom/tapjoy/internal/gl;-><init>(Ljava/io/File;Lcom/tapjoy/internal/hc;)V

    .line 181
    invoke-static {v0}, Lcom/tapjoy/internal/gj;->a(Lcom/tapjoy/internal/gl;)V

    .line 184
    sget-object v0, Lcom/tapjoy/internal/hx;->a:Lcom/tapjoy/internal/hx;

    .line 2065
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, v0, Lcom/tapjoy/internal/hx;->b:Landroid/content/Context;

    const-string v1, "tapjoyCacheDataMMF2E"

    const/4 v2, 0x0

    .line 2066
    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, v0, Lcom/tapjoy/internal/hx;->c:Landroid/content/SharedPreferences;

    const-string v1, "tapjoyCacheDataMMF2U"

    .line 2067
    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, v0, Lcom/tapjoy/internal/hx;->d:Landroid/content/SharedPreferences;

    .line 2068
    invoke-virtual {v0}, Lcom/tapjoy/internal/hx;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 186
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final b(Ljava/lang/String;)V
    .locals 1

    .line 344
    iget-object v0, p0, Lcom/tapjoy/internal/hd;->g:Lcom/tapjoy/internal/hc;

    invoke-virtual {v0, p1}, Lcom/tapjoy/internal/hc;->a(Ljava/lang/String;)V

    return-void
.end method

.method public final c()Z
    .locals 3

    const/4 v0, 0x0

    .line 303
    :try_start_0
    iget-object v1, p0, Lcom/tapjoy/internal/hd;->e:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-string v2, "com.android.installreferrer.api.InstallReferrerStateListener"

    invoke-virtual {v1, v2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    :catch_0
    return v0
.end method

.method public final c(Ljava/lang/String;)Z
    .locals 1

    .line 541
    iget-boolean v0, p0, Lcom/tapjoy/internal/hd;->j:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tapjoy/internal/hd;->i:Ljava/lang/String;

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/tapjoy/internal/hd;->e:Landroid/content/Context;

    if-nez v0, :cond_2

    .line 542
    :cond_1
    invoke-static {p1}, Lcom/tapjoy/internal/ha;->e(Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1

    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method public final d()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "getUserTags"

    .line 445
    invoke-virtual {p0, v0}, Lcom/tapjoy/internal/hd;->d(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 446
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    return-object v0

    .line 448
    :cond_0
    iget-object v0, p0, Lcom/tapjoy/internal/hd;->f:Lcom/tapjoy/internal/hg;

    invoke-virtual {v0}, Lcom/tapjoy/internal/hg;->e()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public final d(Ljava/lang/String;)Z
    .locals 1

    .line 549
    iget-object v0, p0, Lcom/tapjoy/internal/hd;->e:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 550
    invoke-static {p1}, Lcom/tapjoy/internal/ha;->d(Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public final e()Z
    .locals 1

    .line 601
    iget-object v0, p0, Lcom/tapjoy/internal/hd;->t:Lcom/tapjoy/internal/hq;

    if-eqz v0, :cond_0

    .line 8038
    iget-object v0, v0, Lcom/tapjoy/internal/hq;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final f()V
    .locals 1

    const-string v0, "startSession"

    .line 605
    invoke-virtual {p0, v0}, Lcom/tapjoy/internal/hd;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 608
    :cond_0
    invoke-direct {p0}, Lcom/tapjoy/internal/hd;->h()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 609
    invoke-static {v0}, Lcom/tapjoy/internal/gx;->b(Landroid/app/Activity;)V

    :cond_1
    return-void
.end method

.method public final g()V
    .locals 1

    const-string v0, "endSession"

    .line 624
    invoke-virtual {p0, v0}, Lcom/tapjoy/internal/hd;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 627
    :cond_0
    iget-object v0, p0, Lcom/tapjoy/internal/hd;->t:Lcom/tapjoy/internal/hq;

    invoke-virtual {v0}, Lcom/tapjoy/internal/hq;->b()V

    return-void
.end method
