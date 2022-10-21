.class public Lsg/gumi/bravefrontier/BraveFrontierJNI;
.super Ljava/lang/Object;
.source "BraveFrontierJNI.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation


# static fields
.field public static final PREFS_NAME_AUTH:Ljava/lang/String; = "auth"

.field public static final PREFS_NAME_GAMEDATA:Ljava/lang/String; = "gamedata"

.field private static final THAI_COMMON_WORDS:Ljava/lang/String; = "(\u0e40\u0e1b\u0e47\u0e19|\u0e2d\u0e22\u0e39\u0e48|\u0e08\u0e30|\u0e43\u0e0a\u0e49|\u0e44\u0e14\u0e49|\u0e43\u0e2b\u0e49|\u0e43\u0e19|\u0e08\u0e36\u0e07|\u0e2b\u0e23\u0e37\u0e2d|\u0e41\u0e25\u0e30|\u0e01\u0e31\u0e1a|\u0e40\u0e19\u0e37\u0e48\u0e2d\u0e07|\u0e14\u0e49\u0e27\u0e22|\u0e16\u0e49\u0e32|\u0e41\u0e25\u0e49\u0e27|\u0e17\u0e31\u0e49\u0e07|\u0e40\u0e1e\u0e23\u0e32\u0e30|\u0e0b\u0e36\u0e48\u0e07|\u0e0b\u0e49\u0e33|\u0e44\u0e21\u0e48|\u0e43\u0e0a\u0e48|\u0e15\u0e49\u0e2d\u0e07|\u0e01\u0e31\u0e19|\u0e08\u0e32\u0e01|\u0e16\u0e36\u0e07|\u0e19\u0e31\u0e49\u0e19|\u0e1c\u0e39\u0e49|\u0e04\u0e27\u0e32\u0e21|\u0e2a\u0e48\u0e27\u0e19|\u0e22\u0e31\u0e07|\u0e17\u0e31\u0e48\u0e27|\u0e2d\u0e37\u0e48\u0e19|\u0e42\u0e14\u0e22|\u0e2a\u0e32\u0e21\u0e32\u0e23\u0e16|\u0e40\u0e17\u0e48\u0e32|\u0e43\u0e15\u0e49|\u0e43\u0e2a\u0e48|\u0e43\u0e14|\u0e44\u0e27\u0e49|\u0e43\u0e2b\u0e21\u0e48|\u0e43\u0e2b\u0e0d\u0e48|\u0e40\u0e25\u0e47\u0e01|\u0e43\u0e01\u0e25\u0e49|\u0e44\u0e01\u0e25|\u0e40\u0e02\u0e32|\u0e0a\u0e48\u0e27\u0e22|\u0e09\u0e1a\u0e31\u0e1a|\u0e04\u0e49\u0e19|\u0e40\u0e23\u0e47\u0e27|\u0e40\u0e02\u0e49\u0e32|\u0e40\u0e0a\u0e49\u0e32)"

.field private static final THAI_FOLLOWING_CHARS:Ljava/lang/String; = "\u0e2f|[\u0e30-\u0e3a]|[\u0e45-\u0e4e]|\\)|\\]|\\}|\""

.field private static final THAI_LEADING_CHARS:Ljava/lang/String; = "[\u0e40-\u0e44]|\\(|\\[|\\{|\""

.field private static final THAI_REGEX_0:Ljava/lang/String; = "(\u0e2f|[\u0e30-\u0e3a]|[\u0e45-\u0e4e]|\\)|\\]|\\}|\")(?=([\u0e40-\u0e44]|\\(|\\[|\\{|\"))"

.field private static final THAI_REGEX_1:Ljava/lang/String; = "([\u0e01-\u0e3a\u0e40-\u0e4f\u0e5a\u0e5b])(?![\\)\\]\\}\"]|[\u0e01-\u0e3a\u0e40-\u0e4f\u0e5a\u0e5b])"

.field private static final THAI_REGEX_2:Ljava/lang/String; = "([^\u0e01-\u0e3a\u0e40-\u0e4f\u0e5a\u0e5b\\(\\(\\[\\{\"])(?=[\u0e01-\u0e3a\u0e40-\u0e4f\u0e5a\u0e5b])"

