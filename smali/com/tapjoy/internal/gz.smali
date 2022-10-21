.class public Lcom/tapjoy/internal/gz;
.super Lcom/tapjoy/internal/hk;
.source "SourceFile"


# static fields
.field private static final h:Ljava/lang/String; = "gz"

.field private static i:Lcom/tapjoy/internal/gz;


# instance fields
.field final a:Ljava/lang/String;

.field final b:Lcom/tapjoy/internal/hv;

.field private final j:Lcom/tapjoy/internal/hd;

.field private k:Z

.field private l:Z

.field private m:J

.field private n:Landroid/content/Context;

.field private o:Lcom/tapjoy/internal/is;

.field private p:Landroid/app/Activity;

.field private q:Lcom/tapjoy/internal/he;

.field private r:Landroid/os/Handler;

.field private s:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/tapjoy/internal/hd;Ljava/lang/String;Lcom/tapjoy/internal/hv;Landroid/content/Context;)V
    .locals 0

    .line 67
    invoke-direct {p0}, Lcom/tapjoy/internal/hk;-><init>()V

    .line 68
    iput-object p1, p0, Lcom/tapjoy/internal/gz;->j:Lcom/tapjoy/internal/hd;

    .line 69
    iput-object p2, p0, Lcom/tapjoy/internal/gz;->a:Ljava/lang/String;

    .line 70
    iput-object p3, p0, Lcom/tapjoy/internal/gz;->b:Lcom/tapjoy/internal/hv;

    .line 71
    iput-object p4, p0, Lcom/tapjoy/internal/gz;->n:Landroid/content/Context;

    return-void
.end method

.method public static a()V
    .locals 3

    .line 40
    sget-object v0, Lcom/tapjoy/internal/gz;->i:Lcom/tapjoy/internal/gz;

    if-eqz v0, :cond_2

    .line 42
    new-instance v1, Lcom/tapjoy/internal/gz$1;

    invoke-direct {v1, v0}, Lcom/tapjoy/internal/gz$1;-><init>(Lcom/tapjoy/internal/gz;)V

    .line 2016
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2017
    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 1064
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    return-void

    .line 1067
    :cond_1
    invoke-static {}, Lcom/tapjoy/internal/t;->a()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_2
    return-void
.end method

