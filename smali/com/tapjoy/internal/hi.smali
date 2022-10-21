.class public Lcom/tapjoy/internal/hi;
.super Lcom/tapjoy/internal/hk;
.source "SourceFile"


# static fields
.field private static final h:Ljava/lang/String; = "hi"

.field private static i:Lcom/tapjoy/internal/hi;


# instance fields
.field final a:Ljava/lang/String;

.field final b:Lcom/tapjoy/internal/hy;

.field private final j:Lcom/tapjoy/internal/hd;

.field private k:Lcom/tapjoy/internal/c;

.field private l:Z

.field private m:J

.field private n:Landroid/content/Context;

.field private o:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/tapjoy/internal/hd;Ljava/lang/String;Lcom/tapjoy/internal/hy;Landroid/content/Context;)V
    .locals 1

    .line 69
    invoke-direct {p0}, Lcom/tapjoy/internal/hk;-><init>()V

    const/4 v0, 0x0

    .line 63
    iput-boolean v0, p0, Lcom/tapjoy/internal/hi;->o:Z

    .line 70
    iput-object p1, p0, Lcom/tapjoy/internal/hi;->j:Lcom/tapjoy/internal/hd;

    .line 71
    iput-object p2, p0, Lcom/tapjoy/internal/hi;->a:Ljava/lang/String;

    .line 72
    iput-object p3, p0, Lcom/tapjoy/internal/hi;->b:Lcom/tapjoy/internal/hy;

    .line 73
    iput-object p4, p0, Lcom/tapjoy/internal/hi;->n:Landroid/content/Context;

    return-void
.end method

.method public static a()V
    .locals 1

    .line 48
    sget-object v0, Lcom/tapjoy/internal/hi;->i:Lcom/tapjoy/internal/hi;

    if-eqz v0, :cond_0

    .line 50
    invoke-direct {v0}, Lcom/tapjoy/internal/hi;->e()V

    :cond_0
    return-void
.end method

