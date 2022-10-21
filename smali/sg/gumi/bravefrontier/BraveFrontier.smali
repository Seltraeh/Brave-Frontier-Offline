.class public Lsg/gumi/bravefrontier/BraveFrontier;
.super Lsg/gumi/bravefrontier/BaseGameActivity;
.source "BraveFrontier.java"


# static fields
.field public static final FIVEROCKS_APP_KEY:Ljava/lang/String; = "UqfUMS53gACQAACCHQAABgEC4ueo1H0hmTfztQ3Byo7QZsTHevDXgt9Tjf0y"

.field public static final FLURRY_ID:Ljava/lang/String; = "989N9DD6NYP8GZTJ53K2"

.field private static act:Lsg/gumi/bravefrontier/BraveFrontier; = null

.field private static context:Landroid/content/Context; = null

.field private static deviceAdvertisingID:Ljava/lang/String; = ""

.field private static facebook:Lsg/gumi/bravefrontier/Facebook; = null

.field public static fiverocksInitialized:Z = false

.field public static isInitialized:Z = false

.field private static phoneStateListener:Landroid/telephony/PhoneStateListener;


# instance fields
.field private m_LastStoredEffectsVolume:F

.field private m_LastStoredMusicVolume:F

.field private m_isFromStateIdle:Z

