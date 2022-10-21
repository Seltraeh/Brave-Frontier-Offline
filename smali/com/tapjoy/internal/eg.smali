.class public final Lcom/tapjoy/internal/eg;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tapjoy/internal/eb$b;


# instance fields
.field final a:Lcom/tapjoy/internal/ec;

.field private b:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>(Lcom/tapjoy/internal/ec;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tapjoy/internal/eg;->a:Lcom/tapjoy/internal/ec;

    return-void
.end method


# virtual methods
.method public final a()Lorg/json/JSONObject;
    .locals 1

    iget-object v0, p0, Lcom/tapjoy/internal/eg;->b:Lorg/json/JSONObject;

    return-object v0
.end method

.method public final a(Lorg/json/JSONObject;)V
    .locals 0

    iput-object p1, p0, Lcom/tapjoy/internal/eg;->b:Lorg/json/JSONObject;

    return-void
.end method

.method public final b()V
    .locals 2

    iget-object v0, p0, Lcom/tapjoy/internal/eg;->a:Lcom/tapjoy/internal/ec;

    new-instance v1, Lcom/tapjoy/internal/ed;

    invoke-direct {v1, p0}, Lcom/tapjoy/internal/ed;-><init>(Lcom/tapjoy/internal/eb$b;)V

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/ec;->a(Lcom/tapjoy/internal/eb;)V

    return-void
.end method
