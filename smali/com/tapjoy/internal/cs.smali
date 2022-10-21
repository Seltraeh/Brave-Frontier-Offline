.class public final enum Lcom/tapjoy/internal/cs;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/tapjoy/internal/cs;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/tapjoy/internal/cs;

.field public static final enum b:Lcom/tapjoy/internal/cs;

.field private static final synthetic d:[Lcom/tapjoy/internal/cs;


# instance fields
.field private final c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/tapjoy/internal/cs;

    const-string v1, "GENERIC"

    const/4 v2, 0x0

    const-string v3, "generic"

    invoke-direct {v0, v1, v2, v3}, Lcom/tapjoy/internal/cs;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/tapjoy/internal/cs;->a:Lcom/tapjoy/internal/cs;

    new-instance v0, Lcom/tapjoy/internal/cs;

    const-string v1, "VIDEO"

    const/4 v3, 0x1

    const-string v4, "video"

    invoke-direct {v0, v1, v3, v4}, Lcom/tapjoy/internal/cs;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/tapjoy/internal/cs;->b:Lcom/tapjoy/internal/cs;

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/tapjoy/internal/cs;

    sget-object v4, Lcom/tapjoy/internal/cs;->a:Lcom/tapjoy/internal/cs;

    aput-object v4, v1, v2

    aput-object v0, v1, v3

    sput-object v1, Lcom/tapjoy/internal/cs;->d:[Lcom/tapjoy/internal/cs;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/tapjoy/internal/cs;->c:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tapjoy/internal/cs;
    .locals 1

    const-class v0, Lcom/tapjoy/internal/cs;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/tapjoy/internal/cs;

    return-object p0
.end method

.method public static values()[Lcom/tapjoy/internal/cs;
    .locals 1

    sget-object v0, Lcom/tapjoy/internal/cs;->d:[Lcom/tapjoy/internal/cs;

    invoke-virtual {v0}, [Lcom/tapjoy/internal/cs;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tapjoy/internal/cs;

    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tapjoy/internal/cs;->c:Ljava/lang/String;

    return-object v0
.end method
