.class public final Lcom/tapjoy/internal/fu;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Lcom/tapjoy/internal/gd;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tapjoy/internal/gd<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 13
    new-instance v0, Lcom/tapjoy/internal/fu$1;

    invoke-direct {v0}, Lcom/tapjoy/internal/fu$1;-><init>()V

    sput-object v0, Lcom/tapjoy/internal/fu;->a:Lcom/tapjoy/internal/gd;

    return-void
.end method

.method public static a()V
    .locals 2

    .line 29
    sget-object v0, Lcom/tapjoy/internal/fu;->a:Lcom/tapjoy/internal/gd;

    const/4 v1, 0x0

    .line 1034
    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/gd;->c(Ljava/lang/Object;)Z

    return-void
.end method
