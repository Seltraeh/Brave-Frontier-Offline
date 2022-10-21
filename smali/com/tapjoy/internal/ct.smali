.class public final enum Lcom/tapjoy/internal/ct;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/tapjoy/internal/ct;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/tapjoy/internal/ct;

.field public static final enum b:Lcom/tapjoy/internal/ct;

.field public static final enum c:Lcom/tapjoy/internal/ct;

.field public static final enum d:Lcom/tapjoy/internal/ct;

.field private static final synthetic e:[Lcom/tapjoy/internal/ct;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/tapjoy/internal/ct;

    const-string v1, "VIDEO_CONTROLS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/tapjoy/internal/ct;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tapjoy/internal/ct;->a:Lcom/tapjoy/internal/ct;

    new-instance v0, Lcom/tapjoy/internal/ct;

    const-string v1, "CLOSE_AD"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/tapjoy/internal/ct;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tapjoy/internal/ct;->b:Lcom/tapjoy/internal/ct;

    new-instance v0, Lcom/tapjoy/internal/ct;

    const-string v1, "NOT_VISIBLE"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/tapjoy/internal/ct;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tapjoy/internal/ct;->c:Lcom/tapjoy/internal/ct;

    new-instance v0, Lcom/tapjoy/internal/ct;

    const-string v1, "OTHER"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/tapjoy/internal/ct;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tapjoy/internal/ct;->d:Lcom/tapjoy/internal/ct;

    const/4 v1, 0x4

    new-array v1, v1, [Lcom/tapjoy/internal/ct;

    sget-object v6, Lcom/tapjoy/internal/ct;->a:Lcom/tapjoy/internal/ct;

    aput-object v6, v1, v2

    sget-object v2, Lcom/tapjoy/internal/ct;->b:Lcom/tapjoy/internal/ct;

    aput-object v2, v1, v3

    sget-object v2, Lcom/tapjoy/internal/ct;->c:Lcom/tapjoy/internal/ct;

    aput-object v2, v1, v4

    aput-object v0, v1, v5

    sput-object v1, Lcom/tapjoy/internal/ct;->e:[Lcom/tapjoy/internal/ct;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tapjoy/internal/ct;
    .locals 1

    const-class v0, Lcom/tapjoy/internal/ct;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/tapjoy/internal/ct;

    return-object p0
.end method

.method public static values()[Lcom/tapjoy/internal/ct;
    .locals 1

    sget-object v0, Lcom/tapjoy/internal/ct;->e:[Lcom/tapjoy/internal/ct;

    invoke-virtual {v0}, [Lcom/tapjoy/internal/ct;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tapjoy/internal/ct;

    return-object v0
.end method
