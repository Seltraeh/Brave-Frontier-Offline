.class public final Lcom/tapjoy/internal/jr$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tapjoy/internal/jr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private final a:Lcom/tapjoy/internal/jr;

.field private final b:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/tapjoy/internal/jr;Ljava/lang/String;)V
    .locals 0

    .line 350
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 351
    iput-object p1, p0, Lcom/tapjoy/internal/jr$a;->a:Lcom/tapjoy/internal/jr;

    .line 352
    invoke-static {p2}, Lcom/tapjoy/internal/jt;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/tapjoy/internal/jr$a;->b:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/tapjoy/internal/jr;Ljava/lang/String;B)V
    .locals 0

    .line 346
    invoke-direct {p0, p1, p2}, Lcom/tapjoy/internal/jr$a;-><init>(Lcom/tapjoy/internal/jr;Ljava/lang/String;)V

    return-void
.end method
