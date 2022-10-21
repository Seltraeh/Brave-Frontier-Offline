.class abstract Lcom/tapjoy/internal/gg;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Lcom/tapjoy/internal/gg;

.field private static b:Lcom/tapjoy/internal/gg;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 11
    new-instance v0, Lcom/tapjoy/internal/gh;

    invoke-direct {v0}, Lcom/tapjoy/internal/gh;-><init>()V

    .line 12
    sput-object v0, Lcom/tapjoy/internal/gg;->a:Lcom/tapjoy/internal/gg;

    sput-object v0, Lcom/tapjoy/internal/gg;->b:Lcom/tapjoy/internal/gg;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a()Lcom/tapjoy/internal/gg;
    .locals 1

    .line 15
    sget-object v0, Lcom/tapjoy/internal/gg;->b:Lcom/tapjoy/internal/gg;

    return-object v0
.end method


# virtual methods
.method public abstract a(Landroid/content/Context;Ljava/lang/String;Lcom/tapjoy/TJPlacementListener;)Ljava/lang/Object;
.end method

.method public abstract b()Ljava/lang/Object;
.end method