.field private static final THAI_REGEX_3:Ljava/lang/String; = "([^[\u0e40-\u0e44]|\\(|\\[|\\{|\"])(?=([\u0e40-\u0e44]|\\(|\\[|\\{|\")*(\u0e40\u0e1b\u0e47\u0e19|\u0e2d\u0e22\u0e39\u0e48|\u0e08\u0e30|\u0e43\u0e0a\u0e49|\u0e44\u0e14\u0e49|\u0e43\u0e2b\u0e49|\u0e43\u0e19|\u0e08\u0e36\u0e07|\u0e2b\u0e23\u0e37\u0e2d|\u0e41\u0e25\u0e30|\u0e01\u0e31\u0e1a|\u0e40\u0e19\u0e37\u0e48\u0e2d\u0e07|\u0e14\u0e49\u0e27\u0e22|\u0e16\u0e49\u0e32|\u0e41\u0e25\u0e49\u0e27|\u0e17\u0e31\u0e49\u0e07|\u0e40\u0e1e\u0e23\u0e32\u0e30|\u0e0b\u0e36\u0e48\u0e07|\u0e0b\u0e49\u0e33|\u0e44\u0e21\u0e48|\u0e43\u0e0a\u0e48|\u0e15\u0e49\u0e2d\u0e07|\u0e01\u0e31\u0e19|\u0e08\u0e32\u0e01|\u0e16\u0e36\u0e07|\u0e19\u0e31\u0e49\u0e19|\u0e1c\u0e39\u0e49|\u0e04\u0e27\u0e32\u0e21|\u0e2a\u0e48\u0e27\u0e19|\u0e22\u0e31\u0e07|\u0e17\u0e31\u0e48\u0e27|\u0e2d\u0e37\u0e48\u0e19|\u0e42\u0e14\u0e22|\u0e2a\u0e32\u0e21\u0e32\u0e23\u0e16|\u0e40\u0e17\u0e48\u0e32|\u0e43\u0e15\u0e49|\u0e43\u0e2a\u0e48|\u0e43\u0e14|\u0e44\u0e27\u0e49|\u0e43\u0e2b\u0e21\u0e48|\u0e43\u0e2b\u0e0d\u0e48|\u0e40\u0e25\u0e47\u0e01|\u0e43\u0e01\u0e25\u0e49|\u0e44\u0e01\u0e25|\u0e40\u0e02\u0e32|\u0e0a\u0e48\u0e27\u0e22|\u0e09\u0e1a\u0e31\u0e1a|\u0e04\u0e49\u0e19|\u0e40\u0e23\u0e47\u0e27|\u0e40\u0e02\u0e49\u0e32|\u0e40\u0e0a\u0e49\u0e32)(\u0e2f|[\u0e30-\u0e3a]|[\u0e45-\u0e4e]|\\)|\\]|\\}|\")?)"

.field private static final THAI_REGEX_4:Ljava/lang/String; = "([\u0e45\u0e46\u0e33])"

.field private static final THAI_SINGLE_CHARS:Ljava/lang/String; = "\u0e01-\u0e3a\u0e40-\u0e4f\u0e5a\u0e5b"

.field private static deepLinkParam:Ljava/lang/String;

.field private static mActivity:Lorg/cocos2dx/lib/Cocos2dxActivity;

