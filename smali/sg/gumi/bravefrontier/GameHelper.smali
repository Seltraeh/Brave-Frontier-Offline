.class public final Lsg/gumi/bravefrontier/GameHelper;
.super Lsg/gumi/bravefrontier/GameService;
.source "GameHelper.java"

# interfaces
.implements Lsg/gumi/bravefrontier/GameService$GameHelperListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsg/gumi/bravefrontier/GameHelper$GameHelperTask;,
        Lsg/gumi/bravefrontier/GameHelper$GooglePlaySignInFailureReason;
    }
.end annotation


# static fields
.field static final DEFAULT_MAX_SIGN_IN_ATTEMPTS:I = 0x3

.field private static final FALLBACK_STRINGS:[Ljava/lang/String;

.field public static final GOOGLE_PLAY_ACHIEVEMENT_KEY:Ljava/lang/String; = "ACH"

.field public static final GOOGLE_PLAY_ACHIEVEMENT_REQUEST_CODE:I = 0x1389

.field public static final GOOGLE_PLAY_LEADERBOARD_KEY:Ljava/lang/String; = "LBD"

.field public static final GOOGLE_PLAY_LEADERBOARD_REQUEST_CODE:I = 0x138a

.field public static final GOOGLE_PLAY_PREF:Ljava/lang/String; = "GOOGLE_PLAY"

.field private static final PLAY_SERVICES_RESOLUTION_REQUEST:I = 0x2328

.field private static RC_ACHIEVEMENT_UI:I = 0x2711

.field static final RC_RESOLVE:I = 0x2329

.field private static RC_SIGN_IN:I = 0x2710

.field static final RC_UNUSED:I = 0x232a

.field private static final RES_IDS:[I

.field public static final R_APP_MISCONFIGURED:I = 0x2

.field public static final R_LICENSE_FAILED:I = 0x3

.field public static final R_SIGN_IN_FAILED:I = 0x1

.field public static final R_UNKNOWN_ERROR:I


# instance fields
.field private final GAMEHELPER_SHARED_PREFS:Ljava/lang/String;

.field private final KEY_SIGN_IN_CANCELLATIONS:Ljava/lang/String;

.field mAppContext:Landroid/content/Context;

.field mAppStateApiOptions:Lcom/google/android/gms/common/api/Api$ApiOptions$NoOptions;

.field mConnectOnStart:Z

.field private mConnecting:Z

.field mConnectionResult:Lcom/google/android/gms/common/ConnectionResult;

.field mDebugLog:Z

.field mDebugTag:Ljava/lang/String;

.field mDisconnectedFromAchievementUI:Z

.field mExpectingResolution:Z

.field mGoogleSignInClient:Lcom/google/android/gms/auth/api/signin/GoogleSignInClient;

.field mHandler:Landroid/os/Handler;

.field mInvitation:Lcom/google/android/gms/games/multiplayer/Invitation;

.field mListener:Lsg/gumi/bravefrontier/GameService$GameHelperListener;

.field mMaxAutoSignInAttempts:I

.field mPendingTask:Lsg/gumi/bravefrontier/GameHelper$GameHelperTask;

.field mRequestedClients:I

.field private mSetupDone:Z

.field mShowErrorDialogs:Z

.field mSignInCancelled:Z

.field mSignInFailureReason:Lsg/gumi/bravefrontier/GameService$SignInFailureReason;

.field mTurnBasedMatch:Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;

.field mUserInitiatedSignIn:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x4

    new-array v1, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "*Unknown error."

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "*Failed to sign in. Please check your network connection and try again."

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "*The application is incorrectly configured. Check that the package name and signing certificate match the client ID created in Developer Console. Also, if the application is not yet published, check that the account you are trying to sign in with is listed as a tester account. See logs for more information."

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "*License check failed."

    aput-object v3, v1, v2

    .line 927
    sput-object v1, Lsg/gumi/bravefrontier/GameHelper;->FALLBACK_STRINGS:[Ljava/lang/String;

    new-array v0, v0, [I

    .line 934
    fill-array-data v0, :array_0

    sput-object v0, Lsg/gumi/bravefrontier/GameHelper;->RES_IDS:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x7f0d0094
        0x7f0d0093
        0x7f0d0091
        0x7f0d0092
    .end array-data
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 4

    .line 178
    invoke-direct {p0, p1}, Lsg/gumi/bravefrontier/GameService;-><init>(Landroid/app/Activity;)V

    const/4 v0, 0x0

    .line 76
    iput-boolean v0, p0, Lsg/gumi/bravefrontier/GameHelper;->mSetupDone:Z

    .line 79
    iput-boolean v0, p0, Lsg/gumi/bravefrontier/GameHelper;->mConnecting:Z

    .line 82
    iput-boolean v0, p0, Lsg/gumi/bravefrontier/GameHelper;->mExpectingResolution:Z

    .line 86
    iput-boolean v0, p0, Lsg/gumi/bravefrontier/GameHelper;->mSignInCancelled:Z

    const/4 v1, 0x0

    .line 89
    iput-object v1, p0, Lsg/gumi/bravefrontier/GameHelper;->mAppContext:Landroid/content/Context;

    .line 104
    iput-object v1, p0, Lsg/gumi/bravefrontier/GameHelper;->mAppStateApiOptions:Lcom/google/android/gms/common/api/Api$ApiOptions$NoOptions;

    .line 108
    iput-object v1, p0, Lsg/gumi/bravefrontier/GameHelper;->mGoogleSignInClient:Lcom/google/android/gms/auth/api/signin/GoogleSignInClient;

    .line 111
    iput v0, p0, Lsg/gumi/bravefrontier/GameHelper;->mRequestedClients:I

    .line 116
    iput-boolean v0, p0, Lsg/gumi/bravefrontier/GameHelper;->mConnectOnStart:Z

    .line 124
    iput-boolean v0, p0, Lsg/gumi/bravefrontier/GameHelper;->mUserInitiatedSignIn:Z

    .line 127
    iput-object v1, p0, Lsg/gumi/bravefrontier/GameHelper;->mConnectionResult:Lcom/google/android/gms/common/ConnectionResult;

    .line 130
    iput-object v1, p0, Lsg/gumi/bravefrontier/GameHelper;->mSignInFailureReason:Lsg/gumi/bravefrontier/GameService$SignInFailureReason;

    const/4 v2, 0x1

    .line 133
    iput-boolean v2, p0, Lsg/gumi/bravefrontier/GameHelper;->mShowErrorDialogs:Z

    .line 136
    iput-boolean v0, p0, Lsg/gumi/bravefrontier/GameHelper;->mDebugLog:Z

    const-string v3, "GameHelper"

    .line 137
    iput-object v3, p0, Lsg/gumi/bravefrontier/GameHelper;->mDebugTag:Ljava/lang/String;

    .line 154
    iput-object v1, p0, Lsg/gumi/bravefrontier/GameHelper;->mListener:Lsg/gumi/bravefrontier/GameService$GameHelperListener;

    .line 157
    iput-object v1, p0, Lsg/gumi/bravefrontier/GameHelper;->mPendingTask:Lsg/gumi/bravefrontier/GameHelper$GameHelperTask;

    const/4 v1, 0x3

    .line 163
    iput v1, p0, Lsg/gumi/bravefrontier/GameHelper;->mMaxAutoSignInAttempts:I

    .line 165
    iput-boolean v0, p0, Lsg/gumi/bravefrontier/GameHelper;->mDisconnectedFromAchievementUI:Z

    const-string v1, "GAMEHELPER_SHARED_PREFS"

    .line 568
    iput-object v1, p0, Lsg/gumi/bravefrontier/GameHelper;->GAMEHELPER_SHARED_PREFS:Ljava/lang/String;

    const-string v1, "KEY_SIGN_IN_CANCELLATIONS"

    .line 569
    iput-object v1, p0, Lsg/gumi/bravefrontier/GameHelper;->KEY_SIGN_IN_CANCELLATIONS:Ljava/lang/String;

    .line 180
    :try_start_0
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lsg/gumi/bravefrontier/GameHelper;->mAppContext:Landroid/content/Context;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 183
    :catchall_0
    iput v2, p0, Lsg/gumi/bravefrontier/GameHelper;->mRequestedClients:I

    .line 184
    iput-boolean v0, p0, Lsg/gumi/bravefrontier/GameHelper;->mDisconnectedFromAchievementUI:Z

    .line 185
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lsg/gumi/bravefrontier/GameHelper;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000()I
    .locals 1

    .line 63
    sget v0, Lsg/gumi/bravefrontier/GameHelper;->RC_ACHIEVEMENT_UI:I

    return v0
.end method

.method static synthetic access$200(Lsg/gumi/bravefrontier/GameHelper;)V
    .locals 0

    .line 63
    invoke-direct {p0}, Lsg/gumi/bravefrontier/GameHelper;->onSignInSucceededTask()V

    return-void
.end method

.method static synthetic access$300(Lsg/gumi/bravefrontier/GameHelper;)V
    .locals 0

    .line 63
    invoke-direct {p0}, Lsg/gumi/bravefrontier/GameHelper;->onSignInFailedTask()V

    return-void
.end method

.method static synthetic access$400(Lsg/gumi/bravefrontier/GameHelper;)V
    .locals 0

    .line 63
    invoke-direct {p0}, Lsg/gumi/bravefrontier/GameHelper;->onSignOutSucceededTask()V

    return-void
.end method

.method static synthetic access$500(Lsg/gumi/bravefrontier/GameHelper;)V
    .locals 0

    .line 63
    invoke-direct {p0}, Lsg/gumi/bravefrontier/GameHelper;->endTask()V

    return-void
.end method

.method static activityResponseCodeToString(I)Ljava/lang/String;
    .locals 1

    const/4 v0, -0x1

    if-eq p0, v0, :cond_1

    if-eqz p0, :cond_0

    packed-switch p0, :pswitch_data_0

    .line 785
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_0
    const-string p0, "RESULT_LEFT_ROOM"

    return-object p0

    :pswitch_1
    const-string p0, "RESULT_APP_MISCONFIGURED"

    return-object p0

    :pswitch_2
    const-string p0, "RESULT_LICENSE_FAILED"

    return-object p0

    :pswitch_3
    const-string p0, "SIGN_IN_FAILED"

    return-object p0

    :pswitch_4
    const-string p0, "RESULT_RECONNECT_REQUIRED"

    return-object p0

    :cond_0
    const-string p0, "RESULT_CANCELED"

    return-object p0

    :cond_1
    const-string p0, "RESULT_OK"

    return-object p0

    :pswitch_data_0
    .packed-switch 0x2711
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static byteToString(Ljava/lang/StringBuilder;B)V
    .locals 3

    if-gez p1, :cond_0

    add-int/lit16 p1, p1, 0x100

    .line 921
    :cond_0
    div-int/lit8 v0, p1, 0x10

    .line 922
    rem-int/lit8 p1, p1, 0x10

    add-int/lit8 v1, v0, 0x1

    const-string v2, "0123456789ABCDEF"

    .line 923
    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, p1, 0x1

    .line 924
    invoke-virtual {v2, p1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method private declared-synchronized endTask()V
    .locals 2

    monitor-enter p0

    .line 1089
    :try_start_0
    iget-object v0, p0, Lsg/gumi/bravefrontier/GameHelper;->mPendingTask:Lsg/gumi/bravefrontier/GameHelper$GameHelperTask;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v0, :cond_0

    .line 1091
    :try_start_1
    iget-object v0, p0, Lsg/gumi/bravefrontier/GameHelper;->mPendingTask:Lsg/gumi/bravefrontier/GameHelper$GameHelperTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    const/4 v0, 0x0

    .line 1094
    :try_start_2
    iput-object v0, p0, Lsg/gumi/bravefrontier/GameHelper;->mPendingTask:Lsg/gumi/bravefrontier/GameHelper$GameHelperTask;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1096
    :cond_0
    monitor-exit p0

    return-void

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static errorCodeToString(I)Ljava/lang/String;
    .locals 3

    const-string v0, ")"

    packed-switch p0, :pswitch_data_0

    .line 816
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown error code "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 798
    :pswitch_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LICENSE_CHECK_FAILED("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 792
    :pswitch_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DEVELOPER_ERROR("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 806
    :pswitch_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SERVICE_INVALID("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 794
    :pswitch_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "INTERNAL_ERROR("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 800
    :pswitch_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NETWORK_ERROR("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 802
    :pswitch_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RESOLUTION_REQUIRED("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 796
    :pswitch_6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "INVALID_ACCOUNT("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 812
    :pswitch_7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SIGN_IN_REQUIRED("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 804
    :pswitch_8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SERVICE_DISABLED("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 810
    :pswitch_9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SERVICE_VERSION_UPDATE_REQUIRED("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 808
    :pswitch_a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SERVICE_MISSING("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 814
    :pswitch_b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SUCCESS("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static getAppIdFromResource(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .line 871
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 872
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const-string v1, "app_id"

    const-string v2, "string"

    .line 873
    invoke-virtual {v0, v1, v2, p0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    .line 874
    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 876
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const-string p0, "??? (failed to retrieve APP ID)"

    return-object p0
.end method

.method static getSHA1CertFingerprint(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .line 886
    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_0

    .line 887
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const/high16 v1, 0x8000000

    invoke-virtual {v0, p0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    .line 888
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->signingInfo:Landroid/content/pm/SigningInfo;

    invoke-virtual {p0}, Landroid/content/pm/SigningInfo;->getApkContentsSigners()[Landroid/content/pm/Signature;

    move-result-object p0

    goto :goto_0

    .line 892
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const/16 v1, 0x40

    invoke-virtual {v0, p0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    iget-object p0, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .line 895
    :goto_0
    array-length v0, p0

    if-nez v0, :cond_1

    const-string p0, "ERROR: NO SIGNATURE."

    return-object p0

    .line 897
    :cond_1
    array-length v0, p0

    const/4 v1, 0x1

    if-le v0, v1, :cond_2

    const-string p0, "ERROR: MULTIPLE SIGNATURES"

    return-object p0

    :cond_2
    const-string v0, "SHA1"

    .line 900
    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    const/4 v1, 0x0

    aget-object p0, p0, v1

    invoke-virtual {p0}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p0

    .line 901
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 902
    :goto_1
    array-length v2, p0

    if-ge v1, v2, :cond_4

    if-lez v1, :cond_3

    const-string v2, ":"

    .line 904
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 906
    :cond_3
    aget-byte v2, p0, v1

    invoke-static {v0, v2}, Lsg/gumi/bravefrontier/GameHelper;->byteToString(Ljava/lang/StringBuilder;B)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 908
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 914
    invoke-virtual {p0}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    const-string p0, "(ERROR: SHA1 algorithm not found)"

    return-object p0

    :catch_1
    move-exception p0

    .line 911
    invoke-virtual {p0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    const-string p0, "(ERROR: package not found)"

    return-object p0
.end method

.method static getString(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/String;
    .locals 2

    if-ltz p1, :cond_0

    .line 940
    sget-object v0, Lsg/gumi/bravefrontier/GameHelper;->RES_IDS:[I

    array-length v0, v0

    if-ge p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 941
    :goto_0
    sget-object v0, Lsg/gumi/bravefrontier/GameHelper;->RES_IDS:[I

    aget v0, v0, p1

    .line 943
    :try_start_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 945
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 946
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "*** GameHelper could not found resource id #"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ". This probably happened because you included it as a stand-alone JAR. BaseGameUtils should be compiled as a LIBRARY PROJECT, so that it can access its resources. Using a fallback string."

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 950
    sget-object p0, Lsg/gumi/bravefrontier/GameHelper;->FALLBACK_STRINGS:[Ljava/lang/String;

    aget-object p0, p0, p1

    return-object p0
.end method

.method static makeSimpleDialog(Landroid/app/Activity;Ljava/lang/String;)Landroid/app/Dialog;
    .locals 1

    .line 741
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    const p1, 0x104000a

    const/4 v0, 0x0

    .line 742
    invoke-virtual {p0, p1, v0}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p0

    return-object p0
.end method

.method static makeSimpleDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)Landroid/app/Dialog;
    .locals 1

    .line 747
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    .line 748
    invoke-virtual {p0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    const p1, 0x104000a

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    .line 749
    invoke-virtual {p0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p0

    return-object p0
.end method

.method private onSignInFailedTask()V
    .locals 2

    const-string v0, "BraveFrontier"

    const-string v1, "GPGS Sign in failed"

    .line 1052
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1053
    invoke-virtual {p0}, Lsg/gumi/bravefrontier/GameService;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lsg/gumi/bravefrontier/BraveFrontier;

    invoke-virtual {v0}, Lorg/cocos2dx/lib/Cocos2dxActivity;->getGLView()Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;

    move-result-object v0

    new-instance v1, Lsg/gumi/bravefrontier/GameHelper$4;

    invoke-direct {v1, p0}, Lsg/gumi/bravefrontier/GameHelper$4;-><init>(Lsg/gumi/bravefrontier/GameHelper;)V

    invoke-virtual {v0, v1}, Landroid/opengl/GLSurfaceView;->queueEvent(Ljava/lang/Runnable;)V

    return-void
.end method

.method private onSignInSucceededTask()V
    .locals 2

    const-string v0, "BraveFrontier"

    const-string v1, "GPGS Sign in successful"

    .line 1020
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1021
    invoke-virtual {p0}, Lsg/gumi/bravefrontier/GameService;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lsg/gumi/bravefrontier/BraveFrontier;

    invoke-virtual {v0}, Lorg/cocos2dx/lib/Cocos2dxActivity;->getGLView()Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;

    move-result-object v0

    new-instance v1, Lsg/gumi/bravefrontier/GameHelper$3;

    invoke-direct {v1, p0}, Lsg/gumi/bravefrontier/GameHelper$3;-><init>(Lsg/gumi/bravefrontier/GameHelper;)V

    invoke-virtual {v0, v1}, Landroid/opengl/GLSurfaceView;->queueEvent(Ljava/lang/Runnable;)V

    return-void
.end method

.method private onSignOutSucceededTask()V
    .locals 2

    .line 1069
    invoke-virtual {p0}, Lsg/gumi/bravefrontier/GameService;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lsg/gumi/bravefrontier/BraveFrontier;

    invoke-virtual {v0}, Lorg/cocos2dx/lib/Cocos2dxActivity;->getGLView()Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;

    move-result-object v0

    new-instance v1, Lsg/gumi/bravefrontier/GameHelper$5;

    invoke-direct {v1, p0}, Lsg/gumi/bravefrontier/GameHelper$5;-><init>(Lsg/gumi/bravefrontier/GameHelper;)V

    invoke-virtual {v0, v1}, Landroid/opengl/GLSurfaceView;->queueEvent(Ljava/lang/Runnable;)V

    return-void
.end method

.method static printMisconfiguredDebugInfo(Landroid/content/Context;)V
    .locals 4

    const-string v0, "GameHelper"

    const-string v1, "****"

    .line 839
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 840
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "**** APP NOT CORRECTLY CONFIGURED TO USE GOOGLE PLAY GAME SERVICES"

    .line 841
    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "**** This is usually caused by one of these reasons:"

    .line 842
    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "**** (1) Your package name and certificate fingerprint do not match"

    .line 843
    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "****     the client ID you registered in Developer Console."

    .line 844
    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "**** (2) Your App ID was incorrectly entered."

    .line 845
    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "**** (3) Your game settings have not been published and you are "

    .line 846
    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "****     trying to log in with an account that is not listed as"

    .line 847
    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "****     a test account."

    .line 848
    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 849
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p0, :cond_0

    const-string p0, "*** (no Context, so can\'t print more debug info)"

    .line 851
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string v2, "**** To help you debug, here is the information about this app"

    .line 855
    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 856
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "**** Package name         : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 857
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "**** Cert SHA1 fingerprint: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lsg/gumi/bravefrontier/GameHelper;->getSHA1CertFingerprint(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 858
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "**** App ID from          : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lsg/gumi/bravefrontier/GameHelper;->getAppIdFromResource(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 859
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, "**** Check that the above information matches your setup in "

    .line 860
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, "**** Developer Console. Also, check that you\'re logging in with the"

    .line 861
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, "**** right account (it should be listed in the Testers section if"

    .line 862
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, "**** your project is not yet published)."

    .line 863
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 864
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, "**** For more information, refer to the troubleshooting guide:"

    .line 865
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, "****   http://developers.google.com/games/services/android/troubleshooting"

    .line 866
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static showFailureDialog(Landroid/app/Activity;IILjava/lang/String;)V
    .locals 2

    const-string v0, "GameHelper"

    if-nez p0, :cond_0

    const-string p0, "*** No Activity. Can\'t show failure dialog!"

    .line 697
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 720
    invoke-static {}, Lcom/google/android/gms/common/GoogleApiAvailability;->getInstance()Lcom/google/android/gms/common/GoogleApiAvailability;

    move-result-object p1

    const/16 v1, 0x2328

    .line 721
    invoke-virtual {p1, p0, p2, v1}, Lcom/google/android/gms/common/GoogleApiAvailability;->getErrorDialog(Landroid/app/Activity;II)Landroid/app/Dialog;

    move-result-object p1

    if-nez p1, :cond_1

    const-string p1, "No standard error dialog available. Making fallback dialog."

    .line 725
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 727
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v0, 0x0

    .line 729
    invoke-static {p0, v0, p3}, Lsg/gumi/bravefrontier/GameHelper;->getString(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 733
    invoke-static {p2}, Lsg/gumi/bravefrontier/GameHelper;->errorCodeToString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 727
    invoke-static {p0, p1}, Lsg/gumi/bravefrontier/GameHelper;->makeSimpleDialog(Landroid/app/Activity;Ljava/lang/String;)Landroid/app/Dialog;

    move-result-object p0

    goto :goto_0

    :pswitch_0
    const/4 p1, 0x2

    .line 704
    invoke-static {p0, p1, p3}, Lsg/gumi/bravefrontier/GameHelper;->getString(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lsg/gumi/bravefrontier/GameHelper;->makeSimpleDialog(Landroid/app/Activity;Ljava/lang/String;)Landroid/app/Dialog;

    move-result-object p0

    goto :goto_0

    :pswitch_1
    const/4 p1, 0x3

    .line 712
    invoke-static {p0, p1, p3}, Lsg/gumi/bravefrontier/GameHelper;->getString(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lsg/gumi/bravefrontier/GameHelper;->makeSimpleDialog(Landroid/app/Activity;Ljava/lang/String;)Landroid/app/Dialog;

    move-result-object p0

    goto :goto_0

    :pswitch_2
    const/4 p1, 0x1

    .line 708
    invoke-static {p0, p1, p3}, Lsg/gumi/bravefrontier/GameHelper;->getString(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lsg/gumi/bravefrontier/GameHelper;->makeSimpleDialog(Landroid/app/Activity;Ljava/lang/String;)Landroid/app/Dialog;

    move-result-object p0

    goto :goto_0

    :cond_1
    move-object p0, p1

    .line 737
    :goto_0
    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x2712
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private declared-synchronized startTask(I)V
    .locals 2

    monitor-enter p0

    .line 1081
    :try_start_0
    iget-object v0, p0, Lsg/gumi/bravefrontier/GameHelper;->mPendingTask:Lsg/gumi/bravefrontier/GameHelper$GameHelperTask;

    if-nez v0, :cond_0

    .line 1082
    new-instance v0, Lsg/gumi/bravefrontier/GameHelper$GameHelperTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lsg/gumi/bravefrontier/GameHelper$GameHelperTask;-><init>(Lsg/gumi/bravefrontier/GameHelper;Lsg/gumi/bravefrontier/GameHelper$1;)V

    iput-object v0, p0, Lsg/gumi/bravefrontier/GameHelper;->mPendingTask:Lsg/gumi/bravefrontier/GameHelper$GameHelperTask;

    .line 1083
    iput p1, v0, Lsg/gumi/bravefrontier/GameHelper$GameHelperTask;->mTaskType:I

    .line 1084
    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1086
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method assertConfigured(Ljava/lang/String;)V
    .locals 2

    .line 189
    iget-boolean v0, p0, Lsg/gumi/bravefrontier/GameHelper;->mSetupDone:Z

    if-eqz v0, :cond_0

    return-void

    .line 190
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GameHelper error: Operation attempted without setup: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ". The setup() method must be called before attempting any other operation."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 193
    invoke-virtual {p0, p1}, Lsg/gumi/bravefrontier/GameService;->logError(Ljava/lang/String;)V

    .line 194
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public beginUserInitiatedSignIn()V
    .locals 2

    const-string v0, "beginUserInitiatedSignIn: resetting attempt count."

    .line 497
    invoke-virtual {p0, v0}, Lsg/gumi/bravefrontier/GameService;->debugLog(Ljava/lang/String;)V

    .line 498
    invoke-virtual {p0}, Lsg/gumi/bravefrontier/GameHelper;->resetSignInCancellations()V

    const/4 v0, 0x0

    .line 499
    iput-boolean v0, p0, Lsg/gumi/bravefrontier/GameHelper;->mSignInCancelled:Z

    const/4 v0, 0x1

    .line 500
    iput-boolean v0, p0, Lsg/gumi/bravefrontier/GameHelper;->mConnectOnStart:Z

    .line 502
    invoke-virtual {p0}, Lsg/gumi/bravefrontier/GameHelper;->isSignedIn()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "beginUserInitiatedSignIn() called when already connected. Calling listener directly to notify of success."

    .line 504
    invoke-virtual {p0, v1}, Lsg/gumi/bravefrontier/GameService;->logWarn(Ljava/lang/String;)V

    .line 506
    invoke-virtual {p0, v0}, Lsg/gumi/bravefrontier/GameHelper;->notifyListener(Z)V

    return-void

    :cond_0
    const-string v1, "Starting USER-INITIATED sign-in flow."

    .line 520
    invoke-virtual {p0, v1}, Lsg/gumi/bravefrontier/GameService;->debugLog(Ljava/lang/String;)V

    .line 525
    iput-boolean v0, p0, Lsg/gumi/bravefrontier/GameHelper;->mUserInitiatedSignIn:Z

    .line 527
    iget-object v1, p0, Lsg/gumi/bravefrontier/GameHelper;->mConnectionResult:Lcom/google/android/gms/common/ConnectionResult;

    if-eqz v1, :cond_1

    const-string v1, "beginUserInitiatedSignIn: continuing pending sign-in flow."

    .line 530
    invoke-virtual {p0, v1}, Lsg/gumi/bravefrontier/GameService;->debugLog(Ljava/lang/String;)V

    .line 531
    iput-boolean v0, p0, Lsg/gumi/bravefrontier/GameHelper;->mConnecting:Z

    .line 532
    invoke-virtual {p0}, Lsg/gumi/bravefrontier/GameHelper;->resolveConnectionResult()V

    goto :goto_0

    :cond_1
    const-string v1, "beginUserInitiatedSignIn: starting new sign-in flow."

    .line 535
    invoke-virtual {p0, v1}, Lsg/gumi/bravefrontier/GameService;->debugLog(Ljava/lang/String;)V

    .line 536
    iput-boolean v0, p0, Lsg/gumi/bravefrontier/GameHelper;->mConnecting:Z

    .line 537
    invoke-virtual {p0}, Lsg/gumi/bravefrontier/GameHelper;->connect()V

    :goto_0
    return-void
.end method

.method connect()V
    .locals 3

    .line 542
    invoke-virtual {p0}, Lsg/gumi/bravefrontier/GameHelper;->isSignedIn()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Already connected."

    .line 543
    invoke-virtual {p0, v0}, Lsg/gumi/bravefrontier/GameService;->debugLog(Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v0, "Starting connection."

    .line 546
    invoke-virtual {p0, v0}, Lsg/gumi/bravefrontier/GameService;->debugLog(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 547
    iput-boolean v0, p0, Lsg/gumi/bravefrontier/GameHelper;->mConnecting:Z

    const/4 v0, 0x0

    .line 548
    iput-object v0, p0, Lsg/gumi/bravefrontier/GameHelper;->mInvitation:Lcom/google/android/gms/games/multiplayer/Invitation;

    .line 549
    iput-object v0, p0, Lsg/gumi/bravefrontier/GameHelper;->mTurnBasedMatch:Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;

    .line 552
    iget-object v0, p0, Lsg/gumi/bravefrontier/GameHelper;->mGoogleSignInClient:Lcom/google/android/gms/auth/api/signin/GoogleSignInClient;

    invoke-virtual {v0}, Lcom/google/android/gms/auth/api/signin/GoogleSignInClient;->getSignInIntent()Landroid/content/Intent;

    move-result-object v0

    .line 553
    iget-object v1, p0, Lsg/gumi/bravefrontier/GameService;->mActivity:Landroid/app/Activity;

    sget v2, Lsg/gumi/bravefrontier/GameHelper;->RC_SIGN_IN:I

    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public disconnect()V
    .locals 2

    .line 643
    invoke-virtual {p0}, Lsg/gumi/bravefrontier/GameHelper;->isSignedIn()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Disconnecting client."

    .line 644
    invoke-virtual {p0, v0}, Lsg/gumi/bravefrontier/GameService;->debugLog(Ljava/lang/String;)V

    .line 645
    iget-object v0, p0, Lsg/gumi/bravefrontier/GameHelper;->mGoogleSignInClient:Lcom/google/android/gms/auth/api/signin/GoogleSignInClient;

    invoke-virtual {v0}, Lcom/google/android/gms/auth/api/signin/GoogleSignInClient;->revokeAccess()Lcom/google/android/gms/tasks/Task;

    goto :goto_0

    .line 647
    :cond_0
    iget-object v0, p0, Lsg/gumi/bravefrontier/GameHelper;->mDebugTag:Ljava/lang/String;

    const-string v1, "disconnect() called when client was already disconnected."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public getApiClient()Lcom/google/android/gms/auth/api/signin/GoogleSignInClient;
    .locals 2

    .line 238
    iget-object v0, p0, Lsg/gumi/bravefrontier/GameHelper;->mGoogleSignInClient:Lcom/google/android/gms/auth/api/signin/GoogleSignInClient;

    if-eqz v0, :cond_0

    return-object v0

    .line 239
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No GoogleSignInClient. Did you call setup()?"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getAppStateClient()Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getGameHelperListener()Lsg/gumi/bravefrontier/GameService$GameHelperListener;
    .locals 0

    return-object p0
.end method

.method public getGamesClient()Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getInvitationId()Ljava/lang/String;
    .locals 2

    .line 359
    invoke-virtual {p0}, Lsg/gumi/bravefrontier/GameHelper;->isSignedIn()Z

    move-result v0

    if-nez v0, :cond_0

    .line 360
    iget-object v0, p0, Lsg/gumi/bravefrontier/GameHelper;->mDebugTag:Ljava/lang/String;

    const-string v1, "Warning: getInvitationId() should only be called when signed in, that is, after getting onSignInSuceeded()"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    :cond_0
    iget-object v0, p0, Lsg/gumi/bravefrontier/GameHelper;->mInvitation:Lcom/google/android/gms/games/multiplayer/Invitation;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Lcom/google/android/gms/games/multiplayer/Invitation;->getInvitationId()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getScopes()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getScopesArray()[Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getSignInCancellations()I
    .locals 3

    .line 575
    iget-object v0, p0, Lsg/gumi/bravefrontier/GameHelper;->mAppContext:Landroid/content/Context;

    const-string v1, "GAMEHELPER_SHARED_PREFS"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "KEY_SIGN_IN_CANCELLATIONS"

    .line 577
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getSignInError()Lsg/gumi/bravefrontier/GameService$SignInFailureReason;
    .locals 1

    .line 281
    iget-object v0, p0, Lsg/gumi/bravefrontier/GameHelper;->mSignInFailureReason:Lsg/gumi/bravefrontier/GameService$SignInFailureReason;

    return-object v0
.end method

.method giveUp(Lsg/gumi/bravefrontier/GameService$SignInFailureReason;)V
    .locals 2

    const/4 v0, 0x0

    .line 660
    iput-boolean v0, p0, Lsg/gumi/bravefrontier/GameHelper;->mConnectOnStart:Z

    .line 661
    invoke-virtual {p0}, Lsg/gumi/bravefrontier/GameHelper;->disconnect()V

    .line 662
    iput-object p1, p0, Lsg/gumi/bravefrontier/GameHelper;->mSignInFailureReason:Lsg/gumi/bravefrontier/GameService$SignInFailureReason;

    .line 664
    invoke-virtual {p1}, Lsg/gumi/bravefrontier/GameService$SignInFailureReason;->getActivityResultCode()I

    move-result p1

    const/16 v1, 0x2714

    if-ne p1, v1, :cond_0

    .line 666
    iget-object p1, p0, Lsg/gumi/bravefrontier/GameHelper;->mAppContext:Landroid/content/Context;

    invoke-static {p1}, Lsg/gumi/bravefrontier/GameHelper;->printMisconfiguredDebugInfo(Landroid/content/Context;)V

    .line 669
    :cond_0
    invoke-virtual {p0}, Lsg/gumi/bravefrontier/GameHelper;->showFailureDialog()V

    .line 670
    iput-boolean v0, p0, Lsg/gumi/bravefrontier/GameHelper;->mConnecting:Z

    .line 671
    invoke-virtual {p0, v0}, Lsg/gumi/bravefrontier/GameHelper;->notifyListener(Z)V

    return-void
.end method

.method public hasSignInError()Z
    .locals 1

    .line 273
    iget-object v0, p0, Lsg/gumi/bravefrontier/GameHelper;->mSignInFailureReason:Lsg/gumi/bravefrontier/GameService$SignInFailureReason;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method incrementSignInCancellations()I
    .locals 4

    .line 584
    invoke-virtual {p0}, Lsg/gumi/bravefrontier/GameHelper;->getSignInCancellations()I

    move-result v0

    .line 585
    iget-object v1, p0, Lsg/gumi/bravefrontier/GameHelper;->mAppContext:Landroid/content/Context;

    const-string v2, "GAMEHELPER_SHARED_PREFS"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 586
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    add-int/lit8 v0, v0, 0x1

    const-string v2, "KEY_SIGN_IN_CANCELLATIONS"

    .line 587
    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 588
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return v0
.end method

.method public isSignedIn()Z
    .locals 1

    .line 259
    iget-object v0, p0, Lsg/gumi/bravefrontier/GameHelper;->mAppContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/auth/api/signin/GoogleSignIn;->getLastSignedInAccount(Landroid/content/Context;)Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public makeSimpleDialog(Ljava/lang/String;)Landroid/app/Dialog;
    .locals 1

    .line 753
    iget-object v0, p0, Lsg/gumi/bravefrontier/GameService;->mActivity:Landroid/app/Activity;

    if-nez v0, :cond_0

    const-string p1, "*** makeSimpleDialog failed: no current Activity!"

    .line 754
    invoke-virtual {p0, p1}, Lsg/gumi/bravefrontier/GameService;->logError(Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1

    .line 757
    :cond_0
    invoke-static {v0, p1}, Lsg/gumi/bravefrontier/GameHelper;->makeSimpleDialog(Landroid/app/Activity;Ljava/lang/String;)Landroid/app/Dialog;

    move-result-object p1

    return-object p1
.end method

.method public makeSimpleDialog(Ljava/lang/String;Ljava/lang/String;)Landroid/app/Dialog;
    .locals 1

    .line 761
    iget-object v0, p0, Lsg/gumi/bravefrontier/GameService;->mActivity:Landroid/app/Activity;

    if-nez v0, :cond_0

    const-string p1, "*** makeSimpleDialog failed: no current Activity!"

    .line 762
    invoke-virtual {p0, p1}, Lsg/gumi/bravefrontier/GameService;->logError(Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1

    .line 765
    :cond_0
    invoke-static {v0, p1, p2}, Lsg/gumi/bravefrontier/GameHelper;->makeSimpleDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)Landroid/app/Dialog;

    move-result-object p1

    return-object p1
.end method

.method notifyListener(Z)V
    .locals 2

    .line 477
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Notifying LISTENER of sign-in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_0

    const-string v1, "SUCCESS"

    goto :goto_0

    .line 479
    :cond_0
    iget-object v1, p0, Lsg/gumi/bravefrontier/GameHelper;->mSignInFailureReason:Lsg/gumi/bravefrontier/GameService$SignInFailureReason;

    if-eqz v1, :cond_1

    const-string v1, "FAILURE (error)"

    goto :goto_0

    :cond_1
    const-string v1, "FAILURE (no error)"

    .line 480
    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 477
    invoke-virtual {p0, v0}, Lsg/gumi/bravefrontier/GameService;->debugLog(Ljava/lang/String;)V

    .line 481
    iget-object v0, p0, Lsg/gumi/bravefrontier/GameHelper;->mListener:Lsg/gumi/bravefrontier/GameService$GameHelperListener;

    if-eqz v0, :cond_3

    if-eqz p1, :cond_2

    .line 483
    invoke-interface {v0}, Lsg/gumi/bravefrontier/GameService$GameHelperListener;->onSignInSucceeded()V

    goto :goto_1

    .line 485
    :cond_2
    invoke-interface {v0}, Lsg/gumi/bravefrontier/GameService$GameHelperListener;->onSignInFailed()V

    :cond_3
    :goto_1
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    .line 397
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onActivityResult: req="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x2329

    if-ne p1, v1, :cond_0

    const-string v1, "RC_RESOLVE"

    goto :goto_0

    .line 399
    :cond_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", resp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 400
    invoke-static {p2}, Lsg/gumi/bravefrontier/GameHelper;->activityResponseCodeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 397
    invoke-virtual {p0, v0}, Lsg/gumi/bravefrontier/GameService;->debugLog(Ljava/lang/String;)V

    .line 402
    sget v0, Lsg/gumi/bravefrontier/GameHelper;->RC_SIGN_IN:I

    const/4 v1, -0x1

    if-ne p1, v0, :cond_2

    if-ne p2, v1, :cond_2

    .line 403
    sget-object p1, Lcom/google/android/gms/auth/api/Auth;->GoogleSignInApi:Lcom/google/android/gms/auth/api/signin/GoogleSignInApi;

    invoke-interface {p1, p3}, Lcom/google/android/gms/auth/api/signin/GoogleSignInApi;->getSignInResultFromIntent(Landroid/content/Intent;)Lcom/google/android/gms/auth/api/signin/GoogleSignInResult;

    move-result-object p1

    .line 404
    invoke-virtual {p1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInResult;->isSuccess()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 406
    invoke-virtual {p1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInResult;->getSignInAccount()Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    move-result-object p1

    .line 407
    invoke-virtual {p0}, Lsg/gumi/bravefrontier/GameService;->getActivity()Landroid/app/Activity;

    move-result-object p2

    invoke-static {p2, p1}, Lcom/google/android/gms/games/Games;->getGamesClient(Landroid/app/Activity;Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)Lcom/google/android/gms/games/GamesClient;

    move-result-object p1

    .line 408
    invoke-virtual {p0}, Lsg/gumi/bravefrontier/GameService;->getActivity()Landroid/app/Activity;

    move-result-object p2

    check-cast p2, Lsg/gumi/bravefrontier/BraveFrontier;

    invoke-virtual {p2}, Lorg/cocos2dx/lib/Cocos2dxActivity;->getGLView()Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/android/gms/games/GamesClient;->setViewForPopups(Landroid/view/View;)Lcom/google/android/gms/tasks/Task;

    :cond_1
    return-void

    :cond_2
    const/4 p1, 0x0

    .line 432
    iput-boolean p1, p0, Lsg/gumi/bravefrontier/GameHelper;->mExpectingResolution:Z

    .line 434
    iget-boolean p3, p0, Lsg/gumi/bravefrontier/GameHelper;->mConnecting:Z

    if-nez p3, :cond_3

    const-string p1, "onActivityResult: ignoring because we are not connecting."

    .line 435
    invoke-virtual {p0, p1}, Lsg/gumi/bravefrontier/GameService;->debugLog(Ljava/lang/String;)V

    return-void

    :cond_3
    if-ne p2, v1, :cond_4

    const-string p1, "onAR: Resolution was RESULT_OK, so connecting current client again."

    .line 443
    invoke-virtual {p0, p1}, Lsg/gumi/bravefrontier/GameService;->debugLog(Ljava/lang/String;)V

    .line 444
    invoke-virtual {p0}, Lsg/gumi/bravefrontier/GameHelper;->connect()V

    goto/16 :goto_1

    :cond_4
    const/16 p3, 0x2711

    if-ne p2, p3, :cond_5

    const-string p1, "onAR: Resolution was RECONNECT_REQUIRED, so reconnecting."

    .line 446
    invoke-virtual {p0, p1}, Lsg/gumi/bravefrontier/GameService;->debugLog(Ljava/lang/String;)V

    .line 447
    invoke-virtual {p0}, Lsg/gumi/bravefrontier/GameHelper;->connect()V

    goto :goto_1

    :cond_5
    if-nez p2, :cond_6

    const-string p2, "onAR: Got a cancellation result, so disconnecting."

    .line 450
    invoke-virtual {p0, p2}, Lsg/gumi/bravefrontier/GameService;->debugLog(Ljava/lang/String;)V

    const/4 p2, 0x1

    .line 451
    iput-boolean p2, p0, Lsg/gumi/bravefrontier/GameHelper;->mSignInCancelled:Z

    .line 452
    iput-boolean p1, p0, Lsg/gumi/bravefrontier/GameHelper;->mConnectOnStart:Z

    .line 453
    iput-boolean p1, p0, Lsg/gumi/bravefrontier/GameHelper;->mUserInitiatedSignIn:Z

    const/4 p2, 0x0

    .line 454
    iput-object p2, p0, Lsg/gumi/bravefrontier/GameHelper;->mSignInFailureReason:Lsg/gumi/bravefrontier/GameService$SignInFailureReason;

    .line 455
    iput-boolean p1, p0, Lsg/gumi/bravefrontier/GameHelper;->mConnecting:Z

    .line 456
    invoke-virtual {p0}, Lsg/gumi/bravefrontier/GameHelper;->disconnect()V

    .line 459
    invoke-virtual {p0}, Lsg/gumi/bravefrontier/GameHelper;->getSignInCancellations()I

    move-result p2

    .line 460
    invoke-virtual {p0}, Lsg/gumi/bravefrontier/GameHelper;->incrementSignInCancellations()I

    move-result p3

    .line 461
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onAR: # of cancellations "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " --> "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", max "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lsg/gumi/bravefrontier/GameHelper;->mMaxAutoSignInAttempts:I

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lsg/gumi/bravefrontier/GameService;->debugLog(Ljava/lang/String;)V

    .line 464
    invoke-virtual {p0, p1}, Lsg/gumi/bravefrontier/GameHelper;->notifyListener(Z)V

    goto :goto_1

    .line 468
    :cond_6
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "onAR: responseCode="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 469
    invoke-static {p2}, Lsg/gumi/bravefrontier/GameHelper;->activityResponseCodeToString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ", so giving up."

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 468
    invoke-virtual {p0, p1}, Lsg/gumi/bravefrontier/GameService;->debugLog(Ljava/lang/String;)V

    .line 471
    new-instance p1, Lsg/gumi/bravefrontier/GameService$SignInFailureReason;

    iget-object p3, p0, Lsg/gumi/bravefrontier/GameHelper;->mConnectionResult:Lcom/google/android/gms/common/ConnectionResult;

    if-eqz p3, :cond_7

    invoke-virtual {p3}, Lcom/google/android/gms/common/ConnectionResult;->getErrorCode()I

    move-result v1

    :cond_7
    invoke-direct {p1, v1, p2}, Lsg/gumi/bravefrontier/GameService$SignInFailureReason;-><init>(II)V

    invoke-virtual {p0, p1}, Lsg/gumi/bravefrontier/GameHelper;->giveUp(Lsg/gumi/bravefrontier/GameService$SignInFailureReason;)V

    :goto_1
    return-void
.end method

.method public onPause(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onResume(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onSignInFailed()V
    .locals 1

    const/4 v0, 0x2

    .line 1048
    invoke-direct {p0, v0}, Lsg/gumi/bravefrontier/GameHelper;->startTask(I)V

    return-void
.end method

.method public onSignInSucceeded()V
    .locals 1

    const/4 v0, 0x1

    .line 1016
    invoke-direct {p0, v0}, Lsg/gumi/bravefrontier/GameHelper;->startTask(I)V

    return-void
.end method

.method public onSignOutSucceeded()V
    .locals 1

    const/4 v0, 0x3

    .line 1065
    invoke-direct {p0, v0}, Lsg/gumi/bravefrontier/GameHelper;->startTask(I)V

    return-void
.end method

.method public onStart(Landroid/app/Activity;)V
    .locals 3

    .line 286
    iput-object p1, p0, Lsg/gumi/bravefrontier/GameService;->mActivity:Landroid/app/Activity;

    .line 287
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lsg/gumi/bravefrontier/GameHelper;->mAppContext:Landroid/content/Context;

    const-string p1, "onStart"

    .line 289
    invoke-virtual {p0, p1}, Lsg/gumi/bravefrontier/GameService;->debugLog(Ljava/lang/String;)V

    .line 290
    invoke-virtual {p0, p1}, Lsg/gumi/bravefrontier/GameHelper;->assertConfigured(Ljava/lang/String;)V

    .line 292
    invoke-virtual {p0}, Lsg/gumi/bravefrontier/GameHelper;->isSignedIn()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 293
    invoke-virtual {p0}, Lsg/gumi/bravefrontier/GameHelper;->isSignedIn()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 294
    iget-object p1, p0, Lsg/gumi/bravefrontier/GameHelper;->mDebugTag:Ljava/lang/String;

    const-string v0, "GameHelper: client was already connected on onStart()"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    iget-object p1, p0, Lsg/gumi/bravefrontier/GameHelper;->mAppContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/google/android/gms/auth/api/signin/GoogleSignIn;->getLastSignedInAccount(Landroid/content/Context;)Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    move-result-object p1

    .line 298
    invoke-virtual {p0}, Lsg/gumi/bravefrontier/GameService;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/android/gms/games/Games;->getGamesClient(Landroid/app/Activity;Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)Lcom/google/android/gms/games/GamesClient;

    move-result-object p1

    .line 299
    invoke-virtual {p0}, Lsg/gumi/bravefrontier/GameService;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lsg/gumi/bravefrontier/BraveFrontier;

    invoke-virtual {v0}, Lorg/cocos2dx/lib/Cocos2dxActivity;->getGLView()Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/games/GamesClient;->setViewForPopups(Landroid/view/View;)Lcom/google/android/gms/tasks/Task;

    goto :goto_0

    :cond_0
    const-string p1, "Connecting client."

    .line 302
    invoke-virtual {p0, p1}, Lsg/gumi/bravefrontier/GameService;->debugLog(Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 303
    iput-boolean p1, p0, Lsg/gumi/bravefrontier/GameHelper;->mConnecting:Z

    .line 304
    invoke-virtual {p0}, Lsg/gumi/bravefrontier/GameHelper;->connect()V

    goto :goto_0

    :cond_1
    const-string p1, "Not attempting to connect becase mConnectOnStart=false"

    .line 307
    invoke-virtual {p0, p1}, Lsg/gumi/bravefrontier/GameService;->debugLog(Ljava/lang/String;)V

    const-string p1, "Instead, reporting a sign-in failure."

    .line 308
    invoke-virtual {p0, p1}, Lsg/gumi/bravefrontier/GameService;->debugLog(Ljava/lang/String;)V

    .line 309
    iget-object p1, p0, Lsg/gumi/bravefrontier/GameHelper;->mHandler:Landroid/os/Handler;

    new-instance v0, Lsg/gumi/bravefrontier/GameHelper$2;

    invoke-direct {v0, p0}, Lsg/gumi/bravefrontier/GameHelper$2;-><init>(Lsg/gumi/bravefrontier/GameHelper;)V

    const-wide/16 v1, 0x3e8

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 317
    :goto_0
    iget-object p1, p0, Lsg/gumi/bravefrontier/GameService;->mTracker:Lcom/google/android/gms/analytics/Tracker;

    if-eqz p1, :cond_2

    :try_start_0
    const-string v0, "start"

    .line 319
    invoke-virtual {p1, v0}, Lcom/google/android/gms/analytics/Tracker;->setScreenName(Ljava/lang/String;)V

    .line 320
    iget-object p1, p0, Lsg/gumi/bravefrontier/GameService;->mTracker:Lcom/google/android/gms/analytics/Tracker;

    new-instance v0, Lcom/google/android/gms/analytics/HitBuilders$ScreenViewBuilder;

    invoke-direct {v0}, Lcom/google/android/gms/analytics/HitBuilders$ScreenViewBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/HitBuilders$HitBuilder;->setNewSession()Lcom/google/android/gms/analytics/HitBuilders$HitBuilder;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/analytics/HitBuilders$ScreenViewBuilder;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/HitBuilders$HitBuilder;->build()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/analytics/Tracker;->send(Ljava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_2
    return-void
.end method

.method public onStop(Landroid/app/Activity;)V
    .locals 0

    const-string p1, "onStop"

    .line 328
    invoke-virtual {p0, p1}, Lsg/gumi/bravefrontier/GameService;->debugLog(Ljava/lang/String;)V

    .line 329
    invoke-virtual {p0, p1}, Lsg/gumi/bravefrontier/GameHelper;->assertConfigured(Ljava/lang/String;)V

    .line 330
    invoke-virtual {p0}, Lsg/gumi/bravefrontier/GameHelper;->isSignedIn()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "Disconnecting client due to onStop"

    .line 331
    invoke-virtual {p0, p1}, Lsg/gumi/bravefrontier/GameService;->debugLog(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p1, "Client already disconnected when we got onStop."

    .line 334
    invoke-virtual {p0, p1}, Lsg/gumi/bravefrontier/GameService;->debugLog(Ljava/lang/String;)V

    :goto_0
    const/4 p1, 0x0

    .line 336
    iput-boolean p1, p0, Lsg/gumi/bravefrontier/GameHelper;->mConnecting:Z

    .line 337
    iput-boolean p1, p0, Lsg/gumi/bravefrontier/GameHelper;->mExpectingResolution:Z

    const/4 p1, 0x0

    .line 340
    iput-object p1, p0, Lsg/gumi/bravefrontier/GameService;->mActivity:Landroid/app/Activity;

    return-void
.end method

.method public reconnectClient()V
    .locals 0

    return-void
.end method

.method public reconnectClients(I)V
    .locals 0

    .line 565
    invoke-virtual {p0}, Lsg/gumi/bravefrontier/GameHelper;->reconnectClient()V

    return-void
.end method

.method resetSignInCancellations()V
    .locals 3

    .line 595
    iget-object v0, p0, Lsg/gumi/bravefrontier/GameHelper;->mAppContext:Landroid/content/Context;

    const-string v1, "GAMEHELPER_SHARED_PREFS"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 596
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "KEY_SIGN_IN_CANCELLATIONS"

    .line 597
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 598
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method resolveConnectionResult()V
    .locals 3

    .line 608
    iget-boolean v0, p0, Lsg/gumi/bravefrontier/GameHelper;->mExpectingResolution:Z

    if-eqz v0, :cond_0

    const-string v0, "We\'re already expecting the result of a previous resolution."

    .line 609
    invoke-virtual {p0, v0}, Lsg/gumi/bravefrontier/GameService;->debugLog(Ljava/lang/String;)V

    return-void

    .line 613
    :cond_0
    iget-object v0, p0, Lsg/gumi/bravefrontier/GameService;->mActivity:Landroid/app/Activity;

    if-nez v0, :cond_1

    .line 614
    iget-object v0, p0, Lsg/gumi/bravefrontier/GameHelper;->mDebugTag:Ljava/lang/String;

    const-string v1, "Ignoring attempt to resolve connection result without an active Activity."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 618
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "resolveConnectionResult: trying to resolve result: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lsg/gumi/bravefrontier/GameHelper;->mConnectionResult:Lcom/google/android/gms/common/ConnectionResult;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lsg/gumi/bravefrontier/GameService;->debugLog(Ljava/lang/String;)V

    .line 620
    iget-object v0, p0, Lsg/gumi/bravefrontier/GameHelper;->mConnectionResult:Lcom/google/android/gms/common/ConnectionResult;

    invoke-virtual {v0}, Lcom/google/android/gms/common/ConnectionResult;->hasResolution()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "Result has resolution. Starting it."

    .line 622
    invoke-virtual {p0, v0}, Lsg/gumi/bravefrontier/GameService;->debugLog(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 626
    :try_start_0
    iput-boolean v0, p0, Lsg/gumi/bravefrontier/GameHelper;->mExpectingResolution:Z

    .line 627
    iget-object v0, p0, Lsg/gumi/bravefrontier/GameHelper;->mConnectionResult:Lcom/google/android/gms/common/ConnectionResult;

    iget-object v1, p0, Lsg/gumi/bravefrontier/GameService;->mActivity:Landroid/app/Activity;

    const/16 v2, 0x2329

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/ConnectionResult;->startResolutionForResult(Landroid/app/Activity;I)V
    :try_end_0
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const-string v0, "SendIntentException, so connecting again."

    .line 631
    invoke-virtual {p0, v0}, Lsg/gumi/bravefrontier/GameService;->debugLog(Ljava/lang/String;)V

    .line 632
    invoke-virtual {p0}, Lsg/gumi/bravefrontier/GameHelper;->connect()V

    goto :goto_1

    :cond_2
    const-string v0, "resolveConnectionResult: result has no resolution. Giving up."

    .line 637
    invoke-virtual {p0, v0}, Lsg/gumi/bravefrontier/GameService;->debugLog(Ljava/lang/String;)V

    .line 638
    new-instance v0, Lsg/gumi/bravefrontier/GameService$SignInFailureReason;

    iget-object v1, p0, Lsg/gumi/bravefrontier/GameHelper;->mConnectionResult:Lcom/google/android/gms/common/ConnectionResult;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/google/android/gms/common/ConnectionResult;->getErrorCode()I

    move-result v1

    goto :goto_0

    :cond_3
    const/4 v1, -0x1

    :goto_0
    invoke-direct {v0, v1}, Lsg/gumi/bravefrontier/GameService$SignInFailureReason;-><init>(I)V

    invoke-virtual {p0, v0}, Lsg/gumi/bravefrontier/GameHelper;->giveUp(Lsg/gumi/bravefrontier/GameService$SignInFailureReason;)V

    :goto_1
    return-void
.end method

.method public setGoogleAdvertisingId(Landroid/app/Activity;Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public setup(Lsg/gumi/bravefrontier/GameService$GameHelperListener;)V
    .locals 2

    .line 210
    iget-boolean v0, p0, Lsg/gumi/bravefrontier/GameHelper;->mSetupDone:Z

    if-nez v0, :cond_0

    .line 215
    iput-object p1, p0, Lsg/gumi/bravefrontier/GameHelper;->mListener:Lsg/gumi/bravefrontier/GameService$GameHelperListener;

    .line 216
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Setup: requested clients: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lsg/gumi/bravefrontier/GameHelper;->mRequestedClients:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lsg/gumi/bravefrontier/GameService;->debugLog(Ljava/lang/String;)V

    .line 218
    new-instance p1, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;

    sget-object v0, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->DEFAULT_SIGN_IN:Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;

    invoke-direct {p1, v0}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;-><init>(Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;)V

    sget-object v0, Lcom/google/android/gms/games/Games;->SCOPE_GAMES_LITE:Lcom/google/android/gms/common/api/Scope;

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/google/android/gms/common/api/Scope;

    .line 219
    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;->requestScopes(Lcom/google/android/gms/common/api/Scope;[Lcom/google/android/gms/common/api/Scope;)Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;

    move-result-object p1

    .line 220
    invoke-virtual {p1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;->requestEmail()Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;

    move-result-object p1

    .line 221
    invoke-virtual {p1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;->build()Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;

    move-result-object p1

    .line 223
    iget-object v0, p0, Lsg/gumi/bravefrontier/GameHelper;->mAppContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/google/android/gms/auth/api/signin/GoogleSignIn;->getClient(Landroid/content/Context;Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;)Lcom/google/android/gms/auth/api/signin/GoogleSignInClient;

    move-result-object p1

    iput-object p1, p0, Lsg/gumi/bravefrontier/GameHelper;->mGoogleSignInClient:Lcom/google/android/gms/auth/api/signin/GoogleSignInClient;

    const/4 p1, 0x1

    .line 225
    iput-boolean p1, p0, Lsg/gumi/bravefrontier/GameHelper;->mSetupDone:Z

    return-void

    :cond_0
    const-string p1, "GameHelper: you cannot call GameHelper.setup() more than once!"

    .line 212
    invoke-virtual {p0, p1}, Lsg/gumi/bravefrontier/GameService;->logError(Ljava/lang/String;)V

    .line 213
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public varargs setup(Lsg/gumi/bravefrontier/GameService$GameHelperListener;I[Ljava/lang/String;)V
    .locals 0

    .line 229
    iput p2, p0, Lsg/gumi/bravefrontier/GameHelper;->mRequestedClients:I

    .line 230
    invoke-virtual {p0, p1}, Lsg/gumi/bravefrontier/GameHelper;->setup(Lsg/gumi/bravefrontier/GameService$GameHelperListener;)V

    return-void
.end method

.method public showAchievements()V
    .locals 2

    .line 247
    iget-object v0, p0, Lsg/gumi/bravefrontier/GameService;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lsg/gumi/bravefrontier/GameHelper;->mAppContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/google/android/gms/auth/api/signin/GoogleSignIn;->getLastSignedInAccount(Landroid/content/Context;)Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/games/Games;->getAchievementsClient(Landroid/app/Activity;Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)Lcom/google/android/gms/games/AchievementsClient;

    move-result-object v0

    .line 248
    invoke-virtual {v0}, Lcom/google/android/gms/games/AchievementsClient;->getAchievementsIntent()Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    new-instance v1, Lsg/gumi/bravefrontier/GameHelper$1;

    invoke-direct {v1, p0}, Lsg/gumi/bravefrontier/GameHelper$1;-><init>(Lsg/gumi/bravefrontier/GameHelper;)V

    .line 249
    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/Task;->addOnSuccessListener(Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method

.method public showFailureDialog()V
    .locals 4

    .line 675
    iget-object v0, p0, Lsg/gumi/bravefrontier/GameHelper;->mSignInFailureReason:Lsg/gumi/bravefrontier/GameService$SignInFailureReason;

    if-eqz v0, :cond_1

    .line 676
    invoke-virtual {v0}, Lsg/gumi/bravefrontier/GameService$SignInFailureReason;->getServiceErrorCode()I

    move-result v0

    .line 677
    iget-object v1, p0, Lsg/gumi/bravefrontier/GameHelper;->mSignInFailureReason:Lsg/gumi/bravefrontier/GameService$SignInFailureReason;

    invoke-virtual {v1}, Lsg/gumi/bravefrontier/GameService$SignInFailureReason;->getActivityResultCode()I

    move-result v1

    .line 679
    iget-boolean v2, p0, Lsg/gumi/bravefrontier/GameHelper;->mShowErrorDialogs:Z

    if-eqz v2, :cond_0

    .line 680
    iget-object v2, p0, Lsg/gumi/bravefrontier/GameService;->mActivity:Landroid/app/Activity;

    iget-object v3, p0, Lsg/gumi/bravefrontier/GameHelper;->mDebugTag:Ljava/lang/String;

    invoke-static {v2, v1, v0, v3}, Lsg/gumi/bravefrontier/GameHelper;->showFailureDialog(Landroid/app/Activity;IILjava/lang/String;)V

    goto :goto_0

    .line 682
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Not showing error dialog because mShowErrorDialogs==false. Error was: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lsg/gumi/bravefrontier/GameHelper;->mSignInFailureReason:Lsg/gumi/bravefrontier/GameService$SignInFailureReason;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lsg/gumi/bravefrontier/GameService;->debugLog(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public signOut()V
    .locals 1

    .line 369
    invoke-virtual {p0}, Lsg/gumi/bravefrontier/GameHelper;->isSignedIn()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "signOut: was already disconnected, ignoring."

    .line 371
    invoke-virtual {p0, v0}, Lsg/gumi/bravefrontier/GameService;->debugLog(Ljava/lang/String;)V

    return-void

    .line 375
    :cond_0
    invoke-virtual {p0}, Lsg/gumi/bravefrontier/GameHelper;->signOutWithoutCheck()V

    return-void
.end method

.method public signOutWithoutCheck()V
    .locals 1

    const-string v0, "Disconnecting client."

    .line 380
    invoke-virtual {p0, v0}, Lsg/gumi/bravefrontier/GameService;->debugLog(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 381
    iput-boolean v0, p0, Lsg/gumi/bravefrontier/GameHelper;->mConnectOnStart:Z

    .line 382
    iput-boolean v0, p0, Lsg/gumi/bravefrontier/GameHelper;->mConnecting:Z

    .line 383
    iget-object v0, p0, Lsg/gumi/bravefrontier/GameHelper;->mGoogleSignInClient:Lcom/google/android/gms/auth/api/signin/GoogleSignInClient;

    invoke-virtual {v0}, Lcom/google/android/gms/auth/api/signin/GoogleSignInClient;->signOut()Lcom/google/android/gms/tasks/Task;

    .line 385
    iget-object v0, p0, Lsg/gumi/bravefrontier/GameHelper;->mListener:Lsg/gumi/bravefrontier/GameService$GameHelperListener;

    if-eqz v0, :cond_0

    .line 386
    invoke-interface {v0}, Lsg/gumi/bravefrontier/GameService$GameHelperListener;->onSignOutSucceeded()V

    :cond_0
    return-void
.end method

.method public unlockAchievement(Ljava/lang/String;)V
    .locals 4

    .line 983
    invoke-virtual {p0}, Lsg/gumi/bravefrontier/GameHelper;->isSignedIn()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 986
    :try_start_0
    invoke-virtual {p0}, Lsg/gumi/bravefrontier/GameService;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 987
    invoke-virtual {p0}, Lsg/gumi/bravefrontier/GameService;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "string"

    .line 988
    invoke-virtual {v0, p1, v3, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    .line 989
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 990
    iget-object v0, p0, Lsg/gumi/bravefrontier/GameService;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lsg/gumi/bravefrontier/GameHelper;->mAppContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/google/android/gms/auth/api/signin/GoogleSignIn;->getLastSignedInAccount(Landroid/content/Context;)Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/google/android/gms/games/Games;->getAchievementsClient(Landroid/app/Activity;Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)Lcom/google/android/gms/games/AchievementsClient;

    move-result-object v0

    .line 991
    invoke-virtual {v0, p1}, Lcom/google/android/gms/games/AchievementsClient;->unlock(Ljava/lang/String;)V

    .line 994
    iget-object p1, p0, Lsg/gumi/bravefrontier/GameService;->mActivity:Landroid/app/Activity;

    iget-object v0, p0, Lsg/gumi/bravefrontier/GameHelper;->mAppContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/auth/api/signin/GoogleSignIn;->getLastSignedInAccount(Landroid/content/Context;)Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/android/gms/games/Games;->getAchievementsClient(Landroid/app/Activity;Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)Lcom/google/android/gms/games/AchievementsClient;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/google/android/gms/games/AchievementsClient;->load(Z)Lcom/google/android/gms/tasks/Task;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 996
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 999
    :cond_0
    invoke-static {}, Lsg/gumi/bravefrontier/BraveFrontier;->getAppContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "GOOGLE_PLAY"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1000
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "ACH"

    const-string v3, ""

    .line 1002
    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1004
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    .line 1007
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ","

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1010
    :goto_0
    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1011
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :goto_1
    return-void
.end method

.method public updateLeaderboard(ILjava/lang/String;)V
    .locals 4

    .line 959
    invoke-virtual {p0}, Lsg/gumi/bravefrontier/GameHelper;->isSignedIn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 962
    :try_start_0
    invoke-virtual {p0}, Lsg/gumi/bravefrontier/GameService;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 963
    invoke-virtual {p0}, Lsg/gumi/bravefrontier/GameService;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "string"

    .line 964
    invoke-virtual {v0, p2, v2, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 965
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "GameHelper"

    .line 968
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateLeaderboard id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", leaderboardID: "

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", score: "

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 969
    iget-object p2, p0, Lsg/gumi/bravefrontier/GameService;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lsg/gumi/bravefrontier/GameHelper;->mAppContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/google/android/gms/auth/api/signin/GoogleSignIn;->getLastSignedInAccount(Landroid/content/Context;)Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    move-result-object v1

    invoke-static {p2, v1}, Lcom/google/android/gms/games/Games;->getLeaderboardsClient(Landroid/app/Activity;Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)Lcom/google/android/gms/games/LeaderboardsClient;

    move-result-object p2

    int-to-long v1, p1

    .line 970
    invoke-virtual {p2, v0, v1, v2}, Lcom/google/android/gms/games/LeaderboardsClient;->submitScore(Ljava/lang/String;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 972
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 975
    :cond_0
    invoke-static {}, Lsg/gumi/bravefrontier/BraveFrontier;->getAppContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "GOOGLE_PLAY"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 976
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 977
    invoke-interface {v0, p2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 978
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :goto_0
    return-void
.end method
