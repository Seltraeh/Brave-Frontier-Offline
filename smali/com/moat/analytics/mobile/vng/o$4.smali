.class Lcom/moat/analytics/mobile/vng/o$4;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/moat/analytics/mobile/vng/x$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/moat/analytics/mobile/vng/o;->a(Ljava/lang/String;)Lcom/moat/analytics/mobile/vng/NativeVideoTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/moat/analytics/mobile/vng/x$a<",
        "Lcom/moat/analytics/mobile/vng/NativeVideoTracker;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/moat/analytics/mobile/vng/o;


# direct methods
.method constructor <init>(Lcom/moat/analytics/mobile/vng/o;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/moat/analytics/mobile/vng/o$4;->b:Lcom/moat/analytics/mobile/vng/o;

    iput-object p2, p0, Lcom/moat/analytics/mobile/vng/o$4;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/moat/analytics/mobile/vng/a/b/a;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/moat/analytics/mobile/vng/a/b/a<",
            "Lcom/moat/analytics/mobile/vng/NativeVideoTracker;",
            ">;"
        }
    .end annotation

    const-string v0, "[INFO] "

    const/4 v1, 0x3

    const-string v2, "Factory"

    const-string v3, "Attempting to create NativeVideoTracker"

    invoke-static {v0, v1, v2, p0, v3}, Lcom/moat/analytics/mobile/vng/p;->a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/moat/analytics/mobile/vng/u;

    iget-object v1, p0, Lcom/moat/analytics/mobile/vng/o$4;->a:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/moat/analytics/mobile/vng/u;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/moat/analytics/mobile/vng/a/b/a;->a(Ljava/lang/Object;)Lcom/moat/analytics/mobile/vng/a/b/a;

    move-result-object v0

    return-object v0
.end method
