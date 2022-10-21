.class final Lcom/tapjoy/internal/hx$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tapjoy/internal/hx;->a(Ljava/net/URL;Ljava/io/InputStream;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/net/URL;

.field final synthetic b:Ljava/io/InputStream;

.field final synthetic c:J

.field final synthetic d:Lcom/tapjoy/internal/hx;


# direct methods
.method constructor <init>(Lcom/tapjoy/internal/hx;Ljava/net/URL;Ljava/io/InputStream;J)V
    .locals 0

    .line 120
    iput-object p1, p0, Lcom/tapjoy/internal/hx$2;->d:Lcom/tapjoy/internal/hx;

    iput-object p2, p0, Lcom/tapjoy/internal/hx$2;->a:Ljava/net/URL;

    iput-object p3, p0, Lcom/tapjoy/internal/hx$2;->b:Ljava/io/InputStream;

    iput-wide p4, p0, Lcom/tapjoy/internal/hx$2;->c:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 126
    :try_start_0
    iget-object v0, p0, Lcom/tapjoy/internal/hx$2;->d:Lcom/tapjoy/internal/hx;

    const-string v1, "tj_"

    const/4 v2, 0x0

    .line 1218
    invoke-virtual {v0}, Lcom/tapjoy/internal/hx;->b()Ljava/io/File;

    move-result-object v0

    invoke-static {v1, v2, v0}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 131
    :cond_0
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 141
    :try_start_1
    iget-object v2, p0, Lcom/tapjoy/internal/hx$2;->b:Ljava/io/InputStream;

    invoke-static {v2, v1}, Lcom/tapjoy/internal/kb;->a(Ljava/io/InputStream;Ljava/io/OutputStream;)J

    .line 142
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 148
    iget-wide v1, p0, Lcom/tapjoy/internal/hx$2;->c:J

    const-wide/32 v3, 0x93a80

    cmp-long v5, v1, v3

    if-lez v5, :cond_1

    move-wide v1, v3

    .line 153
    :cond_1
    invoke-static {}, Lcom/tapjoy/internal/u;->b()J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    mul-long v1, v1, v5

    add-long/2addr v3, v1

    .line 155
    iget-object v1, p0, Lcom/tapjoy/internal/hx$2;->d:Lcom/tapjoy/internal/hx;

    monitor-enter v1

    .line 156
    :try_start_2
    iget-object v2, p0, Lcom/tapjoy/internal/hx$2;->d:Lcom/tapjoy/internal/hx;

    iget-object v5, p0, Lcom/tapjoy/internal/hx$2;->a:Ljava/net/URL;

    invoke-virtual {v2, v5}, Lcom/tapjoy/internal/hx;->b(Ljava/net/URL;)Ljava/lang/String;

    move-result-object v2

    .line 157
    iget-object v5, p0, Lcom/tapjoy/internal/hx$2;->d:Lcom/tapjoy/internal/hx;

    invoke-virtual {v5, v2}, Lcom/tapjoy/internal/hx;->a(Ljava/lang/String;)Ljava/io/File;

    move-result-object v5

    .line 158
    invoke-virtual {v0, v5}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 159
    iget-object v0, p0, Lcom/tapjoy/internal/hx$2;->d:Lcom/tapjoy/internal/hx;

    invoke-static {v0}, Lcom/tapjoy/internal/hx;->c(Lcom/tapjoy/internal/hx;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 164
    :cond_2
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catch_0
    return-void
.end method
