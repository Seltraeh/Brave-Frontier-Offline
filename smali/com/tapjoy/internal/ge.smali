.class public final Lcom/tapjoy/internal/ge;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final b:Lcom/tapjoy/internal/ge;

.field private static c:Lcom/tapjoy/internal/ge;


# instance fields
.field public final a:Lcom/tapjoy/internal/gc;

.field private d:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 26
    new-instance v0, Lcom/tapjoy/internal/ge;

    invoke-direct {v0}, Lcom/tapjoy/internal/ge;-><init>()V

    .line 28
    sput-object v0, Lcom/tapjoy/internal/ge;->b:Lcom/tapjoy/internal/ge;

    sput-object v0, Lcom/tapjoy/internal/ge;->c:Lcom/tapjoy/internal/ge;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    new-instance v0, Lcom/tapjoy/internal/gc;

    invoke-direct {v0}, Lcom/tapjoy/internal/gc;-><init>()V

    iput-object v0, p0, Lcom/tapjoy/internal/ge;->a:Lcom/tapjoy/internal/gc;

    return-void
.end method

.method public static a()Lcom/tapjoy/internal/ge;
    .locals 1

    .line 34
    sget-object v0, Lcom/tapjoy/internal/ge;->c:Lcom/tapjoy/internal/ge;

    return-object v0
.end method

.method public static b()Lcom/tapjoy/internal/gc;
    .locals 1

    .line 54
    sget-object v0, Lcom/tapjoy/internal/ge;->c:Lcom/tapjoy/internal/ge;

    iget-object v0, v0, Lcom/tapjoy/internal/ge;->a:Lcom/tapjoy/internal/gc;

    return-object v0
.end method


# virtual methods
.method public final declared-synchronized a(Landroid/content/Context;)V
    .locals 3

    monitor-enter p0

    if-eqz p1, :cond_1

    .line 70
    :try_start_0
    iget-object v0, p0, Lcom/tapjoy/internal/ge;->d:Landroid/content/Context;

    if-nez v0, :cond_1

    .line 71
    iput-object p1, p0, Lcom/tapjoy/internal/ge;->d:Landroid/content/Context;

    .line 1082
    invoke-virtual {p0}, Lcom/tapjoy/internal/ge;->c()Landroid/content/SharedPreferences;

    move-result-object p1

    .line 1083
    invoke-virtual {p0}, Lcom/tapjoy/internal/ge;->c()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "configurations"

    const/4 v2, 0x0

    .line 1084
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v0, :cond_0

    .line 1088
    :try_start_1
    invoke-static {v0}, Lcom/tapjoy/internal/bi;->b(Ljava/lang/String;)Lcom/tapjoy/internal/bi;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1090
    :try_start_2
    invoke-virtual {v0}, Lcom/tapjoy/internal/bi;->d()Ljava/util/Map;

    move-result-object v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1092
    :try_start_3
    invoke-interface {v0}, Lcom/tapjoy/internal/bk;->close()V

    .line 1095
    iget-object v0, p0, Lcom/tapjoy/internal/ge;->a:Lcom/tapjoy/internal/gc;

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/gc;->a(Ljava/util/Map;)V

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 1092
    invoke-interface {v0}, Lcom/tapjoy/internal/bk;->close()V

    .line 1093
    throw v1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1097
    :catch_0
    :try_start_4
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "configurations"

    invoke-interface {p1, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1101
    :cond_0
    :goto_0
    new-instance p1, Lcom/tapjoy/internal/ge$1;

    invoke-direct {p1, p0}, Lcom/tapjoy/internal/ge$1;-><init>(Lcom/tapjoy/internal/ge;)V

    .line 1109
    iget-object v0, p0, Lcom/tapjoy/internal/ge;->a:Lcom/tapjoy/internal/gc;

    invoke-virtual {v0, p1}, Ljava/util/Observable;->addObserver(Ljava/util/Observer;)V

    .line 1110
    iget-object v0, p0, Lcom/tapjoy/internal/ge;->a:Lcom/tapjoy/internal/gc;

    invoke-interface {p1, v0, v2}, Ljava/util/Observer;->update(Ljava/util/Observable;Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1

    .line 75
    :cond_1
    :goto_1
    monitor-exit p0

    return-void
.end method

.method public final c()Landroid/content/SharedPreferences;
    .locals 3

    .line 78
    iget-object v0, p0, Lcom/tapjoy/internal/ge;->d:Landroid/content/Context;

    const-string v1, "tjcPrefrences"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method
