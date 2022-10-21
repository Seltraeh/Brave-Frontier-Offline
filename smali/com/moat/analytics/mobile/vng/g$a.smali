.class final enum Lcom/moat/analytics/mobile/vng/g$a;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/moat/analytics/mobile/vng/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/moat/analytics/mobile/vng/g$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/moat/analytics/mobile/vng/g$a;

.field public static final enum b:Lcom/moat/analytics/mobile/vng/g$a;

.field private static final synthetic c:[Lcom/moat/analytics/mobile/vng/g$a;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/moat/analytics/mobile/vng/g$a;

    const-string v1, "DISPLAY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/moat/analytics/mobile/vng/g$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/moat/analytics/mobile/vng/g$a;->a:Lcom/moat/analytics/mobile/vng/g$a;

    new-instance v0, Lcom/moat/analytics/mobile/vng/g$a;

    const-string v1, "VIDEO"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/moat/analytics/mobile/vng/g$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/moat/analytics/mobile/vng/g$a;->b:Lcom/moat/analytics/mobile/vng/g$a;

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/moat/analytics/mobile/vng/g$a;

    sget-object v4, Lcom/moat/analytics/mobile/vng/g$a;->a:Lcom/moat/analytics/mobile/vng/g$a;

    aput-object v4, v1, v2

    aput-object v0, v1, v3

    sput-object v1, Lcom/moat/analytics/mobile/vng/g$a;->c:[Lcom/moat/analytics/mobile/vng/g$a;

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

.method public static valueOf(Ljava/lang/String;)Lcom/moat/analytics/mobile/vng/g$a;
    .locals 1

    const-class v0, Lcom/moat/analytics/mobile/vng/g$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/moat/analytics/mobile/vng/g$a;

    return-object p0
.end method

.method public static values()[Lcom/moat/analytics/mobile/vng/g$a;
    .locals 1

    sget-object v0, Lcom/moat/analytics/mobile/vng/g$a;->c:[Lcom/moat/analytics/mobile/vng/g$a;

    invoke-virtual {v0}, [Lcom/moat/analytics/mobile/vng/g$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/moat/analytics/mobile/vng/g$a;

    return-object v0
.end method
