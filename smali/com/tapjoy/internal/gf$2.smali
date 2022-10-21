.class final Lcom/tapjoy/internal/gf$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tapjoy/TJConnectListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tapjoy/internal/gf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tapjoy/internal/gf;


# direct methods
.method constructor <init>(Lcom/tapjoy/internal/gf;)V
    .locals 0

    .line 156
    iput-object p1, p0, Lcom/tapjoy/internal/gf$2;->a:Lcom/tapjoy/internal/gf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onConnectFailure()V
    .locals 2

    .line 165
    iget-object v0, p0, Lcom/tapjoy/internal/gf$2;->a:Lcom/tapjoy/internal/gf;

    const/4 v1, 0x0

    .line 3032
    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/gf;->a(Z)V

    return-void
.end method

.method public final onConnectSuccess()V
    .locals 3

    .line 159
    iget-object v0, p0, Lcom/tapjoy/internal/gf$2;->a:Lcom/tapjoy/internal/gf;

    sget v1, Lcom/tapjoy/internal/gf$c;->e:I

    sget v2, Lcom/tapjoy/internal/gf$c;->b:I

    .line 1032
    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/gf;->a(I)V

    .line 160
    iget-object v0, p0, Lcom/tapjoy/internal/gf$2;->a:Lcom/tapjoy/internal/gf;

    const/4 v1, 0x1

    .line 2032
    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/gf;->a(Z)V

    return-void
.end method