.field public savedInstanceState:Landroid/os/Bundle;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 145
    :try_start_0
    invoke-static {}, Lcom/tapjoy/Tapjoy;->loadSharedLibrary()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :try_start_1
    const-string v0, "game"

    .line 151
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 152
    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxHelper;->checkNativeSetApkPathMethod()V

    const/4 v0, 0x1

    .line 153
    invoke-static {v0}, Lorg/cocos2dx/lib/Cocos2dxHelper;->setNativeLibraryLoaded(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    const/4 v0, 0x0

    .line 155
    invoke-static {v0}, Lorg/cocos2dx/lib/Cocos2dxHelper;->setNativeLibraryLoaded(Z)V

    :goto_0
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 114
    invoke-direct {p0}, Lsg/gumi/bravefrontier/BaseGameActivity;-><init>()V

    const/4 v0, 0x0

    .line 119
    iput-object v0, p0, Lsg/gumi/bravefrontier/BraveFrontier;->savedInstanceState:Landroid/os/Bundle;

    const/4 v0, 0x1

    .line 135
    iput-boolean v0, p0, Lsg/gumi/bravefrontier/BraveFrontier;->m_isFromStateIdle:Z

    const/4 v0, 0x0

    .line 136
    iput v0, p0, Lsg/gumi/bravefrontier/BraveFrontier;->m_LastStoredMusicVolume:F

    .line 137
    iput v0, p0, Lsg/gumi/bravefrontier/BraveFrontier;->m_LastStoredEffectsVolume:F

    return-void
.end method

.method public static GPGSSignIn()V
    .locals 2

    const-string v0, "BraveFrontier"

    const-string v1, "Start Sign In"

    .line 861
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 862
    sget-object v0, Lsg/gumi/bravefrontier/BraveFrontier;->act:Lsg/gumi/bravefrontier/BraveFrontier;

    invoke-virtual {v0}, Lsg/gumi/bravefrontier/BaseGameActivity;->getGameService()Lsg/gumi/bravefrontier/GameService;

    move-result-object v0

    invoke-virtual {v0}, Lsg/gumi/bravefrontier/GameService;->getSignInCancellations()I

    move-result v0

    if-gtz v0, :cond_0

    .line 863
    sget-object v0, Lsg/gumi/bravefrontier/BraveFrontier;->act:Lsg/gumi/bravefrontier/BraveFrontier;

    new-instance v1, Lsg/gumi/bravefrontier/BraveFrontier$6;

    invoke-direct {v1}, Lsg/gumi/bravefrontier/BraveFrontier$6;-><init>()V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public static GPGSSignOut()V
    .locals 1

    .line 872
    sget-object v0, Lsg/gumi/bravefrontier/BraveFrontier;->act:Lsg/gumi/bravefrontier/BraveFrontier;

    invoke-virtual {v0}, Lsg/gumi/bravefrontier/BaseGameActivity;->signOut()V

    return-void
.end method

.method static synthetic access$002(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 114
    sput-object p0, Lsg/gumi/bravefrontier/BraveFrontier;->deviceAdvertisingID:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100(Lsg/gumi/bravefrontier/BraveFrontier;)Z
    .locals 0

    .line 114
    iget-boolean p0, p0, Lsg/gumi/bravefrontier/BraveFrontier;->m_isFromStateIdle:Z

    return p0
.end method

.method static synthetic access$102(Lsg/gumi/bravefrontier/BraveFrontier;Z)Z
    .locals 0

    .line 114
    iput-boolean p1, p0, Lsg/gumi/bravefrontier/BraveFrontier;->m_isFromStateIdle:Z

    return p1
.end method

.method static synthetic access$200(Lsg/gumi/bravefrontier/BraveFrontier;)F
    .locals 0

    .line 114
    iget p0, p0, Lsg/gumi/bravefrontier/BraveFrontier;->m_LastStoredMusicVolume:F

    return p0
.end method

.method static synthetic access$202(Lsg/gumi/bravefrontier/BraveFrontier;F)F
    .locals 0

    .line 114
    iput p1, p0, Lsg/gumi/bravefrontier/BraveFrontier;->m_LastStoredMusicVolume:F

    return p1
.end method

.method static synthetic access$300(Lsg/gumi/bravefrontier/BraveFrontier;)F
    .locals 0

    .line 114
    iget p0, p0, Lsg/gumi/bravefrontier/BraveFrontier;->m_LastStoredEffectsVolume:F

    return p0
.end method

.method static synthetic access$302(Lsg/gumi/bravefrontier/BraveFrontier;F)F
    .locals 0

    .line 114
    iput p1, p0, Lsg/gumi/bravefrontier/BraveFrontier;->m_LastStoredEffectsVolume:F

    return p1
.end method

.method static synthetic access$400()Lsg/gumi/bravefrontier/BraveFrontier;
    .locals 1

    .line 114
    sget-object v0, Lsg/gumi/bravefrontier/BraveFrontier;->act:Lsg/gumi/bravefrontier/BraveFrontier;

    return-object v0
.end method

.method public static appsflyerStartTracking()V
    .locals 2

    .line 967
    invoke-static {}, Lcom/appsflyer/AppsFlyerLib;->getInstance()Lcom/appsflyer/AppsFlyerLib;

    move-result-object v0

    sget-object v1, Lsg/gumi/bravefrontier/BraveFrontier;->act:Lsg/gumi/bravefrontier/BraveFrontier;

    invoke-virtual {v0, v1}, Lcom/appsflyer/AppsFlyerLib;->start(Landroid/content/Context;)V

    return-void
.end method

.method private checkLoadedLibraries()V
    .locals 3

    .line 436
    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxHelper;->isNativeLibraryLoaded()Z

    move-result v0

    if-nez v0, :cond_0

    .line 437
    new-instance v0, Lsg/gumi/bravefrontier/BraveFrontier$4;

    invoke-direct {v0, p0}, Lsg/gumi/bravefrontier/BraveFrontier$4;-><init>(Lsg/gumi/bravefrontier/BraveFrontier;)V

    .line 450
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v2, "Install Error"

    .line 451
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const-string v2, "Install failed because there isn\'t enough free space on device internal (non-SD Card) memory. Free up some space and reinstall again."

    .line 452
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const-string v2, "Exit"

    .line 453
    invoke-virtual {v1, v2, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const-string v2, "Free Space"

    .line 454
    invoke-virtual {v1, v2, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 455
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    :cond_0
    return-void
.end method

.method public static crashlyticsCustomLog(Ljava/lang/String;)V
    .locals 1

    .line 927
    invoke-static {}, Lcom/google/firebase/crashlytics/FirebaseCrashlytics;->getInstance()Lcom/google/firebase/crashlytics/FirebaseCrashlytics;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/firebase/crashlytics/FirebaseCrashlytics;->log(Ljava/lang/String;)V

    return-void
.end method

.method public static crashlyticsForceCrash()V
    .locals 2

    .line 931
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Testing crashlytics force crashing..."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static crashlyticsSetUserIdentifier(Ljava/lang/String;)V
    .locals 1

    .line 919
    invoke-static {}, Lcom/google/firebase/crashlytics/FirebaseCrashlytics;->getInstance()Lcom/google/firebase/crashlytics/FirebaseCrashlytics;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/firebase/crashlytics/FirebaseCrashlytics;->setUserId(Ljava/lang/String;)V

    return-void
.end method

.method public static crashlyticsSetUserName(Ljava/lang/String;)V
    .locals 2

    .line 923
    invoke-static {}, Lcom/google/firebase/crashlytics/FirebaseCrashlytics;->getInstance()Lcom/google/firebase/crashlytics/FirebaseCrashlytics;

    move-result-object v0

    const-string v1, "UserName"

    invoke-virtual {v0, v1, p0}, Lcom/google/firebase/crashlytics/FirebaseCrashlytics;->setCustomKey(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static getActivity()Lsg/gumi/bravefrontier/BraveFrontier;
    .locals 1

    .line 478
    sget-object v0, Lsg/gumi/bravefrontier/BraveFrontier;->act:Lsg/gumi/bravefrontier/BraveFrontier;

    return-object v0
.end method

.method public static getAmazonUserId()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public static getAndroidId()Ljava/lang/String;
    .locals 2

    .line 946
    sget-object v0, Lsg/gumi/bravefrontier/BraveFrontier;->act:Lsg/gumi/bravefrontier/BraveFrontier;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "android_id"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getAppContext()Landroid/content/Context;
    .locals 1

    .line 474
    sget-object v0, Lsg/gumi/bravefrontier/BraveFrontier;->context:Landroid/content/Context;

    return-object v0
.end method

.method public static getAppName()Ljava/lang/String;
    .locals 2

    .line 660
    :try_start_0
    sget-object v0, Lsg/gumi/bravefrontier/BraveFrontier;->act:Lsg/gumi/bravefrontier/BraveFrontier;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d001d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 662
    invoke-virtual {v0}, Landroid/content/res/Resources$NotFoundException;->printStackTrace()V

    const-string v0, "Brave Frontier"

    return-object v0
.end method

.method public static getBuildNo()Ljava/lang/String;
    .locals 2

    .line 651
    :try_start_0
    sget-object v0, Lsg/gumi/bravefrontier/BraveFrontier;->act:Lsg/gumi/bravefrontier/BraveFrontier;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d001f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 653
    invoke-virtual {v0}, Landroid/content/res/Resources$NotFoundException;->printStackTrace()V

    const-string v0, ""

    return-object v0
.end method

.method public static getBundleName()Ljava/lang/String;
    .locals 1

    .line 644
    sget-object v0, Lsg/gumi/bravefrontier/BraveFrontier;->act:Lsg/gumi/bravefrontier/BraveFrontier;

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getBundleVersion()Ljava/lang/String;
    .locals 3

    .line 671
    :try_start_0
    sget-object v0, Lsg/gumi/bravefrontier/BraveFrontier;->act:Lsg/gumi/bravefrontier/BraveFrontier;

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    sget-object v1, Lsg/gumi/bravefrontier/BraveFrontier;->act:Lsg/gumi/bravefrontier/BraveFrontier;

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 673
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    const/4 v0, 0x0

    .line 675
    :goto_0
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    return-object v0
.end method

.method public static getDeviceAdvertisingID()Ljava/lang/String;
    .locals 1

    .line 914
    sget-object v0, Lsg/gumi/bravefrontier/BraveFrontier;->deviceAdvertisingID:Ljava/lang/String;

    return-object v0
.end method

.method public static getDeviceArchitecture()Ljava/lang/String;
    .locals 1

    const-string v0, "os.arch"

    .line 962
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getDeviceModel()Ljava/lang/String;
    .locals 1

    .line 701
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    return-object v0
.end method

.method public static getDeviceUUID()Ljava/lang/String;
    .locals 8

    .line 706
    sget-object v0, Lsg/gumi/bravefrontier/BraveFrontier;->act:Lsg/gumi/bravefrontier/BraveFrontier;

    invoke-virtual {v0}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 710
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const-string v2, ""

    const/16 v3, 0x1a

    if-lt v1, v3, :cond_0

    .line 714
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getImei()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 715
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getMeid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 717
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    move-object v1, v3

    goto :goto_0

    .line 721
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 724
    :cond_1
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimSerialNumber()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 725
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lsg/gumi/bravefrontier/BraveFrontier;->act:Lsg/gumi/bravefrontier/BraveFrontier;

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "android_id"

    invoke-static {v2, v4}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 726
    new-instance v3, Ljava/util/UUID;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    int-to-long v4, v2

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    int-to-long v1, v1

    const/16 v6, 0x20

    shl-long/2addr v1, v6

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    int-to-long v6, v0

    or-long/2addr v1, v6

    invoke-direct {v3, v4, v5, v1, v2}, Ljava/util/UUID;-><init>(JJ)V

    .line 727
    invoke-virtual {v3}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getExternalStorageSpace()J
    .locals 5

    .line 680
    new-instance v0, Landroid/os/StatFs;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 683
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x12

    if-lt v1, v2, :cond_0

    .line 686
    invoke-virtual {v0}, Landroid/os/StatFs;->getAvailableBlocksLong()J

    move-result-wide v1

    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockSizeLong()J

    move-result-wide v3

    :goto_0
    mul-long v1, v1, v3

    return-wide v1

    .line 690
    :cond_0
    invoke-virtual {v0}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockSize()I

    move-result v0

    int-to-long v3, v0

    goto :goto_0
.end method

.method public static getLegacyDeviceUUID()Ljava/lang/String;
    .locals 4

    const-string v0, ""

    :try_start_0
    const-string v1, "DEVUUID"

    .line 734
    invoke-static {}, Lsg/gumi/bravefrontier/BraveFrontier;->getAppContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 735
    invoke-interface {v2, v1, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 736
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 738
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    .line 739
    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v3

    .line 741
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 742
    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 743
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 745
    :cond_0
    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 747
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string v0, " "

    return-object v0
.end method

.method public static getOSVersion()Ljava/lang/String;
    .locals 1

    .line 754
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    return-object v0
.end method

.method public static getPermissions()[Ljava/lang/String;
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "android.permission.READ_PHONE_STATE"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "android.permission.INTERNET"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "android.permission.ACCESS_WIFI_STATE"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "android.permission.ACCESS_NETWORK_STATE"

    aput-object v2, v0, v1

    return-object v0
.end method

.method public static goToAppSettings()V
    .locals 4

    .line 424
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "android.settings.APPLICATION_DETAILS_SETTINGS"

    .line 425
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 426
    sget-object v1, Lsg/gumi/bravefrontier/BraveFrontier;->act:Lsg/gumi/bravefrontier/BraveFrontier;

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "package"

    const/4 v3, 0x0

    invoke-static {v2, v1, v3}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 427
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 431
    invoke-static {}, Lsg/gumi/bravefrontier/BraveFrontier;->getActivity()Lsg/gumi/bravefrontier/BraveFrontier;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static googleAnalyticsSendScreenView(Ljava/lang/String;)V
    .locals 1

    .line 781
    sget-object v0, Lsg/gumi/bravefrontier/BraveFrontier;->act:Lsg/gumi/bravefrontier/BraveFrontier;

    invoke-virtual {v0}, Lsg/gumi/bravefrontier/BaseGameActivity;->getGameService()Lsg/gumi/bravefrontier/GameService;

    move-result-object v0

    invoke-virtual {v0, p0}, Lsg/gumi/bravefrontier/GameService;->googleAnalyticsSendScreenView(Ljava/lang/String;)V

    return-void
.end method

.method public static googleAnalyticsSetUserID(Ljava/lang/String;)V
    .locals 1

    .line 776
    sget-object v0, Lsg/gumi/bravefrontier/BraveFrontier;->act:Lsg/gumi/bravefrontier/BraveFrontier;

    invoke-virtual {v0}, Lsg/gumi/bravefrontier/BaseGameActivity;->getGameService()Lsg/gumi/bravefrontier/GameService;

    move-result-object v0

    invoke-virtual {v0, p0}, Lsg/gumi/bravefrontier/GameService;->googleAnalyticsSetUserID(Ljava/lang/String;)V

    return-void
.end method

.method public static googleAnalyticsTrackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 7

    .line 786
    sget-object v0, Lsg/gumi/bravefrontier/BraveFrontier;->act:Lsg/gumi/bravefrontier/BraveFrontier;

    invoke-virtual {v0}, Lsg/gumi/bravefrontier/BaseGameActivity;->getGameService()Lsg/gumi/bravefrontier/GameService;

    move-result-object v1

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-wide v5, p3

    invoke-virtual/range {v1 .. v6}, Lsg/gumi/bravefrontier/GameService;->googleAnalyticsTrackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method public static googleAnalyticsTrackPurchase(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DJLjava/lang/String;)V
    .locals 11

    .line 792
    sget-object v0, Lsg/gumi/bravefrontier/BraveFrontier;->act:Lsg/gumi/bravefrontier/BraveFrontier;

    invoke-virtual {v0}, Lsg/gumi/bravefrontier/BaseGameActivity;->getGameService()Lsg/gumi/bravefrontier/GameService;

    move-result-object v1

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-wide v6, p4

    move-wide/from16 v8, p6

    move-object/from16 v10, p8

    invoke-virtual/range {v1 .. v10}, Lsg/gumi/bravefrontier/GameService;->googleAnalyticsTrackPurchase(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DJLjava/lang/String;)V

    return-void
.end method

.method public static hasPermissions()Z
    .locals 6

    .line 410
    invoke-static {}, Lsg/gumi/bravefrontier/BraveFrontier;->getPermissions()[Ljava/lang/String;

    move-result-object v0

    .line 412
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_1

    sget-object v1, Lsg/gumi/bravefrontier/BraveFrontier;->context:Landroid/content/Context;

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    .line 413
    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .line 414
    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxActivity;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v4}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_0

    return v2

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public static initializeStore()V
    .locals 2

    .line 461
    sget-object v0, Lsg/gumi/util/BFConfig;->PLATFORM:Lsg/gumi/util/BFConfig$Platform;

    sget-object v1, Lsg/gumi/util/BFConfig;->PLATFORM_GOOGLE:Lsg/gumi/util/BFConfig$Platform;

    if-eq v0, v1, :cond_0

    sget-object v0, Lsg/gumi/util/BFConfig;->PLATFORM:Lsg/gumi/util/BFConfig$Platform;

    sget-object v1, Lsg/gumi/util/BFConfig;->PLATFORM_AMAZON:Lsg/gumi/util/BFConfig$Platform;

    if-ne v0, v1, :cond_1

    .line 462
    :cond_0
    sget-object v0, Lsg/gumi/bravefrontier/BraveFrontier;->act:Lsg/gumi/bravefrontier/BraveFrontier;

    new-instance v1, Lsg/gumi/bravefrontier/BraveFrontier$5;

    invoke-direct {v1}, Lsg/gumi/bravefrontier/BraveFrontier$5;-><init>()V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method public static isBundleExist()Z
    .locals 3

    const/4 v0, 0x0

    .line 628
    :try_start_0
    sget-object v1, Lsg/gumi/bravefrontier/BraveFrontier;->act:Lsg/gumi/bravefrontier/BraveFrontier;

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    sget-object v2, Lsg/gumi/bravefrontier/BraveFrontier;->act:Lsg/gumi/bravefrontier/BraveFrontier;

    invoke-virtual {v2}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    :catch_0
    return v0
.end method

.method public static isFiverocksInitialized()Z
    .locals 1

    .line 758
    sget-boolean v0, Lsg/gumi/bravefrontier/BraveFrontier;->fiverocksInitialized:Z

    return v0
.end method

.method public static isLoadingComplete()Z
    .locals 1

    .line 763
    invoke-static {}, Landroid/os/Debug;->isDebuggerConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public static isSignedInToGPGS()Z
    .locals 1

    .line 876
    sget-object v0, Lsg/gumi/bravefrontier/BraveFrontier;->act:Lsg/gumi/bravefrontier/BraveFrontier;

    invoke-virtual {v0}, Lsg/gumi/bravefrontier/BaseGameActivity;->isSignedIn()Z

    move-result v0

    return v0
.end method

.method public static native onGPGSSignInFailed()V
.end method

.method public static native onGPGSSignInSucceeded()V
.end method

.method public static native onGPGSSignOutSucceeded()V
.end method

.method public static openURL(Ljava/lang/String;)V
    .locals 2

    .line 695
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 696
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 697
    sget-object p0, Lsg/gumi/bravefrontier/BraveFrontier;->act:Lsg/gumi/bravefrontier/BraveFrontier;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static requestPermissions()V
    .locals 3

    .line 387
    invoke-static {}, Lsg/gumi/bravefrontier/BraveFrontier;->hasPermissions()Z

    move-result v0

    if-nez v0, :cond_0

    .line 388
    invoke-static {}, Lsg/gumi/bravefrontier/BraveFrontier;->getActivity()Lsg/gumi/bravefrontier/BraveFrontier;

    move-result-object v0

    invoke-static {}, Lsg/gumi/bravefrontier/BraveFrontier;->getPermissions()[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public static resetGPGSAchievements()V
    .locals 0

    return-void
.end method

.method public static setAppsFlyeruserId(Ljava/lang/String;)V
    .locals 1

    .line 953
    :try_start_0
    invoke-static {}, Lsg/gumi/bravefrontier/AFApplication;->isAppsflyerSDKInitialised()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 954
    invoke-static {}, Lcom/appsflyer/AppsFlyerLib;->getInstance()Lcom/appsflyer/AppsFlyerLib;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/appsflyer/AppsFlyerLib;->setCustomerUserId(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    return-void
.end method

.method public static setRemoteNotificationsEnable(Z)V
    .locals 2

    .line 770
    invoke-static {}, Lsg/gumi/bravefrontier/NotificationService;->getInstance()Lsg/gumi/bravefrontier/NotificationService;

    move-result-object v0

    sget-object v1, Lsg/gumi/bravefrontier/BraveFrontier;->act:Lsg/gumi/bravefrontier/BraveFrontier;

    invoke-virtual {v0, v1, p0}, Lsg/gumi/bravefrontier/NotificationService;->setRemoteNotificationsEnable(Lsg/gumi/bravefrontier/BraveFrontier;Z)V

    return-void
.end method

.method public static shouldShowRequestPermissionRationale()Z
    .locals 5

    .line 394
    invoke-static {}, Lsg/gumi/bravefrontier/BraveFrontier;->getPermissions()[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 397
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_1

    .line 399
    invoke-static {}, Lsg/gumi/bravefrontier/BraveFrontier;->getActivity()Lsg/gumi/bravefrontier/BraveFrontier;

    move-result-object v3

    aget-object v4, v0, v2

    invoke-static {v3, v4}, Landroidx/core/app/ActivityCompat;->shouldShowRequestPermissionRationale(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v1, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return v1
.end method

.method public static showAchievements()V
    .locals 2

    .line 850
    sget-object v0, Lsg/gumi/bravefrontier/BraveFrontier;->act:Lsg/gumi/bravefrontier/BraveFrontier;

    invoke-virtual {v0}, Lsg/gumi/bravefrontier/BaseGameActivity;->getGameService()Lsg/gumi/bravefrontier/GameService;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 852
    invoke-virtual {v0}, Lsg/gumi/bravefrontier/GameService;->isSignedIn()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 853
    invoke-virtual {v0}, Lsg/gumi/bravefrontier/GameService;->showAchievements()V

    goto :goto_0

    .line 855
    :cond_0
    invoke-virtual {v0}, Lsg/gumi/bravefrontier/GameService;->beginUserInitiatedSignIn()V

    :cond_1
    :goto_0
    return-void
.end method

.method public static trackEvent2([B[B)V
    .locals 2

    if-eqz p0, :cond_0

    .line 799
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz p1, :cond_1

    .line 804
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, p1}, Ljava/lang/String;-><init>([B)V

    .line 810
    :cond_1
    :try_start_0
    sget-object p0, Lsg/gumi/bravefrontier/BraveFrontier;->act:Lsg/gumi/bravefrontier/BraveFrontier;

    if-eqz p0, :cond_3

    sget-object p0, Lsg/gumi/bravefrontier/BraveFrontier;->act:Lsg/gumi/bravefrontier/BraveFrontier;

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result p0

    if-nez p0, :cond_3

    if-nez v0, :cond_2

    goto :goto_1

    .line 815
    :cond_2
    invoke-static {}, Lsg/gumi/bravefrontier/AFApplication;->isAppsflyerSDKInitialised()Z

    move-result p0

    if-eqz p0, :cond_3

    .line 816
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    const-string p1, "0"

    .line 817
    invoke-virtual {p0, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 818
    invoke-static {}, Lcom/appsflyer/AppsFlyerLib;->getInstance()Lcom/appsflyer/AppsFlyerLib;

    move-result-object p1

    sget-object v1, Lsg/gumi/bravefrontier/BraveFrontier;->act:Lsg/gumi/bravefrontier/BraveFrontier;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1, v1, v0, p0}, Lcom/appsflyer/AppsFlyerLib;->logEvent(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    nop

    :catchall_0
    :cond_3
    :goto_1
    return-void
.end method

.method public static trackPurchase(FLjava/lang/String;)V
    .locals 4

    .line 826
    :try_start_0
    sget-object v0, Lsg/gumi/bravefrontier/BraveFrontier;->act:Lsg/gumi/bravefrontier/BraveFrontier;

    if-eqz v0, :cond_3

    sget-object v0, Lsg/gumi/bravefrontier/BraveFrontier;->act:Lsg/gumi/bravefrontier/BraveFrontier;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    .line 831
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "USD"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 833
    :cond_1
    sget-object p1, Lsg/gumi/bravefrontier/BraveFrontier;->act:Lsg/gumi/bravefrontier/BraveFrontier;

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "963467556"

    const-string v1, "NxvHCJXllFYQpLK1ywM"

    invoke-static {p0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {p1, v0, v1, v2, v3}, Lcom/google/ads/conversiontracking/AdWordsConversionReporter;->reportWithConversionId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 838
    :cond_2
    invoke-static {}, Lsg/gumi/bravefrontier/AFApplication;->isAppsflyerSDKInitialised()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 839
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    const-string v0, "af_revenue"

    .line 840
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 841
    invoke-static {}, Lcom/appsflyer/AppsFlyerLib;->getInstance()Lcom/appsflyer/AppsFlyerLib;

    move-result-object p0

    sget-object v0, Lsg/gumi/bravefrontier/BraveFrontier;->act:Lsg/gumi/bravefrontier/BraveFrontier;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "af_purchase"

    invoke-virtual {p0, v0, v1, p1}, Lcom/appsflyer/AppsFlyerLib;->logEvent(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    nop

    :catchall_0
    :cond_3
    :goto_0
    return-void
.end method

.method public static unlockGPGSAchievement(Ljava/lang/String;)V
    .locals 1

    .line 884
    sget-object v0, Lsg/gumi/bravefrontier/BraveFrontier;->act:Lsg/gumi/bravefrontier/BraveFrontier;

    invoke-virtual {v0}, Lsg/gumi/bravefrontier/BaseGameActivity;->getGameService()Lsg/gumi/bravefrontier/GameService;

    move-result-object v0

    invoke-virtual {v0, p0}, Lsg/gumi/bravefrontier/GameService;->unlockAchievement(Ljava/lang/String;)V

    return-void
.end method

.method public static updateGPGSLeaderboard(ILjava/lang/String;)V
    .locals 1

    .line 880
    sget-object v0, Lsg/gumi/bravefrontier/BraveFrontier;->act:Lsg/gumi/bravefrontier/BraveFrontier;

    invoke-virtual {v0}, Lsg/gumi/bravefrontier/BaseGameActivity;->getGameService()Lsg/gumi/bravefrontier/GameService;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lsg/gumi/bravefrontier/GameService;->updateLeaderboard(ILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onAccelerationChanged(FFF)V
    .locals 0

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 4

    const-string v0, "onActivityResult"

    const-string v1, "Recieved activity result"

    .line 561
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_4

    if-eqz p3, :cond_4

    const/16 v1, 0x3e9

    if-ne p1, v1, :cond_3

    .line 564
    sget-object v1, Lsg/gumi/util/BFConfig;->PLATFORM:Lsg/gumi/util/BFConfig$Platform;

    sget-object v2, Lsg/gumi/util/BFConfig;->PLATFORM_AMAZON:Lsg/gumi/util/BFConfig$Platform;

    if-eq v1, v2, :cond_3

    const/4 p1, -0x1

    const/4 v1, 0x0

    const-string v2, "RESPONSE_CODE"

    const-string v3, ""

    if-eq p2, p1, :cond_1

    .line 566
    sget-object p1, Lsg/gumi/util/BFConfig;->PLATFORM:Lsg/gumi/util/BFConfig$Platform;

    sget-object p2, Lsg/gumi/util/BFConfig;->PLATFORM_GOOGLE:Lsg/gumi/util/BFConfig$Platform;

    if-ne p1, p2, :cond_0

    .line 567
    invoke-static {}, Lcom/soomla/store/StoreController;->getInstance()Lcom/soomla/store/StoreController;

    move-result-object p1

    invoke-virtual {p1, v3, v3, v3}, Lcom/soomla/store/StoreController;->onPurchaseStateChange(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 569
    :cond_0
    invoke-virtual {p3, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 570
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "onActivityResult payment attempt fail! Response code: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 573
    :cond_1
    invoke-virtual {p3, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 576
    sget-object p2, Lsg/gumi/util/BFConfig;->PLATFORM:Lsg/gumi/util/BFConfig$Platform;

    sget-object v0, Lsg/gumi/util/BFConfig;->PLATFORM_GOOGLE:Lsg/gumi/util/BFConfig$Platform;

    if-ne p2, v0, :cond_2

    if-lez p1, :cond_2

    .line 580
    invoke-static {}, Lcom/soomla/store/StoreController;->getInstance()Lcom/soomla/store/StoreController;

    move-result-object p1

    invoke-virtual {p1, v3, v3, v3}, Lcom/soomla/store/StoreController;->onPurchaseStateChange(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    const-string p1, "INAPP_PURCHASE_DATA"

    .line 585
    invoke-virtual {p3, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "INAPP_DATA_SIGNATURE"

    .line 586
    invoke-virtual {p3, p2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x0

    .line 591
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "productId"

    .line 592
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 594
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 597
    :goto_0
    sget-object v0, Lsg/gumi/util/BFConfig;->PLATFORM:Lsg/gumi/util/BFConfig$Platform;

    sget-object v1, Lsg/gumi/util/BFConfig;->PLATFORM_GOOGLE:Lsg/gumi/util/BFConfig$Platform;

    if-ne v0, v1, :cond_5

    .line 598
    invoke-static {}, Lcom/soomla/store/StoreController;->getInstance()Lcom/soomla/store/StoreController;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/soomla/store/StoreController;->onPurchaseStateChange(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 601
    :cond_3
    invoke-super {p0, p1, p2, p3}, Lsg/gumi/bravefrontier/BaseGameActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 602
    invoke-static {p1, p2, p3}, Lsg/gumi/bravefrontier/Facebook;->callbackmanagerOnActivityResult(IILandroid/content/Intent;)Z

    goto :goto_1

    .line 607
    :cond_4
    :try_start_1
    invoke-super {p0, p1, p2, p3}, Lsg/gumi/bravefrontier/BaseGameActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 608
    invoke-static {p1, p2, p3}, Lsg/gumi/bravefrontier/Facebook;->callbackmanagerOnActivityResult(IILandroid/content/Intent;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    :cond_5
    :goto_1
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .line 554
    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxHelper;->isNativeLibraryLoaded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 555
    invoke-static {}, Lsg/gumi/bravefrontier/BraveFrontierJNI;->backButtonCallback()V

    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 161
    invoke-super {p0, p1}, Lsg/gumi/bravefrontier/BaseGameActivity;->onCreate(Landroid/os/Bundle;)V

    .line 165
    invoke-static {}, Lcom/google/firebase/crashlytics/FirebaseCrashlytics;->getInstance()Lcom/google/firebase/crashlytics/FirebaseCrashlytics;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/firebase/crashlytics/FirebaseCrashlytics;->setCrashlyticsCollectionEnabled(Z)V

    .line 167
    invoke-direct {p0}, Lsg/gumi/bravefrontier/BraveFrontier;->checkLoadedLibraries()V

    .line 169
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lsg/gumi/bravefrontier/BraveFrontier;->context:Landroid/content/Context;

    .line 170
    sput-object p0, Lsg/gumi/bravefrontier/BraveFrontier;->act:Lsg/gumi/bravefrontier/BraveFrontier;

    .line 171
    iput-object p1, p0, Lsg/gumi/bravefrontier/BraveFrontier;->savedInstanceState:Landroid/os/Bundle;

    .line 173
    sget-object p1, Lsg/gumi/util/BFConfig;->PLATFORM:Lsg/gumi/util/BFConfig$Platform;

    sget-object v0, Lsg/gumi/util/BFConfig;->PLATFORM_GOOGLE:Lsg/gumi/util/BFConfig$Platform;

    if-ne p1, v0, :cond_0

    .line 176
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "963467556"

    const-string v2, "n0JXCNWzn1gQpLK1ywM"

    const-string v3, "0.00"

    invoke-static {p1, v0, v2, v3, v1}, Lcom/google/ads/conversiontracking/AdWordsConversionReporter;->reportWithConversionId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    nop

    .line 185
    :cond_0
    :goto_0
    new-instance p1, Ljava/lang/Thread;

    new-instance v0, Lsg/gumi/bravefrontier/BraveFrontier$1;

    invoke-direct {v0, p0}, Lsg/gumi/bravefrontier/BraveFrontier$1;-><init>(Lsg/gumi/bravefrontier/BraveFrontier;)V

    invoke-direct {p1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 195
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 198
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object p1

    instance-of p1, p1, Lsg/gumi/util/BFUncaughtExceptionHandler;

    if-nez p1, :cond_1

    .line 199
    new-instance p1, Lsg/gumi/util/BFUncaughtExceptionHandler;

    invoke-direct {p1}, Lsg/gumi/util/BFUncaughtExceptionHandler;-><init>()V

    invoke-static {p1}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 203
    :cond_1
    invoke-static {}, Lsg/gumi/bravefrontier/AFApplication;->isAppsflyerSDKInitialised()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 205
    sget-object p1, Lsg/gumi/bravefrontier/BraveFrontier;->act:Lsg/gumi/bravefrontier/BraveFrontier;

    if-eqz p1, :cond_2

    .line 207
    new-instance p1, Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Custom_Event_Arch_"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lsg/gumi/bravefrontier/BraveFrontier;->getDeviceArchitecture()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 208
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 209
    invoke-static {}, Lsg/gumi/bravefrontier/BraveFrontier;->getDeviceArchitecture()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    invoke-static {}, Lcom/appsflyer/AppsFlyerLib;->getInstance()Lcom/appsflyer/AppsFlyerLib;

    move-result-object v2

    sget-object v3, Lsg/gumi/bravefrontier/BraveFrontier;->act:Lsg/gumi/bravefrontier/BraveFrontier;

    invoke-virtual {v3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3, p1, v0}, Lcom/appsflyer/AppsFlyerLib;->logEvent(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    .line 215
    :cond_2
    sget-boolean p1, Lsg/gumi/bravefrontier/BraveFrontier;->fiverocksInitialized:Z

    if-nez p1, :cond_3

    .line 217
    :try_start_1
    new-instance p1, Ljava/util/Hashtable;

    invoke-direct {p1}, Ljava/util/Hashtable;-><init>()V

    const-string v0, "TJC_OPTION_ENABLE_LOGGING"

    const-string v2, "false"

    .line 223
    invoke-virtual {p1, v0, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "UqfUMS53gACQAACCHQAABgEC4ueo1H0hmTfztQ3Byo7QZsTHevDXgt9Tjf0y"

    .line 226
    new-instance v2, Lsg/gumi/bravefrontier/BraveFrontier$2;

    invoke-direct {v2, p0}, Lsg/gumi/bravefrontier/BraveFrontier$2;-><init>(Lsg/gumi/bravefrontier/BraveFrontier;)V

    invoke-static {p0, v0, p1, v2}, Lcom/tapjoy/Tapjoy;->connect(Landroid/content/Context;Ljava/lang/String;Ljava/util/Hashtable;Lcom/tapjoy/TJConnectListener;)Z

    .line 246
    invoke-static {}, Lsg/gumi/bravefrontier/BraveFrontier;->getBundleVersion()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/tapjoy/Tapjoy;->setAppDataVersion(Ljava/lang/String;)V

    const-string p1, "821991734423"

    .line 247
    invoke-static {p1}, Lcom/tapjoy/Tapjoy;->setGcmSender(Ljava/lang/String;)V

    .line 248
    invoke-virtual {p0}, Lorg/cocos2dx/lib/Cocos2dxActivity;->getGLView()Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;

    move-result-object p1

    invoke-static {p1}, Lcom/tapjoy/Tapjoy;->setGLSurfaceView(Landroid/opengl/GLSurfaceView;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    const/4 p1, 0x0

    .line 250
    sput-boolean p1, Lsg/gumi/bravefrontier/BraveFrontier;->fiverocksInitialized:Z

    goto :goto_1

    :cond_3
    const-string p1, "TAPJOY_DEBUG"

    const-string v0, "tapjoy is already initliaized"

    .line 254
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    :goto_1
    :try_start_2
    sget-object p1, Lsg/gumi/util/BFConfig;->PLATFORM:Lsg/gumi/util/BFConfig$Platform;

    sget-object v0, Lsg/gumi/util/BFConfig;->PLATFORM_GOOGLE:Lsg/gumi/util/BFConfig$Platform;

    if-ne p1, v0, :cond_4

    .line 259
    invoke-virtual {p0}, Lsg/gumi/bravefrontier/BaseGameActivity;->getGameService()Lsg/gumi/bravefrontier/GameService;

    move-result-object p1

    invoke-virtual {p1, p0}, Lsg/gumi/bravefrontier/GameService;->initGoogleAnalytics(Landroid/app/Activity;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_2

    :catchall_2
    nop

    :cond_4
    :goto_2
    const/4 p1, 0x3

    .line 265
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setVolumeControlStream(I)V

    const-string v0, "Brave Frontier"

    const-string v2, "Creating app"

    .line 267
    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    sget-boolean v0, Lsg/gumi/bravefrontier/BraveFrontier;->isInitialized:Z

    if-eqz v0, :cond_5

    .line 270
    invoke-static {}, Lsg/gumi/bravefrontier/video/BFVideoView;->clearInstance()V

    .line 273
    :cond_5
    invoke-static {}, Lsg/gumi/bravefrontier/NotificationService;->getInstance()Lsg/gumi/bravefrontier/NotificationService;

    move-result-object v0

    invoke-virtual {v0, p0}, Lsg/gumi/bravefrontier/NotificationService;->onCreate(Lsg/gumi/bravefrontier/BraveFrontier;)V

    .line 275
    invoke-static {p0}, Lsg/gumi/bravefrontier/BraveFrontierJNI;->initialize(Lorg/cocos2dx/lib/Cocos2dxActivity;)V

    .line 277
    invoke-static {p0}, Lsg/gumi/bravefrontier/webview/BFWebView;->initialize(Lorg/cocos2dx/lib/Cocos2dxActivity;)V

    .line 279
    invoke-static {p0}, Lsg/gumi/bravefrontier/video/BFVideoView;->getInstance(Lorg/cocos2dx/lib/Cocos2dxActivity;)Lsg/gumi/bravefrontier/video/BFVideoView;

    .line 282
    sget-object v0, Lsg/gumi/util/BFConfig;->PLATFORM:Lsg/gumi/util/BFConfig$Platform;

    sget-object v2, Lsg/gumi/util/BFConfig;->PLATFORM_AMAZON:Lsg/gumi/util/BFConfig$Platform;

    if-ne v0, v2, :cond_6

    goto :goto_3

    .line 287
    :cond_6
    sget-object v0, Lsg/gumi/util/BFConfig;->PLATFORM:Lsg/gumi/util/BFConfig$Platform;

    sget-object v0, Lsg/gumi/util/BFConfig;->PLATFORM_SAMSUNG:Lsg/gumi/util/BFConfig$Platform;

    .line 293
    :goto_3
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 296
    new-instance p1, Lsg/gumi/bravefrontier/Facebook;

    sget-object v0, Lsg/gumi/bravefrontier/BraveFrontier;->act:Lsg/gumi/bravefrontier/BraveFrontier;

    invoke-direct {p1, v0}, Lsg/gumi/bravefrontier/Facebook;-><init>(Lsg/gumi/bravefrontier/BraveFrontier;)V

    sput-object p1, Lsg/gumi/bravefrontier/BraveFrontier;->facebook:Lsg/gumi/bravefrontier/Facebook;

    .line 298
    sput-boolean v1, Lsg/gumi/bravefrontier/BraveFrontier;->isInitialized:Z

    .line 310
    new-instance p1, Lsg/gumi/bravefrontier/BraveFrontier$3;

    invoke-direct {p1, p0}, Lsg/gumi/bravefrontier/BraveFrontier$3;-><init>(Lsg/gumi/bravefrontier/BraveFrontier;)V

    sput-object p1, Lsg/gumi/bravefrontier/BraveFrontier;->phoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 349
    sget-object p1, Lsg/gumi/bravefrontier/BraveFrontier;->act:Lsg/gumi/bravefrontier/BraveFrontier;

    invoke-virtual {p1}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/TelephonyManager;

    if-eqz p1, :cond_7

    .line 351
    sget-object v0, Lsg/gumi/bravefrontier/BraveFrontier;->phoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v1, 0x20

    invoke-virtual {p1, v0, v1}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 355
    :cond_7
    invoke-static {}, Lsg/gumi/bravefrontier/RVHandler;->getInstance()Lsg/gumi/bravefrontier/RVHandler;

    invoke-static {}, Lsg/gumi/bravefrontier/RVHandler;->initialiseHandler()V

    .line 356
    invoke-virtual {p0}, Lsg/gumi/bravefrontier/BaseGameActivity;->hideSystemUI()V

    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .line 549
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0

    .line 621
    iget-object p1, p0, Lsg/gumi/bravefrontier/BraveFrontier;->savedInstanceState:Landroid/os/Bundle;

    invoke-super {p0, p1}, Lsg/gumi/bravefrontier/BaseGameActivity;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onPause()V
    .locals 1

    .line 484
    invoke-super {p0}, Lsg/gumi/bravefrontier/BaseGameActivity;->onPause()V

    .line 485
    invoke-static {}, Lsg/gumi/bravefrontier/video/BFVideoView;->isInstance()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 486
    invoke-static {p0}, Lsg/gumi/bravefrontier/video/BFVideoView;->getInstance(Lorg/cocos2dx/lib/Cocos2dxActivity;)Lsg/gumi/bravefrontier/video/BFVideoView;

    move-result-object v0

    invoke-virtual {v0}, Lsg/gumi/bravefrontier/video/BFVideoView;->onPause()V

    .line 488
    :cond_0
    invoke-static {p0}, Lsg/gumi/util/AppSession;->onPause(Lsg/gumi/bravefrontier/BraveFrontier;)V

    .line 489
    sget-object v0, Lsg/gumi/util/BFConfig;->PLATFORM:Lsg/gumi/util/BFConfig$Platform;

    sget-object v0, Lsg/gumi/util/BFConfig;->PLATFORM_AMAZON:Lsg/gumi/util/BFConfig$Platform;

    .line 494
    invoke-static {}, Lsg/gumi/bravefrontier/RVHandler;->getInstance()Lsg/gumi/bravefrontier/RVHandler;

    invoke-static {}, Lsg/gumi/bravefrontier/RVHandler;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 500
    invoke-super {p0}, Lsg/gumi/bravefrontier/BaseGameActivity;->onResume()V

    .line 502
    invoke-virtual {p0}, Lsg/gumi/bravefrontier/BaseGameActivity;->hideSystemUI()V

    .line 504
    invoke-static {}, Lsg/gumi/bravefrontier/video/BFVideoView;->isInstance()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 505
    invoke-static {p0}, Lsg/gumi/bravefrontier/video/BFVideoView;->getInstance(Lorg/cocos2dx/lib/Cocos2dxActivity;)Lsg/gumi/bravefrontier/video/BFVideoView;

    move-result-object v0

    invoke-virtual {v0}, Lsg/gumi/bravefrontier/video/BFVideoView;->onResume()V

    :cond_0
    const/4 v0, 0x0

    .line 508
    invoke-static {p0, v0}, Lsg/gumi/util/AppSession;->onResume(Lsg/gumi/bravefrontier/BraveFrontier;Ljava/lang/Object;)V

    .line 509
    sget-object v0, Lsg/gumi/util/BFConfig;->PLATFORM:Lsg/gumi/util/BFConfig$Platform;

    sget-object v0, Lsg/gumi/util/BFConfig;->PLATFORM_AMAZON:Lsg/gumi/util/BFConfig$Platform;

    .line 514
    invoke-static {}, Lsg/gumi/bravefrontier/RVHandler;->getInstance()Lsg/gumi/bravefrontier/RVHandler;

    invoke-static {}, Lsg/gumi/bravefrontier/RVHandler;->onResume()V

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onShake(F)V
    .locals 1

    .line 904
    invoke-static {}, Lsg/gumi/bravefrontier/BraveFrontierJNI;->onDeviceShake()V

    const-string p1, "BraveFrontier"

    const-string v0, "Shoke"

    .line 907
    invoke-static {p1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected onStart()V
    .locals 3

    .line 520
    invoke-super {p0}, Lsg/gumi/bravefrontier/BaseGameActivity;->onStart()V

    .line 522
    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxHelper;->isNativeLibraryLoaded()Z

    move-result v0

    if-nez v0, :cond_0

    .line 523
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 524
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DEVICE_FAIL"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 526
    :cond_0
    sget-boolean v0, Lsg/gumi/bravefrontier/BraveFrontier;->fiverocksInitialized:Z

    if-eqz v0, :cond_1

    .line 527
    invoke-static {}, Lcom/tapjoy/Tapjoy;->startSession()V

    .line 528
    invoke-static {p0}, Lcom/tapjoy/Tapjoy;->onActivityStart(Landroid/app/Activity;)V

    :cond_1
    return-void
.end method

.method protected onStop()V
    .locals 1

    .line 535
    invoke-super {p0}, Lsg/gumi/bravefrontier/BaseGameActivity;->onStop()V

    .line 537
    sget-boolean v0, Lsg/gumi/bravefrontier/BraveFrontier;->fiverocksInitialized:Z

    if-eqz v0, :cond_0

    .line 538
    invoke-static {}, Lcom/tapjoy/Tapjoy;->endSession()V

    .line 539
    invoke-static {p0}, Lcom/tapjoy/Tapjoy;->onActivityStop(Landroid/app/Activity;)V

    :cond_0
    return-void
.end method
