.class final Lcom/tapjoy/internal/fq$a$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tapjoy/internal/fq$a;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/reflect/Method;

.field final synthetic b:[Ljava/lang/Object;

.field final synthetic c:Lcom/tapjoy/internal/fq$a;


# direct methods
.method constructor <init>(Lcom/tapjoy/internal/fq$a;Ljava/lang/reflect/Method;[Ljava/lang/Object;)V
    .locals 0

    .line 61
    iput-object p1, p0, Lcom/tapjoy/internal/fq$a$1;->c:Lcom/tapjoy/internal/fq$a;

    iput-object p2, p0, Lcom/tapjoy/internal/fq$a$1;->a:Ljava/lang/reflect/Method;

    iput-object p3, p0, Lcom/tapjoy/internal/fq$a$1;->b:[Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 65
    :try_start_0
    iget-object v0, p0, Lcom/tapjoy/internal/fq$a$1;->a:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lcom/tapjoy/internal/fq$a$1;->c:Lcom/tapjoy/internal/fq$a;

    invoke-static {v1}, Lcom/tapjoy/internal/fq$a;->a(Lcom/tapjoy/internal/fq$a;)Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lcom/tapjoy/internal/fq$a$1;->b:[Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 71
    invoke-static {v0}, Lcom/tapjoy/internal/jv;->a(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    :catch_1
    move-exception v0

    .line 69
    invoke-static {v0}, Lcom/tapjoy/internal/jv;->a(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    :catch_2
    move-exception v0

    .line 67
    invoke-static {v0}, Lcom/tapjoy/internal/jv;->a(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method
