.class Lcom/moat/analytics/mobile/vng/w$a$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/moat/analytics/mobile/vng/w$a;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/moat/analytics/mobile/vng/m;

.field final synthetic b:Lcom/moat/analytics/mobile/vng/w$a;


# direct methods
.method constructor <init>(Lcom/moat/analytics/mobile/vng/w$a;Lcom/moat/analytics/mobile/vng/m;)V
    .locals 0

    iput-object p1, p0, Lcom/moat/analytics/mobile/vng/w$a$1;->b:Lcom/moat/analytics/mobile/vng/w$a;

    iput-object p2, p0, Lcom/moat/analytics/mobile/vng/w$a$1;->a:Lcom/moat/analytics/mobile/vng/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/moat/analytics/mobile/vng/w$a$1;->b:Lcom/moat/analytics/mobile/vng/w$a;

    invoke-static {v0}, Lcom/moat/analytics/mobile/vng/w$a;->a(Lcom/moat/analytics/mobile/vng/w$a;)Lcom/moat/analytics/mobile/vng/w$e;

    move-result-object v0

    iget-object v1, p0, Lcom/moat/analytics/mobile/vng/w$a$1;->a:Lcom/moat/analytics/mobile/vng/m;

    invoke-interface {v0, v1}, Lcom/moat/analytics/mobile/vng/w$e;->a(Lcom/moat/analytics/mobile/vng/m;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/moat/analytics/mobile/vng/n;->a(Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method
