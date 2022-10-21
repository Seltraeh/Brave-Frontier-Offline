.class public final enum Lcom/tapjoy/internal/cr;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/tapjoy/internal/cr;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/tapjoy/internal/cr;

.field public static final enum b:Lcom/tapjoy/internal/cr;

.field public static final enum c:Lcom/tapjoy/internal/cr;

.field public static final enum d:Lcom/tapjoy/internal/cr;

.field public static final enum e:Lcom/tapjoy/internal/cr;

.field private static final synthetic g:[Lcom/tapjoy/internal/cr;


# instance fields
.field private final f:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    new-instance v0, Lcom/tapjoy/internal/cr;

    const-string v1, "DEFINED_BY_JAVASCRIPT"

    const/4 v2, 0x0

    const-string v3, "definedByJavaScript"

    invoke-direct {v0, v1, v2, v3}, Lcom/tapjoy/internal/cr;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/tapjoy/internal/cr;->a:Lcom/tapjoy/internal/cr;

    new-instance v0, Lcom/tapjoy/internal/cr;

    const-string v1, "HTML_DISPLAY"

    const/4 v3, 0x1

    const-string v4, "htmlDisplay"

    invoke-direct {v0, v1, v3, v4}, Lcom/tapjoy/internal/cr;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/tapjoy/internal/cr;->b:Lcom/tapjoy/internal/cr;

    new-instance v0, Lcom/tapjoy/internal/cr;

    const-string v1, "NATIVE_DISPLAY"

    const/4 v4, 0x2

    const-string v5, "nativeDisplay"

    invoke-direct {v0, v1, v4, v5}, Lcom/tapjoy/internal/cr;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/tapjoy/internal/cr;->c:Lcom/tapjoy/internal/cr;

    new-instance v0, Lcom/tapjoy/internal/cr;

    const-string v1, "VIDEO"

    const/4 v5, 0x3

    const-string v6, "video"

    invoke-direct {v0, v1, v5, v6}, Lcom/tapjoy/internal/cr;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/tapjoy/internal/cr;->d:Lcom/tapjoy/internal/cr;

    new-instance v0, Lcom/tapjoy/internal/cr;

    const-string v1, "AUDIO"

    const/4 v6, 0x4

    const-string v7, "audio"

    invoke-direct {v0, v1, v6, v7}, Lcom/tapjoy/internal/cr;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/tapjoy/internal/cr;->e:Lcom/tapjoy/internal/cr;

    const/4 v1, 0x5

    new-array v1, v1, [Lcom/tapjoy/internal/cr;

    sget-object v7, Lcom/tapjoy/internal/cr;->a:Lcom/tapjoy/internal/cr;

    aput-object v7, v1, v2

    sget-object v2, Lcom/tapjoy/internal/cr;->b:Lcom/tapjoy/internal/cr;

    aput-object v2, v1, v3

    sget-object v2, Lcom/tapjoy/internal/cr;->c:Lcom/tapjoy/internal/cr;

    aput-object v2, v1, v4

    sget-object v2, Lcom/tapjoy/internal/cr;->d:Lcom/tapjoy/internal/cr;

    aput-object v2, v1, v5

    aput-object v0, v1, v6

    sput-object v1, Lcom/tapjoy/internal/cr;->g:[Lcom/tapjoy/internal/cr;

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

    iput-object p3, p0, Lcom/tapjoy/internal/cr;->f:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tapjoy/internal/cr;
    .locals 1

    const-class v0, Lcom/tapjoy/internal/cr;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/tapjoy/internal/cr;

    return-object p0
.end method

.method public static values()[Lcom/tapjoy/internal/cr;
    .locals 1

    sget-object v0, Lcom/tapjoy/internal/cr;->g:[Lcom/tapjoy/internal/cr;

    invoke-virtual {v0}, [Lcom/tapjoy/internal/cr;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tapjoy/internal/cr;

    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tapjoy/internal/cr;->f:Ljava/lang/String;

    return-object v0
.end method