.method private a(Landroid/app/Activity;Lcom/tapjoy/internal/he;Lcom/tapjoy/internal/fz;)V
    .locals 5

    .line 166
    iget-boolean v0, p0, Lcom/tapjoy/internal/hi;->l:Z

    if-eqz v0, :cond_0

    .line 167
    sget-object p1, Lcom/tapjoy/internal/hi;->h:Ljava/lang/String;

    new-instance p2, Lcom/tapjoy/TapjoyErrorMessage;

    sget-object p3, Lcom/tapjoy/TapjoyErrorMessage$ErrorType;->INTEGRATION_ERROR:Lcom/tapjoy/TapjoyErrorMessage$ErrorType;

    const-string v0, "Content is already displayed"

    invoke-direct {p2, p3, v0}, Lcom/tapjoy/TapjoyErrorMessage;-><init>(Lcom/tapjoy/TapjoyErrorMessage$ErrorType;Ljava/lang/String;)V

    invoke-static {p1, p2}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;Lcom/tapjoy/TapjoyErrorMessage;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 171
    iput-boolean v0, p0, Lcom/tapjoy/internal/hi;->l:Z

    .line 172
    sput-object p0, Lcom/tapjoy/internal/hi;->i:Lcom/tapjoy/internal/hi;

    .line 8133
    iget-object v0, p3, Lcom/tapjoy/internal/fz;->a:Lcom/tapjoy/internal/ft;

    .line 173
    iput-object v0, p0, Lcom/tapjoy/internal/hk;->g:Lcom/tapjoy/internal/ft;

    .line 175
    new-instance v0, Lcom/tapjoy/internal/c;

    invoke-direct {v0, p1}, Lcom/tapjoy/internal/c;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tapjoy/internal/hi;->k:Lcom/tapjoy/internal/c;

    .line 176
    new-instance v1, Lcom/tapjoy/internal/hi$2;

    invoke-direct {v1, p0, p2}, Lcom/tapjoy/internal/hi$2;-><init>(Lcom/tapjoy/internal/hi;Lcom/tapjoy/internal/he;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 182
    iget-object v0, p0, Lcom/tapjoy/internal/hi;->k:Lcom/tapjoy/internal/c;

    new-instance v1, Lcom/tapjoy/internal/hi$3;

    invoke-direct {v1, p0, p1, p2}, Lcom/tapjoy/internal/hi$3;-><init>(Lcom/tapjoy/internal/hi;Landroid/app/Activity;Lcom/tapjoy/internal/he;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 212
    iget-object v0, p0, Lcom/tapjoy/internal/hi;->k:Lcom/tapjoy/internal/c;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 214
    new-instance v0, Lcom/tapjoy/internal/iu;

    iget-object v1, p0, Lcom/tapjoy/internal/hi;->b:Lcom/tapjoy/internal/hy;

    new-instance v2, Lcom/tapjoy/internal/hi$4;

    invoke-direct {v2, p0, p1, p2}, Lcom/tapjoy/internal/hi$4;-><init>(Lcom/tapjoy/internal/hi;Landroid/app/Activity;Lcom/tapjoy/internal/he;)V

    invoke-direct {v0, p1, v1, v2}, Lcom/tapjoy/internal/iu;-><init>(Landroid/content/Context;Lcom/tapjoy/internal/hy;Lcom/tapjoy/internal/iu$a;)V

    .line 252
    new-instance v1, Lcom/tapjoy/internal/it;

    iget-object v2, p0, Lcom/tapjoy/internal/hi;->b:Lcom/tapjoy/internal/hy;

    invoke-direct {v1, p1, v2, v0}, Lcom/tapjoy/internal/it;-><init>(Landroid/content/Context;Lcom/tapjoy/internal/hy;Lcom/tapjoy/internal/iu;)V

    .line 255
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 256
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v3, 0x11

    const/4 v4, -0x2

    invoke-direct {v2, v4, v4, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 259
    iget-object v1, p0, Lcom/tapjoy/internal/hi;->k:Lcom/tapjoy/internal/c;

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 269
    :try_start_0
    iget-object v0, p0, Lcom/tapjoy/internal/hi;->k:Lcom/tapjoy/internal/c;

    invoke-virtual {v0}, Lcom/tapjoy/internal/c;->show()V
    :try_end_0
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_0 .. :try_end_0} :catch_0

    .line 274
    iget-object v0, p0, Lcom/tapjoy/internal/hi;->k:Lcom/tapjoy/internal/c;

    invoke-virtual {v0}, Lcom/tapjoy/internal/c;->a()V

    .line 277
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    iget p1, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/16 v0, 0x400

    and-int/2addr p1, v0

    if-eqz p1, :cond_1

    .line 278
    iget-object p1, p0, Lcom/tapjoy/internal/hi;->k:Lcom/tapjoy/internal/c;

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1, v0, v0}, Landroid/view/Window;->setFlags(II)V

    .line 282
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tapjoy/internal/hi;->m:J

    .line 283
    iget-object p1, p0, Lcom/tapjoy/internal/hi;->j:Lcom/tapjoy/internal/hd;

    iget-object v0, p0, Lcom/tapjoy/internal/hi;->b:Lcom/tapjoy/internal/hy;

    iget-object v0, v0, Lcom/tapjoy/internal/hy;->k:Ljava/util/Map;

    invoke-virtual {p1, v0}, Lcom/tapjoy/internal/hd;->a(Ljava/util/Map;)V

    .line 284
    invoke-virtual {p3}, Lcom/tapjoy/internal/fz;->b()V

    .line 286
    iget-object p1, p0, Lcom/tapjoy/internal/hk;->g:Lcom/tapjoy/internal/ft;

    if-eqz p1, :cond_2

    .line 288
    invoke-virtual {p1}, Lcom/tapjoy/internal/ft;->b()Lcom/tapjoy/internal/gj$a;

    .line 291
    :cond_2
    iget-object p1, p0, Lcom/tapjoy/internal/hi;->a:Ljava/lang/String;

    invoke-virtual {p2, p1}, Lcom/tapjoy/internal/he;->c(Ljava/lang/String;)V

    return-void

    :catch_0
    move-exception p1

    .line 272
    throw p1
.end method

.method static synthetic a(Lcom/tapjoy/internal/hi;)V
    .locals 0

    .line 42
    invoke-direct {p0}, Lcom/tapjoy/internal/hi;->e()V

    return-void
.end method

.method static synthetic a(Lcom/tapjoy/internal/hi;Landroid/app/Activity;Lcom/tapjoy/internal/he;Lcom/tapjoy/internal/fz;)V
    .locals 0

    .line 42
    invoke-direct {p0, p1, p2, p3}, Lcom/tapjoy/internal/hi;->a(Landroid/app/Activity;Lcom/tapjoy/internal/he;Lcom/tapjoy/internal/fz;)V

    return-void
.end method

.method static synthetic a(Lcom/tapjoy/internal/hi;Z)Z
    .locals 0

    .line 42
    iput-boolean p1, p0, Lcom/tapjoy/internal/hi;->o:Z

    return p1
.end method

.method static synthetic b(Lcom/tapjoy/internal/hi;)J
    .locals 2

    .line 42
    iget-wide v0, p0, Lcom/tapjoy/internal/hi;->m:J

    return-wide v0
.end method

.method static synthetic c(Lcom/tapjoy/internal/hi;)Lcom/tapjoy/internal/hd;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/tapjoy/internal/hi;->j:Lcom/tapjoy/internal/hd;

    return-object p0
.end method

.method static synthetic d()Lcom/tapjoy/internal/hi;
    .locals 1

    const/4 v0, 0x0

    .line 42
    sput-object v0, Lcom/tapjoy/internal/hi;->i:Lcom/tapjoy/internal/hi;

    return-object v0
.end method

.method static synthetic d(Lcom/tapjoy/internal/hi;)Z
    .locals 0

    .line 42
    iget-boolean p0, p0, Lcom/tapjoy/internal/hi;->o:Z

    return p0
.end method

.method static synthetic e(Lcom/tapjoy/internal/hi;)Lcom/tapjoy/internal/c;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/tapjoy/internal/hi;->k:Lcom/tapjoy/internal/c;

    return-object p0
.end method

.method private e()V
    .locals 1

    .line 295
    iget-object v0, p0, Lcom/tapjoy/internal/hi;->k:Lcom/tapjoy/internal/c;

    if-eqz v0, :cond_0

    .line 296
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    return-void
.end method


# virtual methods
.method public final a(Lcom/tapjoy/internal/he;Lcom/tapjoy/internal/fz;)V
    .locals 6

    .line 98
    iget-object v0, p0, Lcom/tapjoy/internal/hi;->n:Landroid/content/Context;

    invoke-static {v0}, Lcom/tapjoy/internal/a;->a(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 99
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 101
    :try_start_0
    invoke-direct {p0, v0, p1, p2}, Lcom/tapjoy/internal/hi;->a(Landroid/app/Activity;Lcom/tapjoy/internal/he;Lcom/tapjoy/internal/fz;)V
    :try_end_0
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    nop

    .line 112
    :cond_0
    invoke-static {}, Lcom/tapjoy/internal/gv;->a()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 114
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v3, v3, 0x400

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    .line 119
    :goto_0
    invoke-static {}, Lcom/tapjoy/internal/hd;->a()Lcom/tapjoy/internal/hd;

    move-result-object v4

    .line 7189
    iget-object v4, v4, Lcom/tapjoy/internal/hd;->e:Landroid/content/Context;

    .line 121
    :try_start_1
    new-instance v5, Lcom/tapjoy/internal/hi$1;

    invoke-direct {v5, p0, p1, p2}, Lcom/tapjoy/internal/hi$1;-><init>(Lcom/tapjoy/internal/hi;Lcom/tapjoy/internal/he;Lcom/tapjoy/internal/fz;)V

    invoke-static {v4, v5, v3}, Lcom/tapjoy/TJContentActivity;->start(Landroid/content/Context;Lcom/tapjoy/TJContentActivity$ContentProducer;Z)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    return-void

    :catch_1
    nop

    if-eqz v0, :cond_2

    .line 146
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v3

    if-nez v3, :cond_2

    .line 148
    :try_start_2
    invoke-direct {p0, v0, p1, p2}, Lcom/tapjoy/internal/hi;->a(Landroid/app/Activity;Lcom/tapjoy/internal/he;Lcom/tapjoy/internal/fz;)V
    :try_end_2
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_2 .. :try_end_2} :catch_2

    return-void

    :catch_2
    :cond_2
    new-array p2, v1, [Ljava/lang/Object;

    .line 157
    iget-object v0, p0, Lcom/tapjoy/internal/hi;->a:Ljava/lang/String;

    aput-object v0, p2, v2

    const-string v0, "Failed to show the content for \"{}\" caused by no registration of TJContentActivity"

    invoke-static {v0, p2}, Lcom/tapjoy/internal/ha;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 160
    iget-object p2, p0, Lcom/tapjoy/internal/hi;->a:Ljava/lang/String;

    iget-object v0, p0, Lcom/tapjoy/internal/hk;->f:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, v1}, Lcom/tapjoy/internal/he;->a(Ljava/lang/String;Ljava/lang/String;Lcom/tapjoy/internal/gp;)V

    return-void
.end method

.method public final b()V
    .locals 2

    .line 85
    iget-object v0, p0, Lcom/tapjoy/internal/hi;->b:Lcom/tapjoy/internal/hy;

    .line 1160
    iget-object v1, v0, Lcom/tapjoy/internal/hy;->a:Lcom/tapjoy/internal/ib;

    if-eqz v1, :cond_0

    .line 1161
    invoke-virtual {v1}, Lcom/tapjoy/internal/ib;->b()V

    .line 1163
    :cond_0
    iget-object v1, v0, Lcom/tapjoy/internal/hy;->b:Lcom/tapjoy/internal/ib;

    if-eqz v1, :cond_1

    .line 1164
    invoke-virtual {v1}, Lcom/tapjoy/internal/ib;->b()V

    .line 1166
    :cond_1
    iget-object v1, v0, Lcom/tapjoy/internal/hy;->c:Lcom/tapjoy/internal/ib;

    invoke-virtual {v1}, Lcom/tapjoy/internal/ib;->b()V

    .line 1167
    iget-object v1, v0, Lcom/tapjoy/internal/hy;->e:Lcom/tapjoy/internal/ib;

    if-eqz v1, :cond_2

    .line 1168
    invoke-virtual {v1}, Lcom/tapjoy/internal/ib;->b()V

    .line 1170
    :cond_2
    iget-object v1, v0, Lcom/tapjoy/internal/hy;->f:Lcom/tapjoy/internal/ib;

    if-eqz v1, :cond_3

    .line 1171
    invoke-virtual {v1}, Lcom/tapjoy/internal/ib;->b()V

    .line 1173
    :cond_3
    iget-object v0, v0, Lcom/tapjoy/internal/hy;->m:Lcom/tapjoy/internal/hz;

    if-eqz v0, :cond_4

    iget-object v0, v0, Lcom/tapjoy/internal/hz;->a:Lcom/tapjoy/internal/ib;

    if-eqz v0, :cond_4

    .line 1174
    invoke-virtual {v0}, Lcom/tapjoy/internal/ib;->b()V

    :cond_4
    return-void
.end method

.method public final c()Z
    .locals 3

    .line 90
    iget-object v0, p0, Lcom/tapjoy/internal/hi;->b:Lcom/tapjoy/internal/hy;

    .line 1179
    iget-object v1, v0, Lcom/tapjoy/internal/hy;->c:Lcom/tapjoy/internal/ib;

    if-eqz v1, :cond_3

    .line 2045
    iget-object v1, v1, Lcom/tapjoy/internal/ib;->b:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_3

    .line 1179
    iget-object v1, v0, Lcom/tapjoy/internal/hy;->m:Lcom/tapjoy/internal/hz;

    if-eqz v1, :cond_0

    iget-object v1, v1, Lcom/tapjoy/internal/hz;->a:Lcom/tapjoy/internal/ib;

    if-eqz v1, :cond_0

    .line 3045
    iget-object v1, v1, Lcom/tapjoy/internal/ib;->b:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_3

    .line 1180
    :cond_0
    iget-object v1, v0, Lcom/tapjoy/internal/hy;->b:Lcom/tapjoy/internal/ib;

    if-eqz v1, :cond_1

    iget-object v2, v0, Lcom/tapjoy/internal/hy;->f:Lcom/tapjoy/internal/ib;

    if-eqz v2, :cond_1

    .line 4045
    iget-object v1, v1, Lcom/tapjoy/internal/ib;->b:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_1

    .line 5045
    iget-object v1, v2, Lcom/tapjoy/internal/ib;->b:Landroid/graphics/Bitmap;

    if-nez v1, :cond_2

    .line 1182
    :cond_1
    iget-object v1, v0, Lcom/tapjoy/internal/hy;->a:Lcom/tapjoy/internal/ib;

    if-eqz v1, :cond_3

    iget-object v0, v0, Lcom/tapjoy/internal/hy;->e:Lcom/tapjoy/internal/ib;

    if-eqz v0, :cond_3

    .line 6045
    iget-object v1, v1, Lcom/tapjoy/internal/ib;->b:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_3

    .line 7045
    iget-object v0, v0, Lcom/tapjoy/internal/ib;->b:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_3

    :cond_2
    const/4 v0, 0x1

    return v0

    :cond_3
    const/4 v0, 0x0

    return v0
.end method
