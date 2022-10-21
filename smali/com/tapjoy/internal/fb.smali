.class public final enum Lcom/tapjoy/internal/fb;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/tapjoy/internal/ep;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tapjoy/internal/fb$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/tapjoy/internal/fb;",
        ">;",
        "Lcom/tapjoy/internal/ep;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/tapjoy/internal/fb;

.field public static final enum b:Lcom/tapjoy/internal/fb;

.field public static final enum c:Lcom/tapjoy/internal/fb;

.field public static final enum d:Lcom/tapjoy/internal/fb;

.field public static final e:Lcom/tapjoy/internal/em;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tapjoy/internal/em<",
            "Lcom/tapjoy/internal/fb;",
            ">;"
        }
    .end annotation
.end field

.field private static final synthetic g:[Lcom/tapjoy/internal/fb;


# instance fields
.field private final f:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 11
    new-instance v0, Lcom/tapjoy/internal/fb;

    const-string v1, "APP"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/tapjoy/internal/fb;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tapjoy/internal/fb;->a:Lcom/tapjoy/internal/fb;

    .line 13
    new-instance v0, Lcom/tapjoy/internal/fb;

    const-string v1, "CAMPAIGN"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lcom/tapjoy/internal/fb;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tapjoy/internal/fb;->b:Lcom/tapjoy/internal/fb;

    .line 15
    new-instance v0, Lcom/tapjoy/internal/fb;

    const-string v1, "CUSTOM"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v4}, Lcom/tapjoy/internal/fb;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tapjoy/internal/fb;->c:Lcom/tapjoy/internal/fb;

    .line 17
    new-instance v0, Lcom/tapjoy/internal/fb;

    const-string v1, "USAGES"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5, v5}, Lcom/tapjoy/internal/fb;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tapjoy/internal/fb;->d:Lcom/tapjoy/internal/fb;

    const/4 v1, 0x4

    new-array v1, v1, [Lcom/tapjoy/internal/fb;

    .line 10
    sget-object v6, Lcom/tapjoy/internal/fb;->a:Lcom/tapjoy/internal/fb;

    aput-object v6, v1, v2

    sget-object v2, Lcom/tapjoy/internal/fb;->b:Lcom/tapjoy/internal/fb;

    aput-object v2, v1, v3

    sget-object v2, Lcom/tapjoy/internal/fb;->c:Lcom/tapjoy/internal/fb;

    aput-object v2, v1, v4

    aput-object v0, v1, v5

    sput-object v1, Lcom/tapjoy/internal/fb;->g:[Lcom/tapjoy/internal/fb;

    .line 19
    new-instance v0, Lcom/tapjoy/internal/fb$a;

    invoke-direct {v0}, Lcom/tapjoy/internal/fb$a;-><init>()V

    sput-object v0, Lcom/tapjoy/internal/fb;->e:Lcom/tapjoy/internal/em;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 23
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 24
    iput p3, p0, Lcom/tapjoy/internal/fb;->f:I

    return-void
.end method

.method public static a(I)Lcom/tapjoy/internal/fb;
    .locals 1

    if-eqz p0, :cond_3

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 35
    :cond_0
    sget-object p0, Lcom/tapjoy/internal/fb;->d:Lcom/tapjoy/internal/fb;

    return-object p0

    .line 34
    :cond_1
    sget-object p0, Lcom/tapjoy/internal/fb;->c:Lcom/tapjoy/internal/fb;

    return-object p0

    .line 33
    :cond_2
    sget-object p0, Lcom/tapjoy/internal/fb;->b:Lcom/tapjoy/internal/fb;

    return-object p0

    .line 32
    :cond_3
    sget-object p0, Lcom/tapjoy/internal/fb;->a:Lcom/tapjoy/internal/fb;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tapjoy/internal/fb;
    .locals 1

    .line 10
    const-class v0, Lcom/tapjoy/internal/fb;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/tapjoy/internal/fb;

    return-object p0
.end method

.method public static values()[Lcom/tapjoy/internal/fb;
    .locals 1

    .line 10
    sget-object v0, Lcom/tapjoy/internal/fb;->g:[Lcom/tapjoy/internal/fb;

    invoke-virtual {v0}, [Lcom/tapjoy/internal/fb;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tapjoy/internal/fb;

    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 1

    .line 42
    iget v0, p0, Lcom/tapjoy/internal/fb;->f:I

    return v0
.end method
