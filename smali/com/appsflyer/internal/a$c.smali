.class public final enum Lcom/appsflyer/internal/a$c;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appsflyer/internal/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/appsflyer/internal/a$c;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum ı:Lcom/appsflyer/internal/a$c;

.field public static final enum Ι:Lcom/appsflyer/internal/a$c;

.field private static final synthetic ι:[Lcom/appsflyer/internal/a$c;


# instance fields
.field public ɩ:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 319
    new-instance v0, Lcom/appsflyer/internal/a$c;

    const-string v1, "XPOSED"

    const/4 v2, 0x0

    const-string v3, "xps"

    invoke-direct {v0, v1, v2, v3}, Lcom/appsflyer/internal/a$c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/appsflyer/internal/a$c;->Ι:Lcom/appsflyer/internal/a$c;

    new-instance v0, Lcom/appsflyer/internal/a$c;

    const-string v1, "FRIDA"

    const/4 v3, 0x1

    const-string v4, "frd"

    invoke-direct {v0, v1, v3, v4}, Lcom/appsflyer/internal/a$c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/appsflyer/internal/a$c;->ı:Lcom/appsflyer/internal/a$c;

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/appsflyer/internal/a$c;

    .line 318
    sget-object v4, Lcom/appsflyer/internal/a$c;->Ι:Lcom/appsflyer/internal/a$c;

    aput-object v4, v1, v2

    aput-object v0, v1, v3

    sput-object v1, Lcom/appsflyer/internal/a$c;->ι:[Lcom/appsflyer/internal/a$c;

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

    .line 323
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 324
    iput-object p3, p0, Lcom/appsflyer/internal/a$c;->ɩ:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/appsflyer/internal/a$c;
    .locals 1

    .line 318
    const-class v0, Lcom/appsflyer/internal/a$c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/appsflyer/internal/a$c;

    return-object p0
.end method

.method public static values()[Lcom/appsflyer/internal/a$c;
    .locals 1

    .line 318
    sget-object v0, Lcom/appsflyer/internal/a$c;->ι:[Lcom/appsflyer/internal/a$c;

    invoke-virtual {v0}, [Lcom/appsflyer/internal/a$c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/appsflyer/internal/a$c;

    return-object v0
.end method
