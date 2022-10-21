.class public final Lcom/tapjoy/internal/dh;
.super Ljava/lang/Object;


# static fields
.field private static b:Lcom/tapjoy/internal/dh;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation
.end field


# instance fields
.field public a:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/tapjoy/internal/dh;

    invoke-direct {v0}, Lcom/tapjoy/internal/dh;-><init>()V

    sput-object v0, Lcom/tapjoy/internal/dh;->b:Lcom/tapjoy/internal/dh;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/tapjoy/internal/dh;
    .locals 1

    sget-object v0, Lcom/tapjoy/internal/dh;->b:Lcom/tapjoy/internal/dh;

    return-object v0
.end method