.field private static regexArray:[Ljava/util/regex/Pattern;

.field static s_UnzipStatus:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lorg/cocos2dx/lib/Cocos2dxActivity;
    .locals 1

    .line 79
    sget-object v0, Lsg/gumi/bravefrontier/BraveFrontierJNI;->mActivity:Lorg/cocos2dx/lib/Cocos2dxActivity;

    return-object v0
.end method

.method static synthetic access$100(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 79
    invoke-static {p0, p1, p2}, Lsg/gumi/bravefrontier/BraveFrontierJNI;->replaceGooglePlayStoreName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static appExit()V
    .locals 1

    .line 379
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    return-void
.end method

.method public static appsflyerStartTracking()V
    .locals 0

    .line 967
    invoke-static {}, Lsg/gumi/bravefrontier/BraveFrontier;->appsflyerStartTracking()V

    return-void
.end method

.method public static native backButtonCallback()V
.end method

.method public static canLaunchUrl(Ljava/lang/String;)Z
    .locals 0

    .line 546
    invoke-static {p0}, Lsg/gumi/bravefrontier/webview/BFWebView;->canLaunchUrl(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static cancelLocalNotifications()V
    .locals 6

    .line 707
    sget-object v0, Lsg/gumi/bravefrontier/BraveFrontierJNI;->mActivity:Lorg/cocos2dx/lib/Cocos2dxActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "alarm"

    .line 709
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AlarmManager;

    .line 711
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lsg/gumi/bravefrontier/AlarmReceiver;

    invoke-direct {v2, v0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v3, "EnergyNotif"

    .line 712
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v3, 0x0

    const/high16 v4, 0x40000000    # 2.0f

    .line 713
    invoke-static {v0, v3, v2, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    .line 715
    invoke-virtual {v1, v5}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    const-string v5, "ArenaNotif"

    .line 717
    invoke-virtual {v2, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 718
    invoke-static {v0, v3, v2, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    .line 720
    invoke-virtual {v1, v5}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    const-string v5, "NoLoginNotif"

    .line 722
    invoke-virtual {v2, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 723
    invoke-static {v0, v3, v2, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 725
    invoke-virtual {v1, v0}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    return-void
.end method

.method public static clearApplicationData()V
    .locals 1

    .line 847
    sget-object v0, Lsg/gumi/bravefrontier/BraveFrontierJNI;->mActivity:Lorg/cocos2dx/lib/Cocos2dxActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lsg/gumi/bravefrontier/BraveFrontierJNI;->deleteDir(Ljava/io/File;)Z

    return-void
.end method

.method public static clearDeepLinkParam()V
    .locals 1

    const/4 v0, 0x0

    .line 950
    sput-object v0, Lsg/gumi/bravefrontier/BraveFrontierJNI;->deepLinkParam:Ljava/lang/String;

    return-void
.end method

.method public static copyToClipboard(Ljava/lang/String;)V
    .locals 2

    .line 224
    sget-object v0, Lsg/gumi/bravefrontier/BraveFrontierJNI;->mActivity:Lorg/cocos2dx/lib/Cocos2dxActivity;

    new-instance v1, Lsg/gumi/bravefrontier/BraveFrontierJNI$3;

    invoke-direct {v1, p0}, Lsg/gumi/bravefrontier/BraveFrontierJNI$3;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static createLocalNotification(ILjava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 689
    sget-object v0, Lsg/gumi/bravefrontier/BraveFrontierJNI;->mActivity:Lorg/cocos2dx/lib/Cocos2dxActivity;

    invoke-virtual {v0}, Lorg/cocos2dx/lib/Cocos2dxActivity;->getGLView()Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 691
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    const/16 v2, 0xd

    .line 692
    invoke-virtual {v1, v2, p0}, Ljava/util/Calendar;->add(II)V

    .line 693
    new-instance p0, Landroid/content/Intent;

    const-class v2, Lsg/gumi/bravefrontier/AlarmReceiver;

    invoke-direct {p0, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "notification"

    .line 694
    invoke-virtual {p0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 695
    invoke-virtual {p0, p2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/4 p1, 0x0

    const/high16 p2, 0x40000000    # 2.0f

    .line 697
    invoke-static {v0, p1, p0, p2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    const-string p2, "alarm"

    .line 700
    invoke-virtual {v0, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/app/AlarmManager;

    .line 701
    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    invoke-virtual {p2, p1, v0, v1, p0}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    return-void
.end method

.method public static decodeCStringForBase64(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const-string v0, "AES"

    const-string v1, "UTF-8"

    const/16 v2, 0x10

    :try_start_0
    new-array v3, v2, [B

    .line 169
    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    array-length p1, p1

    invoke-static {v2, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    const/4 v1, 0x0

    invoke-static {v4, v1, v3, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 171
    new-instance p1, Ljavax/crypto/spec/SecretKeySpec;

    invoke-direct {p1, v3, v0}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 172
    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    const/4 v1, 0x2

    .line 173
    invoke-virtual {v0, v1, p1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 174
    invoke-static {p0}, Lsg/gumi/bravefrontier/Base64;->decode(Ljava/lang/String;)[B

    move-result-object p0

    invoke-virtual {v0, p0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p0

    .line 176
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, p0}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    const-string p0, ""

    return-object p0
.end method

.method public static deleteDir(Ljava/io/File;)Z
    .locals 5

    if-eqz p0, :cond_1

    .line 852
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 853
    invoke-virtual {p0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 854
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_1

    .line 855
    new-instance v3, Ljava/io/File;

    aget-object v4, v0, v2

    invoke-direct {v3, p0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v3}, Lsg/gumi/bravefrontier/BraveFrontierJNI;->deleteDir(Ljava/io/File;)Z

    move-result v3

    if-nez v3, :cond_0

    return v1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 862
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result p0

    return p0
.end method

.method public static deleteLocalFiles()Z
    .locals 5

    .line 480
    sget-object v0, Lsg/gumi/bravefrontier/BraveFrontierJNI;->mActivity:Lorg/cocos2dx/lib/Cocos2dxActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->fileList()[Ljava/lang/String;

    move-result-object v0

    .line 481
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 483
    sget-object v4, Lsg/gumi/bravefrontier/BraveFrontierJNI;->mActivity:Lorg/cocos2dx/lib/Cocos2dxActivity;

    invoke-virtual {v4, v3}, Landroid/app/Activity;->deleteFile(Ljava/lang/String;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public static dictionaryWordBreak(Ljava/lang/String;)Ljava/lang/String;
    .locals 10

    if-eqz p0, :cond_8

    .line 884
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_5

    .line 888
    :cond_0
    sget-object v0, Lsg/gumi/bravefrontier/BraveFrontierJNI;->regexArray:[Ljava/util/regex/Pattern;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    const/4 v0, 0x5

    :try_start_0
    new-array v0, v0, [Ljava/util/regex/Pattern;

    const-string v3, "(\u0e2f|[\u0e30-\u0e3a]|[\u0e45-\u0e4e]|\\)|\\]|\\}|\")(?=([\u0e40-\u0e44]|\\(|\\[|\\{|\"))"

    .line 892
    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    aput-object v3, v0, v2

    const-string v3, "([\u0e01-\u0e3a\u0e40-\u0e4f\u0e5a\u0e5b])(?![\\)\\]\\}\"]|[\u0e01-\u0e3a\u0e40-\u0e4f\u0e5a\u0e5b])"

    .line 893
    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    aput-object v3, v0, v1

    const/4 v3, 0x2

    const-string v4, "([^\u0e01-\u0e3a\u0e40-\u0e4f\u0e5a\u0e5b\\(\\(\\[\\{\"])(?=[\u0e01-\u0e3a\u0e40-\u0e4f\u0e5a\u0e5b])"

    .line 894
    invoke-static {v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v4

    aput-object v4, v0, v3

    const/4 v3, 0x3

    const-string v4, "([^[\u0e40-\u0e44]|\\(|\\[|\\{|\"])(?=([\u0e40-\u0e44]|\\(|\\[|\\{|\")*(\u0e40\u0e1b\u0e47\u0e19|\u0e2d\u0e22\u0e39\u0e48|\u0e08\u0e30|\u0e43\u0e0a\u0e49|\u0e44\u0e14\u0e49|\u0e43\u0e2b\u0e49|\u0e43\u0e19|\u0e08\u0e36\u0e07|\u0e2b\u0e23\u0e37\u0e2d|\u0e41\u0e25\u0e30|\u0e01\u0e31\u0e1a|\u0e40\u0e19\u0e37\u0e48\u0e2d\u0e07|\u0e14\u0e49\u0e27\u0e22|\u0e16\u0e49\u0e32|\u0e41\u0e25\u0e49\u0e27|\u0e17\u0e31\u0e49\u0e07|\u0e40\u0e1e\u0e23\u0e32\u0e30|\u0e0b\u0e36\u0e48\u0e07|\u0e0b\u0e49\u0e33|\u0e44\u0e21\u0e48|\u0e43\u0e0a\u0e48|\u0e15\u0e49\u0e2d\u0e07|\u0e01\u0e31\u0e19|\u0e08\u0e32\u0e01|\u0e16\u0e36\u0e07|\u0e19\u0e31\u0e49\u0e19|\u0e1c\u0e39\u0e49|\u0e04\u0e27\u0e32\u0e21|\u0e2a\u0e48\u0e27\u0e19|\u0e22\u0e31\u0e07|\u0e17\u0e31\u0e48\u0e27|\u0e2d\u0e37\u0e48\u0e19|\u0e42\u0e14\u0e22|\u0e2a\u0e32\u0e21\u0e32\u0e23\u0e16|\u0e40\u0e17\u0e48\u0e32|\u0e43\u0e15\u0e49|\u0e43\u0e2a\u0e48|\u0e43\u0e14|\u0e44\u0e27\u0e49|\u0e43\u0e2b\u0e21\u0e48|\u0e43\u0e2b\u0e0d\u0e48|\u0e40\u0e25\u0e47\u0e01|\u0e43\u0e01\u0e25\u0e49|\u0e44\u0e01\u0e25|\u0e40\u0e02\u0e32|\u0e0a\u0e48\u0e27\u0e22|\u0e09\u0e1a\u0e31\u0e1a|\u0e04\u0e49\u0e19|\u0e40\u0e23\u0e47\u0e27|\u0e40\u0e02\u0e49\u0e32|\u0e40\u0e0a\u0e49\u0e32)(\u0e2f|[\u0e30-\u0e3a]|[\u0e45-\u0e4e]|\\)|\\]|\\}|\")?)"

    .line 895
    invoke-static {v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v4

    aput-object v4, v0, v3

    const/4 v3, 0x4

    const-string v4, "([\u0e45\u0e46\u0e33])"

    .line 896
    invoke-static {v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v4

    aput-object v4, v0, v3

    sput-object v0, Lsg/gumi/bravefrontier/BraveFrontierJNI;->regexArray:[Ljava/util/regex/Pattern;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    const/4 v0, 0x0

    .line 899
    sput-object v0, Lsg/gumi/bravefrontier/BraveFrontierJNI;->regexArray:[Ljava/util/regex/Pattern;

    return-object p0

    .line 904
    :cond_1
    :goto_0
    sget-object v0, Lsg/gumi/bravefrontier/BraveFrontierJNI;->regexArray:[Ljava/util/regex/Pattern;

    array-length v0, v0

    .line 905
    new-array v3, v0, [Ljava/util/regex/Matcher;

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v0, :cond_2

    .line 907
    sget-object v5, Lsg/gumi/bravefrontier/BraveFrontierJNI;->regexArray:[Ljava/util/regex/Pattern;

    aget-object v5, v5, v4

    invoke-virtual {v5, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    aput-object v5, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 910
    :cond_2
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 911
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    :cond_3
    :goto_2
    if-ge v6, v5, :cond_6

    move v6, v5

    const/4 v8, 0x0

    :goto_3
    if-ge v8, v0, :cond_5

    .line 917
    aget-object v9, v3, v8

    invoke-virtual {v9}, Ljava/util/regex/Matcher;->reset()Ljava/util/regex/Matcher;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/util/regex/Matcher;->find(I)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 918
    aget-object v9, v3, v8

    invoke-virtual {v9}, Ljava/util/regex/Matcher;->start()I

    move-result v9

    add-int/2addr v9, v1

    invoke-static {v6, v9}, Ljava/lang/Math;->min(II)I

    move-result v6

    :cond_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    :cond_5
    if-ge v6, v5, :cond_3

    .line 922
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v7, v6

    goto :goto_2

    .line 927
    :cond_6
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_8

    .line 928
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 929
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result p0

    sub-int/2addr p0, v1

    :goto_4
    if-ltz p0, :cond_7

    .line 930
    invoke-virtual {v4, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const-string v2, "<wb>"

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 p0, p0, -0x1

    goto :goto_4

    .line 932
    :cond_7
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_8
    :goto_5
    return-object p0
.end method

.method public static disableDim()V
    .locals 2

    .line 199
    sget-object v0, Lsg/gumi/bravefrontier/BraveFrontierJNI;->mActivity:Lorg/cocos2dx/lib/Cocos2dxActivity;

    new-instance v1, Lsg/gumi/bravefrontier/BraveFrontierJNI$2;

    invoke-direct {v1}, Lsg/gumi/bravefrontier/BraveFrontierJNI$2;-><init>()V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static enableDim()V
    .locals 2

    .line 187
    sget-object v0, Lsg/gumi/bravefrontier/BraveFrontierJNI;->mActivity:Lorg/cocos2dx/lib/Cocos2dxActivity;

    new-instance v1, Lsg/gumi/bravefrontier/BraveFrontierJNI$1;

    invoke-direct {v1}, Lsg/gumi/bravefrontier/BraveFrontierJNI$1;-><init>()V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static encodeCStringForBase64(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/16 v0, 0x10

    new-array v1, v0, [B

    const-string v2, "UTF-8"

    .line 153
    invoke-virtual {p1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {p1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    array-length p1, p1

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    const/4 v0, 0x0

    invoke-static {v3, v0, v1, v0, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 155
    new-instance p1, Ljavax/crypto/spec/SecretKeySpec;

    const-string v2, "AES"

    invoke-direct {p1, v1, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 156
    invoke-static {v2}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    const/4 v2, 0x1

    .line 157
    invoke-virtual {v1, v2, p1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 158
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-virtual {v1, p0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p0

    .line 160
    invoke-static {p0, v0}, Lsg/gumi/bravefrontier/Base64;->encodeToString([BZ)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static existsBundleFile(Ljava/lang/String;)Z
    .locals 1

    .line 273
    :try_start_0
    sget-object v0, Lsg/gumi/bravefrontier/BraveFrontierJNI;->mActivity:Lorg/cocos2dx/lib/Cocos2dxActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    .line 274
    invoke-virtual {v0, p0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v0, 0x1

    if-eqz p0, :cond_0

    .line 286
    :try_start_1
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    :cond_0
    return v0

    :catchall_1
    const/4 p0, 0x0

    return p0
.end method

.method public static getAppVersion()Ljava/lang/String;
    .locals 3

    .line 136
    :try_start_0
    sget-object v0, Lsg/gumi/bravefrontier/BraveFrontierJNI;->mActivity:Lorg/cocos2dx/lib/Cocos2dxActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    sget-object v1, Lsg/gumi/bravefrontier/BraveFrontierJNI;->mActivity:Lorg/cocos2dx/lib/Cocos2dxActivity;

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 137
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    .line 139
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const-string v0, ""

    return-object v0
.end method

.method public static getAvailableMemory()I
    .locals 2

    .line 110
    sget-object v0, Lsg/gumi/bravefrontier/BraveFrontierJNI;->mActivity:Lorg/cocos2dx/lib/Cocos2dxActivity;

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 111
    new-instance v1, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v1}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    .line 112
    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 114
    iget-wide v0, v1, Landroid/app/ActivityManager$MemoryInfo;->availMem:J

    long-to-int v1, v0

    return v1
.end method

.method public static getDeepLinkParam()Ljava/lang/String;
    .locals 1

    .line 945
    sget-object v0, Lsg/gumi/bravefrontier/BraveFrontierJNI;->deepLinkParam:Ljava/lang/String;

    return-object v0
.end method

.method public static getDeviceAdvertisingID()Ljava/lang/String;
    .locals 1

    .line 265
    invoke-static {}, Lsg/gumi/bravefrontier/BraveFrontier;->getDeviceAdvertisingID()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getDeviceID()Ljava/lang/String;
    .locals 5

    .line 241
    sget-object v0, Lsg/gumi/bravefrontier/BraveFrontierJNI;->mActivity:Lorg/cocos2dx/lib/Cocos2dxActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 244
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const-string v2, ""

    const/16 v3, 0x1a

    if-lt v1, v3, :cond_0

    .line 247
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getImei()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 248
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getMeid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 249
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    move-object v1, v0

    goto :goto_0

    .line 253
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 256
    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lsg/gumi/bravefrontier/BraveFrontierJNI;->mActivity:Lorg/cocos2dx/lib/Cocos2dxActivity;

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "android_id"

    invoke-static {v2, v3}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 257
    new-instance v2, Ljava/util/UUID;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    int-to-long v3, v0

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v0

    int-to-long v0, v0

    invoke-direct {v2, v3, v4, v0, v1}, Ljava/util/UUID;-><init>(JJ)V

    .line 259
    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getDeviceLanguage()Ljava/lang/String;
    .locals 1

    .line 730
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getDeviceLanguageLocale()Ljava/lang/String;
    .locals 4

    .line 736
    sget-object v0, Lsg/gumi/bravefrontier/BraveFrontierJNI;->mActivity:Lorg/cocos2dx/lib/Cocos2dxActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 739
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    if-lt v1, v2, :cond_0

    .line 741
    invoke-virtual {v0}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    .line 742
    invoke-virtual {v0}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 746
    :cond_0
    iget-object v1, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    .line 747
    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    .line 750
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getDeviceManufacturer()Ljava/lang/String;
    .locals 2

    .line 146
    sget-object v0, Lsg/gumi/util/BFConfig;->PLATFORM:Lsg/gumi/util/BFConfig$Platform;

    sget-object v1, Lsg/gumi/util/BFConfig;->PLATFORM_AMAZON:Lsg/gumi/util/BFConfig$Platform;

    if-ne v0, v1, :cond_0

    const-string v0, "Amazon"

    goto :goto_0

    :cond_0
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    :goto_0
    return-object v0
.end method

.method public static getDeviceModel()Ljava/lang/String;
    .locals 2

    .line 119
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_android"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getDeviceSDKVersion()Ljava/lang/String;
    .locals 2

    .line 124
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getDeviceVersion()Ljava/lang/String;
    .locals 1

    .line 129
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    return-object v0
.end method

.method public static getISOCountryCode()Ljava/lang/String;
    .locals 2

    .line 755
    sget-object v0, Lsg/gumi/bravefrontier/BraveFrontierJNI;->mActivity:Lorg/cocos2dx/lib/Cocos2dxActivity;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    const-string v1, ""

    if-eqz v0, :cond_0

    .line 762
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimCountryIso()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 764
    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 766
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public static getLeaderBoardScore(Ljava/lang/String;)V
    .locals 2

    .line 839
    sget-object v0, Lsg/gumi/bravefrontier/BraveFrontierJNI;->mActivity:Lorg/cocos2dx/lib/Cocos2dxActivity;

    instance-of v1, v0, Lsg/gumi/bravefrontier/BraveFrontier;

    if-eqz v1, :cond_0

    .line 840
    check-cast v0, Lsg/gumi/bravefrontier/BraveFrontier;

    invoke-virtual {v0}, Lsg/gumi/bravefrontier/BaseGameActivity;->getGameService()Lsg/gumi/bravefrontier/GameService;

    move-result-object v0

    invoke-virtual {v0, p0}, Lsg/gumi/bravefrontier/GameService;->getLeaderBoardScore(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static getNameFromAccount()Ljava/lang/String;
    .locals 3

    .line 580
    sget-object v0, Lsg/gumi/bravefrontier/BraveFrontierJNI;->mActivity:Lorg/cocos2dx/lib/Cocos2dxActivity;

    const-string v1, "auth"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "name"

    const-string v2, ""

    .line 581
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getNetworkState()I
    .locals 2

    .line 955
    sget-object v0, Lsg/gumi/bravefrontier/BraveFrontierJNI;->mActivity:Lorg/cocos2dx/lib/Cocos2dxActivity;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    const/4 v1, 0x1

    .line 956
    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v0

    .line 958
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static getNowUnixTimeForMulti()J
    .locals 2

    .line 104
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public static getPasswordFromAccount()Ljava/lang/String;
    .locals 3

    .line 588
    sget-object v0, Lsg/gumi/bravefrontier/BraveFrontierJNI;->mActivity:Lorg/cocos2dx/lib/Cocos2dxActivity;

    const-string v1, "auth"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "password"

    const-string v2, ""

    .line 589
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSecondsFromDate(Ljava/lang/String;)I
    .locals 5

    .line 806
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 808
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    .line 810
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy MMM dd, HH:mm  z"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 813
    :try_start_0
    invoke-virtual {v1, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 816
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p0, 0x0

    .line 819
    :goto_0
    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    sub-long/2addr v1, v3

    long-to-int p0, v1

    .line 820
    div-int/lit16 p0, p0, 0x3e8

    return p0
.end method

.method public static getSharedPrefString(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 594
    sget-object v0, Lsg/gumi/bravefrontier/BraveFrontierJNI;->mActivity:Lorg/cocos2dx/lib/Cocos2dxActivity;

    const-string v1, "gamedata"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, ""

    .line 595
    invoke-interface {v0, p0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getUnzipStatus()I
    .locals 1

    .line 313
    sget v0, Lsg/gumi/bravefrontier/BraveFrontierJNI;->s_UnzipStatus:I

    return v0
.end method

.method public static getWritablePath()Ljava/lang/String;
    .locals 1

    .line 299
    :try_start_0
    sget-object v0, Lsg/gumi/bravefrontier/BraveFrontierJNI;->mActivity:Lorg/cocos2dx/lib/Cocos2dxActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 303
    :catchall_0
    :try_start_1
    invoke-static {}, Lsg/gumi/bravefrontier/BraveFrontier;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-object v0

    :catchall_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public static hasDeepLinkParam()Z
    .locals 1

    .line 940
    sget-object v0, Lsg/gumi/bravefrontier/BraveFrontierJNI;->deepLinkParam:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static initialize(Lorg/cocos2dx/lib/Cocos2dxActivity;)V
    .locals 2

    .line 86
    sput-object p0, Lsg/gumi/bravefrontier/BraveFrontierJNI;->mActivity:Lorg/cocos2dx/lib/Cocos2dxActivity;

    .line 89
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p0

    .line 90
    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "gumiasia"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v0

    const-string v1, "bravefrontier"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 91
    invoke-virtual {p0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lsg/gumi/bravefrontier/BraveFrontierJNI;->deepLinkParam:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    return-void
.end method

.method public static isCanSimultaneousDownload()Z
    .locals 8

    const/4 v0, 0x0

    .line 386
    :try_start_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-ge v1, v2, :cond_0

    return v0

    .line 389
    :cond_0
    sget-object v1, Lsg/gumi/bravefrontier/BraveFrontierJNI;->mActivity:Lorg/cocos2dx/lib/Cocos2dxActivity;

    .line 390
    invoke-virtual {v1}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "connectivity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 392
    sget-object v2, Lsg/gumi/bravefrontier/BraveFrontierJNI;->mActivity:Lorg/cocos2dx/lib/Cocos2dxActivity;

    .line 393
    invoke-virtual {v2}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "phone"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 395
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v3

    .line 398
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x17

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-lt v4, v5, :cond_3

    if-eqz v1, :cond_6

    .line 401
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetwork()Landroid/net/Network;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 403
    invoke-virtual {v1, v7}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 405
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_6

    return v7

    .line 410
    :cond_1
    invoke-virtual {v1, v0}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 413
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v1

    if-eq v1, v7, :cond_2

    if-eq v1, v6, :cond_2

    goto :goto_0

    :cond_2
    return v0

    .line 437
    :cond_3
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getType()I

    move-result v3

    if-eqz v3, :cond_5

    if-eq v3, v7, :cond_4

    goto :goto_0

    .line 441
    :cond_4
    invoke-virtual {v1, v7}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v1

    .line 442
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_5

    return v7

    .line 447
    :cond_5
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eq v1, v7, :cond_7

    if-eq v1, v6, :cond_7

    :cond_6
    :goto_0
    return v7

    :catchall_0
    :cond_7
    return v0
.end method

.method public static isWebViewAvailable()Z
    .locals 1

    .line 541
    invoke-static {}, Lsg/gumi/bravefrontier/webview/BFWebView;->isWebViewAvailable()Z

    move-result v0

    return v0
.end method

.method public static isWebViewVisible()Z
    .locals 1

    .line 536
    invoke-static {}, Lsg/gumi/bravefrontier/webview/BFWebView;->isWebViewVisible()Z

    move-result v0

    return v0
.end method

.method public static launchNewApplication(Ljava/lang/String;)Z
    .locals 0

    .line 556
    invoke-static {p0}, Lsg/gumi/bravefrontier/webview/BFWebView;->launchNewApplication(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static launchNewBrowser(Ljava/lang/String;)V
    .locals 0

    .line 551
    invoke-static {p0}, Lsg/gumi/bravefrontier/webview/BFWebView;->launchNewBrowser(Ljava/lang/String;)V

    return-void
.end method

.method public static leaveBreadcrumb(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public static leaveHandledException(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public static native nativeDownloadCallback(J[BLjava/lang/String;)V
.end method

.method public static native nativeRateThisAppPopupCallback(I)V
.end method

.method public static native nativeSetDeviceRegistrationId(Ljava/lang/String;)V
.end method

.method public static native onDeviceShake()V
.end method

.method public static outputLogcat(Ljava/lang/String;)V
    .locals 1

    const-string v0, "barave"

    .line 600
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static native playPhonePurchaseFailCallBack()V
.end method

.method public static native playPhonePurchaseSuccessCallBack(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public static playVideo(Ljava/lang/String;)V
    .locals 2

    .line 497
    sget-object v0, Lsg/gumi/bravefrontier/BraveFrontierJNI;->mActivity:Lorg/cocos2dx/lib/Cocos2dxActivity;

    new-instance v1, Lsg/gumi/bravefrontier/BraveFrontierJNI$5;

    invoke-direct {v1, p0}, Lsg/gumi/bravefrontier/BraveFrontierJNI$5;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static playVideoWithOption(Ljava/lang/String;Z)V
    .locals 2

    .line 511
    sget-object v0, Lsg/gumi/bravefrontier/BraveFrontierJNI;->mActivity:Lorg/cocos2dx/lib/Cocos2dxActivity;

    new-instance v1, Lsg/gumi/bravefrontier/BraveFrontierJNI$6;

    invoke-direct {v1, p0, p1}, Lsg/gumi/bravefrontier/BraveFrontierJNI$6;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static playYoutubeVideo(Ljava/lang/String;)V
    .locals 3

    .line 779
    sget-object v0, Lsg/gumi/util/BFConfig;->PLATFORM:Lsg/gumi/util/BFConfig$Platform;

    sget-object v1, Lsg/gumi/util/BFConfig;->PLATFORM_AMAZON:Lsg/gumi/util/BFConfig$Platform;

    if-ne v0, v1, :cond_0

    .line 780
    invoke-static {p0}, Lsg/gumi/bravefrontier/webview/BFWebView;->playYoutubeVideo(Ljava/lang/String;)V

    goto :goto_0

    .line 783
    :cond_0
    sget-object v0, Lsg/gumi/bravefrontier/BraveFrontierJNI;->mActivity:Lorg/cocos2dx/lib/Cocos2dxActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 785
    sget-object v1, Lsg/gumi/bravefrontier/BraveFrontierJNI;->mActivity:Lorg/cocos2dx/lib/Cocos2dxActivity;

    new-instance v2, Lsg/gumi/bravefrontier/BraveFrontierJNI$8;

    invoke-direct {v2, p0, v0}, Lsg/gumi/bravefrontier/BraveFrontierJNI$8;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method public static native purchaseStateChangedAdmobCallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
.end method

.method public static native purchaseStateChangedCYPayCallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
.end method

.method public static native purchaseStateChangedCallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method private static replaceGooglePlayStoreName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "Google Play Store"

    .line 613
    invoke-virtual {p0, v0, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "Google Play"

    .line 614
    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "Google"

    .line 615
    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static saveToAccount(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 570
    sget-object v0, Lsg/gumi/bravefrontier/BraveFrontierJNI;->mActivity:Lorg/cocos2dx/lib/Cocos2dxActivity;

    const-string v1, "auth"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 571
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "name"

    .line 572
    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string p0, "password"

    .line 573
    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 574
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public static sendAdSdkActionResult(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public static native setMultiInvateSchemeData(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public static setSharedPrefString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 605
    sget-object v0, Lsg/gumi/bravefrontier/BraveFrontierJNI;->mActivity:Lorg/cocos2dx/lib/Cocos2dxActivity;

    const-string v1, "gamedata"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 606
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 607
    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 608
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public static setWebViewVisible(Z)V
    .locals 0

    .line 531
    invoke-static {p0}, Lsg/gumi/bravefrontier/webview/BFWebView;->setWebViewVisible(Z)V

    return-void
.end method

.method public static showPlayPhoneButton(Z)V
    .locals 2

    .line 827
    sget-object v0, Lsg/gumi/bravefrontier/BraveFrontierJNI;->mActivity:Lorg/cocos2dx/lib/Cocos2dxActivity;

    instance-of v1, v0, Lsg/gumi/bravefrontier/BraveFrontier;

    if-eqz v1, :cond_0

    .line 828
    check-cast v0, Lsg/gumi/bravefrontier/BraveFrontier;

    invoke-virtual {v0}, Lsg/gumi/bravefrontier/BaseGameActivity;->getGameService()Lsg/gumi/bravefrontier/GameService;

    move-result-object v0

    invoke-virtual {v0, p0}, Lsg/gumi/bravefrontier/GameService;->showPlayPhoneButton(Z)V

    :cond_0
    return-void
.end method

.method private static showRateThisAppPopup(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 621
    sget-object v0, Lsg/gumi/bravefrontier/BraveFrontierJNI;->mActivity:Lorg/cocos2dx/lib/Cocos2dxActivity;

    new-instance v1, Lsg/gumi/bravefrontier/BraveFrontierJNI$7;

    invoke-direct {v1, p1, p0, p2, p3}, Lsg/gumi/bravefrontier/BraveFrontierJNI$7;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static showWebView(Ljava/lang/String;FFFF)V
    .locals 0

    .line 526
    invoke-static {p0, p1, p2, p3, p4}, Lsg/gumi/bravefrontier/webview/BFWebView;->showWebView(Ljava/lang/String;FFFF)V

    return-void
.end method

.method public static submitLeaderBoardScore(Ljava/lang/String;I)V
    .locals 2

    .line 833
    sget-object v0, Lsg/gumi/bravefrontier/BraveFrontierJNI;->mActivity:Lorg/cocos2dx/lib/Cocos2dxActivity;

    instance-of v1, v0, Lsg/gumi/bravefrontier/BraveFrontier;

    if-eqz v1, :cond_0

    .line 834
    check-cast v0, Lsg/gumi/bravefrontier/BraveFrontier;

    invoke-virtual {v0}, Lsg/gumi/bravefrontier/BaseGameActivity;->getGameService()Lsg/gumi/bravefrontier/GameService;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lsg/gumi/bravefrontier/GameService;->submitLeaderBoardScore(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public static unpackNoDLCRes()V
    .locals 2

    const/4 v0, 0x1

    .line 317
    sput v0, Lsg/gumi/bravefrontier/BraveFrontierJNI;->s_UnzipStatus:I

    .line 318
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lsg/gumi/bravefrontier/BraveFrontierJNI$4;

    invoke-direct {v1}, Lsg/gumi/bravefrontier/BraveFrontierJNI$4;-><init>()V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 374
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public static native videoFinishedCallback()V
.end method

.method public static native videoPreparedCallback()V
.end method

.method public static native videoSkippedCallback()V
.end method
