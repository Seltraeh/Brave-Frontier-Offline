.class public final enum Lcom/appsflyer/internal/a$d;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appsflyer/internal/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/appsflyer/internal/a$d;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum ı:Lcom/appsflyer/internal/a$d;

.field public static final enum ǃ:Lcom/appsflyer/internal/a$d;

.field private static final synthetic ɩ:[Lcom/appsflyer/internal/a$d;

.field public static final enum ι:Lcom/appsflyer/internal/a$d;


# instance fields
.field public Ι:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 302
    new-instance v0, Lcom/appsflyer/internal/a$d;

    const-string v1, "NULL"

    const/4 v2, 0x0

    const-string v3, "null"

    invoke-direct {v0, v1, v2, v3}, Lcom/appsflyer/internal/a$d;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/appsflyer/internal/a$d;->ǃ:Lcom/appsflyer/internal/a$d;

    new-instance v0, Lcom/appsflyer/internal/a$d;

    const-string v1, "COM_ANDROID_VENDING"

    const/4 v3, 0x1

    const-string v4, "cav"

    invoke-direct {v0, v1, v3, v4}, Lcom/appsflyer/internal/a$d;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/appsflyer/internal/a$d;->ı:Lcom/appsflyer/internal/a$d;

    new-instance v0, Lcom/appsflyer/internal/a$d;

    const-string v1, "OTHER"

    const/4 v4, 0x2

    const-string v5, "other"

    invoke-direct {v0, v1, v4, v5}, Lcom/appsflyer/internal/a$d;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/appsflyer/internal/a$d;->ι:Lcom/appsflyer/internal/a$d;

    const/4 v1, 0x3

    new-array v1, v1, [Lcom/appsflyer/internal/a$d;

    .line 301
    sget-object v5, Lcom/appsflyer/internal/a$d;->ǃ:Lcom/appsflyer/internal/a$d;

    aput-object v5, v1, v2

    sget-object v2, Lcom/appsflyer/internal/a$d;->ı:Lcom/appsflyer/internal/a$d;

    aput-object v2, v1, v3

    aput-object v0, v1, v4

    sput-object v1, Lcom/appsflyer/internal/a$d;->ɩ:[Lcom/appsflyer/internal/a$d;

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

    .line 306
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 307
    iput-object p3, p0, Lcom/appsflyer/internal/a$d;->Ι:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/appsflyer/internal/a$d;
    .locals 1

    .line 301
    const-class v0, Lcom/appsflyer/internal/a$d;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/appsflyer/internal/a$d;

    return-object p0
.end method

.method public static values()[Lcom/appsflyer/internal/a$d;
    .locals 1

    .line 301
    sget-object v0, Lcom/appsflyer/internal/a$d;->ɩ:[Lcom/appsflyer/internal/a$d;

    invoke-virtual {v0}, [Lcom/appsflyer/internal/a$d;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/appsflyer/internal/a$d;

    return-object v0
.end method
