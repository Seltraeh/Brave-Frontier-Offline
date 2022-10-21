.class final enum Lcom/moat/analytics/mobile/vng/j$a;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/moat/analytics/mobile/vng/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/moat/analytics/mobile/vng/j$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/moat/analytics/mobile/vng/j$a;

.field public static final enum b:Lcom/moat/analytics/mobile/vng/j$a;

.field public static final enum c:Lcom/moat/analytics/mobile/vng/j$a;

.field private static final synthetic d:[Lcom/moat/analytics/mobile/vng/j$a;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/moat/analytics/mobile/vng/j$a;

    const-string v1, "WEBVIEW"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/moat/analytics/mobile/vng/j$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/moat/analytics/mobile/vng/j$a;->a:Lcom/moat/analytics/mobile/vng/j$a;

    new-instance v0, Lcom/moat/analytics/mobile/vng/j$a;

    const-string v1, "NATIVE_DISPLAY"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/moat/analytics/mobile/vng/j$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/moat/analytics/mobile/vng/j$a;->b:Lcom/moat/analytics/mobile/vng/j$a;

    new-instance v0, Lcom/moat/analytics/mobile/vng/j$a;

    const-string v1, "NATIVE_VIDEO"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/moat/analytics/mobile/vng/j$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/moat/analytics/mobile/vng/j$a;->c:Lcom/moat/analytics/mobile/vng/j$a;

    const/4 v1, 0x3

    new-array v1, v1, [Lcom/moat/analytics/mobile/vng/j$a;

    sget-object v5, Lcom/moat/analytics/mobile/vng/j$a;->a:Lcom/moat/analytics/mobile/vng/j$a;

    aput-object v5, v1, v2

    sget-object v2, Lcom/moat/analytics/mobile/vng/j$a;->b:Lcom/moat/analytics/mobile/vng/j$a;

    aput-object v2, v1, v3

    aput-object v0, v1, v4

    sput-object v1, Lcom/moat/analytics/mobile/vng/j$a;->d:[Lcom/moat/analytics/mobile/vng/j$a;

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

.method public static valueOf(Ljava/lang/String;)Lcom/moat/analytics/mobile/vng/j$a;
    .locals 1

    const-class v0, Lcom/moat/analytics/mobile/vng/j$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/moat/analytics/mobile/vng/j$a;

    return-object p0
.end method

.method public static values()[Lcom/moat/analytics/mobile/vng/j$a;
    .locals 1

    sget-object v0, Lcom/moat/analytics/mobile/vng/j$a;->d:[Lcom/moat/analytics/mobile/vng/j$a;

    invoke-virtual {v0}, [Lcom/moat/analytics/mobile/vng/j$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/moat/analytics/mobile/vng/j$a;

    return-object v0
.end method
