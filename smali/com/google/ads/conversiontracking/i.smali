.class public final Lcom/google/ads/conversiontracking/i;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/ads/conversiontracking/i$a;
    }
.end annotation


# direct methods
.method public static a(Landroid/content/Context;)Lcom/google/ads/conversiontracking/i$a;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalStateException;,
            Lcom/google/ads/conversiontracking/j;,
            Lcom/google/ads/conversiontracking/k;
        }
    .end annotation

    const-string v0, "Calling this from your main thread can lead to deadlock"

    invoke-static {v0}, Lcom/google/ads/conversiontracking/p;->a(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/google/ads/conversiontracking/i;->b(Landroid/content/Context;)Lcom/google/ads/conversiontracking/n;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/google/ads/conversiontracking/i;->a(Landroid/content/Context;Lcom/google/ads/conversiontracking/n;)Lcom/google/ads/conversiontracking/i$a;

    move-result-object p0

    return-object p0
.end method

.method static a(Landroid/content/Context;Lcom/google/ads/conversiontracking/n;)Lcom/google/ads/conversiontracking/i$a;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "getAdvertisingIdInfo unbindService failed."

    const-string v1, "AdvertisingIdClient"

    :try_start_0
    invoke-virtual {p1}, Lcom/google/ads/conversiontracking/n;->a()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/google/ads/conversiontracking/q$a;->a(Landroid/os/IBinder;)Lcom/google/ads/conversiontracking/q;

    move-result-object v2

    new-instance v3, Lcom/google/ads/conversiontracking/i$a;

    invoke-interface {v2}, Lcom/google/ads/conversiontracking/q;->a()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-interface {v2, v5}, Lcom/google/ads/conversiontracking/q;->a(Z)Z

    move-result v2

    invoke-direct {v3, v4, v2}, Lcom/google/ads/conversiontracking/i$a;-><init>(Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {p0, p1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-static {v1, v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-object v3

    :catchall_0
    move-exception v2

    goto :goto_1

    :catch_1
    :try_start_2
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Interrupted exception"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    :catch_2
    move-exception v2

    const-string v3, "GMS remote exception "

    invoke-static {v1, v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v2, Ljava/io/IOException;

    const-string v3, "Remote exception"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_1
    :try_start_3
    invoke-virtual {p0, p1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_2

    :catch_3
    move-exception p0

    invoke-static {v1, v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2
    throw v2
.end method

.method private static b(Landroid/content/Context;)Lcom/google/ads/conversiontracking/n;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/ads/conversiontracking/j;,
            Lcom/google/ads/conversiontracking/k;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.android.vending"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-static {p0}, Lcom/google/ads/conversiontracking/l;->b(Landroid/content/Context;)V
    :try_end_1
    .catch Lcom/google/ads/conversiontracking/j; {:try_start_1 .. :try_end_1} :catch_0

    new-instance v0, Lcom/google/ads/conversiontracking/n;

    invoke-direct {v0}, Lcom/google/ads/conversiontracking/n;-><init>()V

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.google.android.gms.ads.identifier.service.START"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "com.google.android.gms"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v0, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result p0

    if-eqz p0, :cond_0

    return-object v0

    :cond_0
    new-instance p0, Ljava/io/IOException;

    const-string v0, "Connection failure"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_1
    new-instance p0, Lcom/google/ads/conversiontracking/j;

    const/16 v0, 0x9

    invoke-direct {p0, v0}, Lcom/google/ads/conversiontracking/j;-><init>(I)V

    throw p0
.end method
