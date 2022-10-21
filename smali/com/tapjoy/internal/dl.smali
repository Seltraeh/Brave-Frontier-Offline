.class public final Lcom/tapjoy/internal/dl;
.super Ljava/lang/Object;


# instance fields
.field public final a:Lcom/tapjoy/internal/dn;

.field public final b:Lcom/tapjoy/internal/dm;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/tapjoy/internal/dn;

    invoke-direct {v0}, Lcom/tapjoy/internal/dn;-><init>()V

    iput-object v0, p0, Lcom/tapjoy/internal/dl;->a:Lcom/tapjoy/internal/dn;

    new-instance v1, Lcom/tapjoy/internal/dm;

    invoke-direct {v1, v0}, Lcom/tapjoy/internal/dm;-><init>(Lcom/tapjoy/internal/dk;)V

    iput-object v1, p0, Lcom/tapjoy/internal/dl;->b:Lcom/tapjoy/internal/dm;

    return-void
.end method