.method private a(Landroid/app/Activity;Lcom/tapjoy/internal/he;Lcom/tapjoy/internal/fz;)V
    .locals 4

    .line 125
    iget-boolean v0, p0, Lcom/tapjoy/internal/gz;->k:Z

    if-eqz v0, :cond_0

    .line 126
    sget-object p1, Lcom/tapjoy/internal/gz;->h:Ljava/lang/String;

    new-instance p2, Lcom/tapjoy/TapjoyErrorMessage;

    sget-object p3, Lcom/tapjoy/TapjoyErrorMessage$ErrorType;->INTEGRATION_ERROR:Lcom/tapjoy/TapjoyErrorMessage$ErrorType;

    const-string v0, "Content is already displayed"

    invoke-direct {p2, p3, v0}, Lcom/tapjoy/TapjoyErrorMessage;-><init>(Lcom/tapjoy/TapjoyErrorMessage$ErrorType;Ljava/lang/String;)V

    invoke-static {p1, p2}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;Lcom/tapjoy/TapjoyErrorMessage;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 130
    iput-boolean v0, p0, Lcom/tapjoy/internal/gz;->k:Z

    .line 131
    iput-boolean v0, p0, Lcom/tapjoy/internal/gz;->l:Z

    .line 132
    sput-object p0, Lcom/tapjoy/internal/gz;->i:Lcom/tapjoy/internal/gz;

    .line 3133
    iget-object v0, p3, Lcom/tapjoy/internal/fz;->a:Lcom/tapjoy/internal/ft;

    .line 133
    iput-object v0, p0, Lcom/tapjoy/internal/hk;->g:Lcom/tapjoy/internal/ft;

    .line 135
    new-instance v0, Lcom/tapjoy/internal/is;

    iget-object v1, p0, Lcom/tapjoy/internal/gz;->b:Lcom/tapjoy/internal/hv;

    new-instance v2, Lcom/tapjoy/internal/gz$2;

    invoke-direct {v2, p0, p1, p2}, Lcom/tapjoy/internal/gz$2;-><init>(Lcom/tapjoy/internal/gz;Landroid/app/Activity;Lcom/tapjoy/internal/he;)V

    invoke-direct {v0, p1, v1, v2}, Lcom/tapjoy/internal/is;-><init>(Landroid/content/Context;Lcom/tapjoy/internal/hv;Lcom/tapjoy/internal/is$a;)V

    iput-object v0, p0, Lcom/tapjoy/internal/gz;->o:Lcom/tapjoy/internal/is;

    .line 168
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    iget-object v0, p0, Lcom/tapjoy/internal/gz;->o:Lcom/tapjoy/internal/is;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v2, 0x11

    const/4 v3, -0x1

    invoke-direct {v1, v3, v3, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-static {p1, v0, v1}, Lcom/tapjoy/internal/ac;->a(Landroid/view/Window;Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 172
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tapjoy/internal/gz;->m:J

    .line 173
    iget-object p1, p0, Lcom/tapjoy/internal/gz;->j:Lcom/tapjoy/internal/hd;

    iget-object v0, p0, Lcom/tapjoy/internal/gz;->b:Lcom/tapjoy/internal/hv;

    iget-object v0, v0, Lcom/tapjoy/internal/hv;->b:Ljava/util/Map;

    invoke-virtual {p1, v0}, Lcom/tapjoy/internal/hd;->a(Ljava/util/Map;)V

    .line 174
    invoke-virtual {p3}, Lcom/tapjoy/internal/fz;->b()V

    .line 176
    iget-object p1, p0, Lcom/tapjoy/internal/hk;->g:Lcom/tapjoy/internal/ft;

    if-eqz p1, :cond_1

    .line 178
    invoke-virtual {p1}, Lcom/tapjoy/internal/ft;->b()Lcom/tapjoy/internal/gj$a;

    .line 181
    :cond_1
    iget-object p1, p0, Lcom/tapjoy/internal/gz;->a:Ljava/lang/String;

    invoke-virtual {p2, p1}, Lcom/tapjoy/internal/he;->c(Ljava/lang/String;)V

    .line 183
    iget-object p1, p0, Lcom/tapjoy/internal/gz;->b:Lcom/tapjoy/internal/hv;

    iget p1, p1, Lcom/tapjoy/internal/hv;->c:F

    const/4 p2, 0x0

    cmpl-float p1, p1, p2

    if-lez p1, :cond_2

    .line 184
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/tapjoy/internal/gz;->r:Landroid/os/Handler;

    .line 185
    new-instance p1, Lcom/tapjoy/internal/gz$3;

    invoke-direct {p1, p0}, Lcom/tapjoy/internal/gz$3;-><init>(Lcom/tapjoy/internal/gz;)V

    iput-object p1, p0, Lcom/tapjoy/internal/gz;->s:Ljava/lang/Runnable;

    .line 191
    iget-object p2, p0, Lcom/tapjoy/internal/gz;->r:Landroid/os/Handler;

    iget-object p3, p0, Lcom/tapjoy/internal/gz;->b:Lcom/tapjoy/internal/hv;

    iget p3, p3, Lcom/tapjoy/internal/hv;->c:F

    const/high16 v0, 0x447a0000    # 1000.0f

    mul-float p3, p3, v0

    float-to-long v0, p3

    invoke-virtual {p2, p1, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2
    return-void
.end method

.method static synthetic a(Lcom/tapjoy/internal/gz;)V
    .locals 7

    .line 3196
    iget-boolean v0, p0, Lcom/tapjoy/internal/gz;->l:Z

    if-eqz v0, :cond_5

    const/4 v0, 0x0

    .line 3199
    iput-boolean v0, p0, Lcom/tapjoy/internal/gz;->l:Z

    .line 3201
    iget-object v0, p0, Lcom/tapjoy/internal/gz;->r:Landroid/os/Handler;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 3202
    iget-object v2, p0, Lcom/tapjoy/internal/gz;->s:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3203
    iput-object v1, p0, Lcom/tapjoy/internal/gz;->s:Ljava/lang/Runnable;

    .line 3204
    iput-object v1, p0, Lcom/tapjoy/internal/gz;->r:Landroid/os/Handler;

    .line 3207
    :cond_0
    sget-object v0, Lcom/tapjoy/internal/gz;->i:Lcom/tapjoy/internal/gz;

    if-ne v0, p0, :cond_1

    .line 3208
    sput-object v1, Lcom/tapjoy/internal/gz;->i:Lcom/tapjoy/internal/gz;

    .line 3211
    :cond_1
    iget-object v0, p0, Lcom/tapjoy/internal/gz;->j:Lcom/tapjoy/internal/hd;

    iget-object v2, p0, Lcom/tapjoy/internal/gz;->b:Lcom/tapjoy/internal/hv;

    iget-object v2, v2, Lcom/tapjoy/internal/hv;->b:Ljava/util/Map;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/tapjoy/internal/gz;->m:J

    sub-long/2addr v3, v5

    invoke-virtual {v0, v2, v3, v4}, Lcom/tapjoy/internal/hd;->a(Ljava/util/Map;J)V

    .line 3213
    iget-boolean v0, p0, Lcom/tapjoy/internal/hk;->d:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/tapjoy/internal/gz;->q:Lcom/tapjoy/internal/he;

    if-eqz v0, :cond_2

    .line 3214
    iget-object v2, p0, Lcom/tapjoy/internal/gz;->a:Ljava/lang/String;

    iget-object v3, p0, Lcom/tapjoy/internal/hk;->f:Ljava/lang/String;

    invoke-virtual {v0, v2, v3, v1}, Lcom/tapjoy/internal/he;->a(Ljava/lang/String;Ljava/lang/String;Lcom/tapjoy/internal/gp;)V

    .line 3215
    iput-object v1, p0, Lcom/tapjoy/internal/gz;->q:Lcom/tapjoy/internal/he;

    .line 3227
    :cond_2
    iget-object v0, p0, Lcom/tapjoy/internal/gz;->o:Lcom/tapjoy/internal/is;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_3

    .line 3229
    iget-object v2, p0, Lcom/tapjoy/internal/gz;->o:Lcom/tapjoy/internal/is;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 3231
    :cond_3
    iput-object v1, p0, Lcom/tapjoy/internal/gz;->o:Lcom/tapjoy/internal/is;

    .line 3220
    iget-object v0, p0, Lcom/tapjoy/internal/gz;->p:Landroid/app/Activity;

    instance-of v2, v0, Lcom/tapjoy/TJContentActivity;

    if-eqz v2, :cond_4

    .line 3221
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 3223
    :cond_4
    iput-object v1, p0, Lcom/tapjoy/internal/gz;->p:Landroid/app/Activity;

    :cond_5
    return-void
.end method

.method static synthetic b(Lcom/tapjoy/internal/gz;)Lcom/tapjoy/internal/hd;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/tapjoy/internal/gz;->j:Lcom/tapjoy/internal/hd;

    return-object p0
.end method


# virtual methods
.method public final a(Lcom/tapjoy/internal/he;Lcom/tapjoy/internal/fz;)V
    .locals 2

    .line 87
    iput-object p1, p0, Lcom/tapjoy/internal/gz;->q:Lcom/tapjoy/internal/he;

    .line 90
    invoke-static {}, Lcom/tapjoy/internal/gv;->a()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/gz;->p:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 92
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 94
    :try_start_0
    iget-object v0, p0, Lcom/tapjoy/internal/gz;->p:Landroid/app/Activity;

    invoke-direct {p0, v0, p1, p2}, Lcom/tapjoy/internal/gz;->a(Landroid/app/Activity;Lcom/tapjoy/internal/he;Lcom/tapjoy/internal/fz;)V
    :try_end_0
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    nop

    .line 104
    :cond_0
    iget-object v0, p0, Lcom/tapjoy/internal/gz;->n:Landroid/content/Context;

    invoke-static {v0}, Lcom/tapjoy/internal/a;->a(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/gz;->p:Landroid/app/Activity;

    if-eqz v0, :cond_1

    .line 105
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 107
    :try_start_1
    iget-object v0, p0, Lcom/tapjoy/internal/gz;->p:Landroid/app/Activity;

    invoke-direct {p0, v0, p1, p2}, Lcom/tapjoy/internal/gz;->a(Landroid/app/Activity;Lcom/tapjoy/internal/he;Lcom/tapjoy/internal/fz;)V
    :try_end_1
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_1 .. :try_end_1} :catch_1

    return-void

    :catch_1
    :cond_1
    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Object;

    const/4 v0, 0x0

    .line 116
    iget-object v1, p0, Lcom/tapjoy/internal/gz;->a:Ljava/lang/String;

    aput-object v1, p2, v0

    const-string v0, "Failed to show the content for \"{}\". No usable activity found."

    invoke-static {v0, p2}, Lcom/tapjoy/internal/ha;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 119
    iget-object p2, p0, Lcom/tapjoy/internal/gz;->a:Ljava/lang/String;

    iget-object v0, p0, Lcom/tapjoy/internal/hk;->f:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, v1}, Lcom/tapjoy/internal/he;->a(Ljava/lang/String;Ljava/lang/String;Lcom/tapjoy/internal/gp;)V

    return-void
.end method

.method public final b()V
    .locals 4

    .line 76
    iget-object v0, p0, Lcom/tapjoy/internal/gz;->b:Lcom/tapjoy/internal/hv;

    .line 2070
    iget-object v0, v0, Lcom/tapjoy/internal/hv;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tapjoy/internal/ie;

    .line 2084
    iget-object v1, v1, Lcom/tapjoy/internal/ie;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tapjoy/internal/id;

    .line 2085
    iget-object v3, v2, Lcom/tapjoy/internal/id;->l:Lcom/tapjoy/internal/ib;

    if-eqz v3, :cond_2

    .line 2086
    invoke-virtual {v3}, Lcom/tapjoy/internal/ib;->b()V

    .line 2088
    :cond_2
    iget-object v2, v2, Lcom/tapjoy/internal/id;->m:Lcom/tapjoy/internal/ib;

    if-eqz v2, :cond_1

    .line 2089
    invoke-virtual {v2}, Lcom/tapjoy/internal/ib;->b()V

    goto :goto_0

    :cond_3
    return-void
.end method

.method public final c()Z
    .locals 6

    .line 81
    iget-object v0, p0, Lcom/tapjoy/internal/gz;->b:Lcom/tapjoy/internal/hv;

    .line 3077
    iget-object v0, v0, Lcom/tapjoy/internal/hv;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x1

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tapjoy/internal/ie;

    .line 3096
    iget-object v2, v2, Lcom/tapjoy/internal/ie;->c:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tapjoy/internal/id;

    .line 3097
    iget-object v5, v3, Lcom/tapjoy/internal/id;->l:Lcom/tapjoy/internal/ib;

    if-eqz v5, :cond_2

    invoke-virtual {v5}, Lcom/tapjoy/internal/ib;->a()Z

    move-result v5

    if-eqz v5, :cond_3

    :cond_2
    iget-object v3, v3, Lcom/tapjoy/internal/id;->m:Lcom/tapjoy/internal/ib;

    if-eqz v3, :cond_1

    .line 3098
    invoke-virtual {v3}, Lcom/tapjoy/internal/ib;->a()Z

    move-result v3

    if-nez v3, :cond_1

    :cond_3
    const/4 v2, 0x0

    goto :goto_0

    :cond_4
    const/4 v2, 0x1

    :goto_0
    if-nez v2, :cond_0

    return v4

    :cond_5
    return v2
.end method
