.class public final Lcom/tapjoy/internal/jj;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Lcom/tapjoy/internal/jj;


# instance fields
.field public b:Ljava/lang/String;

.field public c:Ljava/lang/Throwable;

.field private d:[Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 35
    new-instance v0, Lcom/tapjoy/internal/jj;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/tapjoy/internal/jj;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/tapjoy/internal/jj;->a:Lcom/tapjoy/internal/jj;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 42
    invoke-direct {p0, p1, v0, v0}, Lcom/tapjoy/internal/jj;-><init>(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 1

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/tapjoy/internal/jj;->b:Ljava/lang/String;

    .line 47
    iput-object p3, p0, Lcom/tapjoy/internal/jj;->c:Ljava/lang/Throwable;

    if-nez p3, :cond_0

    .line 49
    iput-object p2, p0, Lcom/tapjoy/internal/jj;->d:[Ljava/lang/Object;

    return-void

    :cond_0
    if-eqz p2, :cond_1

    .line 1056
    array-length p1, p2

    if-eqz p1, :cond_1

    .line 1059
    array-length p1, p2

    add-int/lit8 p1, p1, -0x1

    .line 1060
    new-array p3, p1, [Ljava/lang/Object;

    const/4 v0, 0x0

    .line 1061
    invoke-static {p2, v0, p3, v0, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 51
    iput-object p3, p0, Lcom/tapjoy/internal/jj;->d:[Ljava/lang/Object;

    return-void

    .line 1057
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "non-sensical empty or null argument array"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
