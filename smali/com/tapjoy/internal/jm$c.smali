.class public final Lcom/tapjoy/internal/jm$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tapjoy/internal/jm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field A:Landroid/os/Bundle;

.field B:I

.field C:I

.field D:Landroid/app/Notification;

.field E:Landroid/widget/RemoteViews;

.field F:Landroid/widget/RemoteViews;

.field G:Landroid/widget/RemoteViews;

.field H:Ljava/lang/String;

.field I:I

.field J:Ljava/lang/String;

.field K:J

.field L:I

.field public M:Landroid/app/Notification;

.field public N:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public a:Landroid/content/Context;

.field public b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/tapjoy/internal/jm$a;",
            ">;"
        }
    .end annotation
.end field

.field c:Ljava/lang/CharSequence;

.field d:Ljava/lang/CharSequence;

.field public e:Landroid/app/PendingIntent;

.field f:Landroid/app/PendingIntent;

.field g:Landroid/widget/RemoteViews;

.field public h:Landroid/graphics/Bitmap;

.field i:Ljava/lang/CharSequence;

.field j:I

.field public k:I

.field l:Z

.field m:Z

.field n:Lcom/tapjoy/internal/jm$d;

.field o:Ljava/lang/CharSequence;

.field p:[Ljava/lang/CharSequence;

.field q:I

.field r:I

.field s:Z

.field t:Ljava/lang/String;

.field u:Z

.field v:Ljava/lang/String;

.field w:Z

.field x:Z

.field y:Z

.field z:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .line 711
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 651
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tapjoy/internal/jm$c;->b:Ljava/util/ArrayList;

    const/4 v0, 0x1

    .line 663
    iput-boolean v0, p0, Lcom/tapjoy/internal/jm$c;->l:Z

    const/4 v0, 0x0

    .line 674
    iput-boolean v0, p0, Lcom/tapjoy/internal/jm$c;->w:Z

    .line 679
    iput v0, p0, Lcom/tapjoy/internal/jm$c;->B:I

    .line 680
    iput v0, p0, Lcom/tapjoy/internal/jm$c;->C:I

    .line 686
    iput v0, p0, Lcom/tapjoy/internal/jm$c;->I:I

    .line 689
    iput v0, p0, Lcom/tapjoy/internal/jm$c;->L:I

    .line 690
    new-instance v1, Landroid/app/Notification;

    invoke-direct {v1}, Landroid/app/Notification;-><init>()V

    iput-object v1, p0, Lcom/tapjoy/internal/jm$c;->M:Landroid/app/Notification;

    .line 712
    iput-object p1, p0, Lcom/tapjoy/internal/jm$c;->a:Landroid/content/Context;

    .line 713
    iput-object p2, p0, Lcom/tapjoy/internal/jm$c;->H:Ljava/lang/String;

    .line 716
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, v1, Landroid/app/Notification;->when:J

    .line 717
    iget-object p1, p0, Lcom/tapjoy/internal/jm$c;->M:Landroid/app/Notification;

    const/4 p2, -0x1

    iput p2, p1, Landroid/app/Notification;->audioStreamType:I

    .line 718
    iput v0, p0, Lcom/tapjoy/internal/jm$c;->k:I

    .line 719
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/tapjoy/internal/jm$c;->N:Ljava/util/ArrayList;

    return-void
.end method

.method protected static d(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 2

    if-nez p0, :cond_0

    return-object p0

    .line 1510
    :cond_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/16 v1, 0x1400

    if-le v0, v1, :cond_1

    const/4 v0, 0x0

    .line 1511
    invoke-interface {p0, v0, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p0

    :cond_1
    return-object p0
.end method


# virtual methods
.method public final a(Lcom/tapjoy/internal/jm$d;)Lcom/tapjoy/internal/jm$c;
    .locals 1

    .line 1336
    iget-object v0, p0, Lcom/tapjoy/internal/jm$c;->n:Lcom/tapjoy/internal/jm$d;

    if-eq v0, p1, :cond_0

    .line 1337
    iput-object p1, p0, Lcom/tapjoy/internal/jm$c;->n:Lcom/tapjoy/internal/jm$d;

    if-eqz p1, :cond_0

    .line 1339
    invoke-virtual {p1, p0}, Lcom/tapjoy/internal/jm$d;->a(Lcom/tapjoy/internal/jm$c;)V

    :cond_0
    return-object p0
.end method

.method public final a(Ljava/lang/CharSequence;)Lcom/tapjoy/internal/jm$c;
    .locals 0

    .line 797
    invoke-static {p1}, Lcom/tapjoy/internal/jm$c;->d(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Lcom/tapjoy/internal/jm$c;->c:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public final b(Ljava/lang/CharSequence;)Lcom/tapjoy/internal/jm$c;
    .locals 0

    .line 805
    invoke-static {p1}, Lcom/tapjoy/internal/jm$c;->d(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Lcom/tapjoy/internal/jm$c;->d:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public final c(Ljava/lang/CharSequence;)Lcom/tapjoy/internal/jm$c;
    .locals 1

    .line 934
    iget-object v0, p0, Lcom/tapjoy/internal/jm$c;->M:Landroid/app/Notification;

    invoke-static {p1}, Lcom/tapjoy/internal/jm$c;->d(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, v0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    return-object p0
.end method
