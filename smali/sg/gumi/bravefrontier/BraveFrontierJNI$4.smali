.class Lsg/gumi/bravefrontier/BraveFrontierJNI$4;
.super Ljava/lang/Object;
.source "BraveFrontierJNI.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsg/gumi/bravefrontier/BraveFrontierJNI;->unpackNoDLCRes()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 319
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .line 322
    invoke-static {}, Lsg/gumi/bravefrontier/BraveFrontierJNI;->getWritablePath()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    .line 326
    :try_start_0
    invoke-static {}, Lsg/gumi/bravefrontier/BraveFrontierJNI;->access$000()Lorg/cocos2dx/lib/Cocos2dxActivity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    const-string v4, "NoDLCRes.zip"

    .line 327
    invoke-virtual {v3, v4}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    .line 328
    new-instance v3, Ljava/util/zip/ZipInputStream;

    invoke-direct {v3, v2}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    .line 331
    :goto_0
    invoke-virtual {v3}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v4

    const/4 v5, 0x0

    if-eqz v4, :cond_2

    .line 333
    invoke-virtual {v4}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v6

    if-eqz v6, :cond_0

    goto :goto_0

    .line 337
    :cond_0
    new-instance v6, Ljava/io/FileOutputStream;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v8, "NoDLCRes"

    const-string v9, ""

    invoke-virtual {v4, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v6, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    const/16 v4, 0x1000

    new-array v4, v4, [B

    .line 343
    :goto_1
    invoke-virtual {v3, v4}, Ljava/util/zip/ZipInputStream;->read([B)I

    move-result v7

    if-lez v7, :cond_1

    .line 344
    invoke-virtual {v6, v4, v5, v7}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_1

    .line 346
    :cond_1
    invoke-virtual {v3}, Ljava/util/zip/ZipInputStream;->closeEntry()V

    .line 347
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V

    goto :goto_0

    .line 349
    :cond_2
    invoke-virtual {v3}, Ljava/util/zip/ZipInputStream;->close()V

    .line 350
    sput v5, Lsg/gumi/bravefrontier/BraveFrontierJNI;->s_UnzipStatus:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v5, :cond_3

    .line 359
    sput v1, Lsg/gumi/bravefrontier/BraveFrontierJNI;->s_UnzipStatus:I

    :cond_3
    if-eqz v2, :cond_5

    .line 366
    :goto_2
    :try_start_1
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_3

    :catchall_0
    nop

    .line 357
    sget v0, Lsg/gumi/bravefrontier/BraveFrontierJNI;->s_UnzipStatus:I

    if-eqz v0, :cond_4

    .line 359
    sput v1, Lsg/gumi/bravefrontier/BraveFrontierJNI;->s_UnzipStatus:I

    :cond_4
    if-eqz v2, :cond_5

    goto :goto_2

    :catchall_1
    :cond_5
    :goto_3
    return-void
.end method
