.class final Lcom/tapjoy/internal/gf$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tapjoy/internal/gf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "*>;"
        }
    .end annotation
.end field

.field final synthetic d:Lcom/tapjoy/internal/gf;


# direct methods
.method public constructor <init>(Lcom/tapjoy/internal/gf;Landroid/content/Context;Ljava/lang/String;Ljava/util/Hashtable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "*>;)V"
        }
    .end annotation

    .line 248
    iput-object p1, p0, Lcom/tapjoy/internal/gf$a;->d:Lcom/tapjoy/internal/gf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p2, :cond_1

    .line 2047
    instance-of p1, p2, Landroid/app/Application;

    if-eqz p1, :cond_0

    move-object p1, p2

    goto :goto_0

    .line 2050
    :cond_0
    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_2

    move-object p2, p1

    .line 249
    :cond_2
    iput-object p2, p0, Lcom/tapjoy/internal/gf$a;->a:Landroid/content/Context;

    .line 250
    iput-object p3, p0, Lcom/tapjoy/internal/gf$a;->b:Ljava/lang/String;

    .line 251
    iput-object p4, p0, Lcom/tapjoy/internal/gf$a;->c:Ljava/util/Hashtable;

    return-void
.end method
