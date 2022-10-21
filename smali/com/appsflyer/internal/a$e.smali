.class public final enum Lcom/appsflyer/internal/a$e;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appsflyer/internal/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/appsflyer/internal/a$e;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum ǃ:Lcom/appsflyer/internal/a$e;

.field private static final synthetic ɩ:[Lcom/appsflyer/internal/a$e;

.field public static final enum Ι:Lcom/appsflyer/internal/a$e;


# instance fields
.field public ı:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 285
    new-instance v0, Lcom/appsflyer/internal/a$e;

    const-string v1, "HOOKING"

    const/4 v2, 0x0

    const-string v3, "hk"

    invoke-direct {v0, v1, v2, v3}, Lcom/appsflyer/internal/a$e;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/appsflyer/internal/a$e;->ǃ:Lcom/appsflyer/internal/a$e;

    new-instance v0, Lcom/appsflyer/internal/a$e;

    const-string v1, "DEBUGGABLE"

    const/4 v3, 0x1

    const-string v4, "dbg"

    invoke-direct {v0, v1, v3, v4}, Lcom/appsflyer/internal/a$e;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/appsflyer/internal/a$e;->Ι:Lcom/appsflyer/internal/a$e;

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/appsflyer/internal/a$e;

    .line 284
    sget-object v4, Lcom/appsflyer/internal/a$e;->ǃ:Lcom/appsflyer/internal/a$e;

    aput-object v4, v1, v2

    aput-object v0, v1, v3

    sput-object v1, Lcom/appsflyer/internal/a$e;->ɩ:[Lcom/appsflyer/internal/a$e;

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

    .line 289
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 290
    iput-object p3, p0, Lcom/appsflyer/internal/a$e;->ı:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/appsflyer/internal/a$e;
    .locals 1

    .line 284
    const-class v0, Lcom/appsflyer/internal/a$e;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/appsflyer/internal/a$e;

    return-object p0
.end method

.method public static values()[Lcom/appsflyer/internal/a$e;
    .locals 1

    .line 284
    sget-object v0, Lcom/appsflyer/internal/a$e;->ɩ:[Lcom/appsflyer/internal/a$e;

    invoke-virtual {v0}, [Lcom/appsflyer/internal/a$e;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/appsflyer/internal/a$e;

    return-object v0
.end method
