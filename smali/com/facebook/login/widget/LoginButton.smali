.class public Lcom/facebook/login/widget/LoginButton;
.super Lcom/facebook/FacebookButtonBase;
.source "LoginButton.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/login/widget/LoginButton$LoginClickListener;,
        Lcom/facebook/login/widget/LoginButton$LoginButtonProperties;,
        Lcom/facebook/login/widget/LoginButton$ToolTipMode;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private accessTokenTracker:Lcom/facebook/AccessTokenTracker;

.field private confirmLogout:Z

.field private loginLogoutEventName:Ljava/lang/String;

.field private loginManager:Lcom/facebook/login/LoginManager;

.field private loginText:Ljava/lang/String;

.field private logoutText:Ljava/lang/String;

.field private properties:Lcom/facebook/login/widget/LoginButton$LoginButtonProperties;

.field private toolTipChecked:Z

.field private toolTipDisplayTime:J

.field private toolTipMode:Lcom/facebook/login/widget/LoginButton$ToolTipMode;

.field private toolTipPopup:Lcom/facebook/login/widget/ToolTipPopup;

.field private toolTipStyle:Lcom/facebook/login/widget/ToolTipPopup$Style;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 113
    const-class v0, Lcom/facebook/login/widget/LoginButton;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/login/widget/LoginButton;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 7

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "fb_login_button_create"

    const-string v6, "fb_login_button_did_tap"

    move-object v0, p0

    move-object v1, p1

    .line 176
    invoke-direct/range {v0 .. v6}, Lcom/facebook/FacebookButtonBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILjava/lang/String;Ljava/lang/String;)V

    .line 117
    new-instance p1, Lcom/facebook/login/widget/LoginButton$LoginButtonProperties;

    invoke-direct {p1}, Lcom/facebook/login/widget/LoginButton$LoginButtonProperties;-><init>()V

    iput-object p1, p0, Lcom/facebook/login/widget/LoginButton;->properties:Lcom/facebook/login/widget/LoginButton$LoginButtonProperties;

    const-string p1, "fb_login_view_usage"

    .line 118
    iput-object p1, p0, Lcom/facebook/login/widget/LoginButton;->loginLogoutEventName:Ljava/lang/String;

    .line 120
    sget-object p1, Lcom/facebook/login/widget/ToolTipPopup$Style;->BLUE:Lcom/facebook/login/widget/ToolTipPopup$Style;

    iput-object p1, p0, Lcom/facebook/login/widget/LoginButton;->toolTipStyle:Lcom/facebook/login/widget/ToolTipPopup$Style;

    const-wide/16 v0, 0x1770

    .line 122
    iput-wide v0, p0, Lcom/facebook/login/widget/LoginButton;->toolTipDisplayTime:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "fb_login_button_create"

    const-string v6, "fb_login_button_did_tap"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .line 191
    invoke-direct/range {v0 .. v6}, Lcom/facebook/FacebookButtonBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILjava/lang/String;Ljava/lang/String;)V

    .line 117
    new-instance p1, Lcom/facebook/login/widget/LoginButton$LoginButtonProperties;

    invoke-direct {p1}, Lcom/facebook/login/widget/LoginButton$LoginButtonProperties;-><init>()V

    iput-object p1, p0, Lcom/facebook/login/widget/LoginButton;->properties:Lcom/facebook/login/widget/LoginButton$LoginButtonProperties;

    const-string p1, "fb_login_view_usage"

    .line 118
    iput-object p1, p0, Lcom/facebook/login/widget/LoginButton;->loginLogoutEventName:Ljava/lang/String;

    .line 120
    sget-object p1, Lcom/facebook/login/widget/ToolTipPopup$Style;->BLUE:Lcom/facebook/login/widget/ToolTipPopup$Style;

    iput-object p1, p0, Lcom/facebook/login/widget/LoginButton;->toolTipStyle:Lcom/facebook/login/widget/ToolTipPopup$Style;

    const-wide/16 p1, 0x1770

    .line 122
    iput-wide p1, p0, Lcom/facebook/login/widget/LoginButton;->toolTipDisplayTime:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 7

    const/4 v4, 0x0

    const-string v5, "fb_login_button_create"

    const-string v6, "fb_login_button_did_tap"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    .line 206
    invoke-direct/range {v0 .. v6}, Lcom/facebook/FacebookButtonBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILjava/lang/String;Ljava/lang/String;)V

    .line 117
    new-instance p1, Lcom/facebook/login/widget/LoginButton$LoginButtonProperties;

    invoke-direct {p1}, Lcom/facebook/login/widget/LoginButton$LoginButtonProperties;-><init>()V

    iput-object p1, p0, Lcom/facebook/login/widget/LoginButton;->properties:Lcom/facebook/login/widget/LoginButton$LoginButtonProperties;

    const-string p1, "fb_login_view_usage"

    .line 118
    iput-object p1, p0, Lcom/facebook/login/widget/LoginButton;->loginLogoutEventName:Ljava/lang/String;

    .line 120
    sget-object p1, Lcom/facebook/login/widget/ToolTipPopup$Style;->BLUE:Lcom/facebook/login/widget/ToolTipPopup$Style;

    iput-object p1, p0, Lcom/facebook/login/widget/LoginButton;->toolTipStyle:Lcom/facebook/login/widget/ToolTipPopup$Style;

    const-wide/16 p1, 0x1770

    .line 122
    iput-wide p1, p0, Lcom/facebook/login/widget/LoginButton;->toolTipDisplayTime:J

    return-void
.end method

.method static synthetic access$000(Lcom/facebook/login/widget/LoginButton;Lcom/facebook/internal/FetchedAppSettings;)V
    .locals 0

    .line 63
    invoke-direct {p0, p1}, Lcom/facebook/login/widget/LoginButton;->showToolTipPerSettings(Lcom/facebook/internal/FetchedAppSettings;)V

    return-void
.end method

.method static synthetic access$100(Lcom/facebook/login/widget/LoginButton;)Landroid/app/Activity;
    .locals 0

    .line 63
    invoke-virtual {p0}, Lcom/facebook/FacebookButtonBase;->getActivity()Landroid/app/Activity;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lcom/facebook/login/widget/LoginButton;)V
    .locals 0

    .line 63
    invoke-direct {p0}, Lcom/facebook/login/widget/LoginButton;->setButtonText()V

    return-void
.end method

.method static synthetic access$300(Lcom/facebook/login/widget/LoginButton;Landroid/view/View;)V
    .locals 0

    .line 63
    invoke-virtual {p0, p1}, Lcom/facebook/FacebookButtonBase;->callExternalOnClickListener(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$400(Lcom/facebook/login/widget/LoginButton;)Ljava/lang/String;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/facebook/login/widget/LoginButton;->loginLogoutEventName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$500(Lcom/facebook/login/widget/LoginButton;)Lcom/facebook/login/widget/LoginButton$LoginButtonProperties;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/facebook/login/widget/LoginButton;->properties:Lcom/facebook/login/widget/LoginButton$LoginButtonProperties;

    return-object p0
.end method

.method static synthetic access$700(Lcom/facebook/login/widget/LoginButton;)Landroid/app/Activity;
    .locals 0

    .line 63
    invoke-virtual {p0}, Lcom/facebook/FacebookButtonBase;->getActivity()Landroid/app/Activity;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$800(Lcom/facebook/login/widget/LoginButton;)Z
    .locals 0

    .line 63
    iget-boolean p0, p0, Lcom/facebook/login/widget/LoginButton;->confirmLogout:Z

    return p0
.end method

.method private checkToolTipSettings()V
    .locals 3

    invoke-static {p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 541
    :cond_0
    :try_start_0
    sget-object v0, Lcom/facebook/login/widget/LoginButton$3;->$SwitchMap$com$facebook$login$widget$LoginButton$ToolTipMode:[I

    iget-object v1, p0, Lcom/facebook/login/widget/LoginButton;->toolTipMode:Lcom/facebook/login/widget/LoginButton$ToolTipMode;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 564
    :cond_1
    invoke-virtual {p0}, Landroid/widget/Button;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/facebook/login/R$string;->com_facebook_tooltip_default:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 565
    invoke-direct {p0, v0}, Lcom/facebook/login/widget/LoginButton;->displayToolTip(Ljava/lang/String;)V

    goto :goto_0

    .line 544
    :cond_2
    invoke-virtual {p0}, Landroid/widget/Button;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/internal/Utility;->getMetadataApplicationId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 545
    invoke-static {}, Lcom/facebook/FacebookSdk;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    new-instance v2, Lcom/facebook/login/widget/LoginButton$1;

    invoke-direct {v2, p0, v0}, Lcom/facebook/login/widget/LoginButton$1;-><init>(Lcom/facebook/login/widget/LoginButton;Ljava/lang/String;)V

    .line 546
    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    return-void

    :catchall_0
    move-exception v0

    .line 570
    invoke-static {v0, p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method

.method private displayToolTip(Ljava/lang/String;)V
    .locals 2

    invoke-static {p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 533
    :cond_0
    :try_start_0
    new-instance v0, Lcom/facebook/login/widget/ToolTipPopup;

    invoke-direct {v0, p1, p0}, Lcom/facebook/login/widget/ToolTipPopup;-><init>(Ljava/lang/String;Landroid/view/View;)V

    iput-object v0, p0, Lcom/facebook/login/widget/LoginButton;->toolTipPopup:Lcom/facebook/login/widget/ToolTipPopup;

    .line 534
    iget-object p1, p0, Lcom/facebook/login/widget/LoginButton;->toolTipStyle:Lcom/facebook/login/widget/ToolTipPopup$Style;

    invoke-virtual {v0, p1}, Lcom/facebook/login/widget/ToolTipPopup;->setStyle(Lcom/facebook/login/widget/ToolTipPopup$Style;)V

    .line 535
    iget-object p1, p0, Lcom/facebook/login/widget/LoginButton;->toolTipPopup:Lcom/facebook/login/widget/ToolTipPopup;

    iget-wide v0, p0, Lcom/facebook/login/widget/LoginButton;->toolTipDisplayTime:J

    invoke-virtual {p1, v0, v1}, Lcom/facebook/login/widget/ToolTipPopup;->setNuxDisplayTime(J)V

    .line 536
    iget-object p1, p0, Lcom/facebook/login/widget/LoginButton;->toolTipPopup:Lcom/facebook/login/widget/ToolTipPopup;

    invoke-virtual {p1}, Lcom/facebook/login/widget/ToolTipPopup;->show()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    .line 537
    invoke-static {p1, p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method

.method private measureButtonWidth(Ljava/lang/String;)I
    .locals 3

    invoke-static {p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 719
    :cond_0
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/facebook/FacebookButtonBase;->measureTextWidth(Ljava/lang/String;)I

    move-result p1

    .line 720
    invoke-virtual {p0}, Lcom/facebook/FacebookButtonBase;->getCompoundPaddingLeft()I

    move-result v0

    .line 721
    invoke-virtual {p0}, Landroid/widget/Button;->getCompoundDrawablePadding()I

    move-result v2

    add-int/2addr v0, v2

    add-int/2addr v0, p1

    .line 723
    invoke-virtual {p0}, Lcom/facebook/FacebookButtonBase;->getCompoundPaddingRight()I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/2addr v0, p1

    return v0

    :catchall_0
    move-exception p1

    .line 720
    invoke-static {p1, p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return v1
.end method

.method private parseLoginButtonAttributes(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1

    invoke-static {p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 663
    :cond_0
    :try_start_0
    sget-object v0, Lcom/facebook/login/widget/LoginButton$ToolTipMode;->DEFAULT:Lcom/facebook/login/widget/LoginButton$ToolTipMode;

    iput-object v0, p0, Lcom/facebook/login/widget/LoginButton;->toolTipMode:Lcom/facebook/login/widget/LoginButton$ToolTipMode;

    .line 666
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    sget-object v0, Lcom/facebook/login/R$styleable;->com_facebook_login_view:[I

    .line 667
    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 670
    :try_start_1
    sget p2, Lcom/facebook/login/R$styleable;->com_facebook_login_view_com_facebook_confirm_logout:I

    const/4 p3, 0x1

    .line 671
    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/facebook/login/widget/LoginButton;->confirmLogout:Z

    .line 672
    sget p2, Lcom/facebook/login/R$styleable;->com_facebook_login_view_com_facebook_login_text:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/facebook/login/widget/LoginButton;->loginText:Ljava/lang/String;

    .line 673
    sget p2, Lcom/facebook/login/R$styleable;->com_facebook_login_view_com_facebook_logout_text:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/facebook/login/widget/LoginButton;->logoutText:Ljava/lang/String;

    .line 674
    sget p2, Lcom/facebook/login/R$styleable;->com_facebook_login_view_com_facebook_tooltip_mode:I

    sget-object p3, Lcom/facebook/login/widget/LoginButton$ToolTipMode;->DEFAULT:Lcom/facebook/login/widget/LoginButton$ToolTipMode;

    .line 678
    invoke-virtual {p3}, Lcom/facebook/login/widget/LoginButton$ToolTipMode;->getValue()I

    move-result p3

    .line 676
    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    .line 675
    invoke-static {p2}, Lcom/facebook/login/widget/LoginButton$ToolTipMode;->fromInt(I)Lcom/facebook/login/widget/LoginButton$ToolTipMode;

    move-result-object p2

    iput-object p2, p0, Lcom/facebook/login/widget/LoginButton;->toolTipMode:Lcom/facebook/login/widget/LoginButton$ToolTipMode;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 680
    :try_start_2
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    :catchall_0
    move-exception p2

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 681
    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p1

    .line 682
    invoke-static {p1, p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method

.method private setButtonText()V
    .locals 4

    invoke-static {p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 728
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/widget/Button;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 729
    invoke-virtual {p0}, Landroid/widget/Button;->isInEditMode()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {}, Lcom/facebook/AccessToken;->isCurrentAccessTokenActive()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 730
    iget-object v1, p0, Lcom/facebook/login/widget/LoginButton;->logoutText:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/facebook/login/widget/LoginButton;->logoutText:Ljava/lang/String;

    goto :goto_0

    :cond_1
    sget v1, Lcom/facebook/login/R$string;->com_facebook_loginview_log_out_button:I

    .line 733
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 730
    :goto_0
    invoke-virtual {p0, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 735
    :cond_2
    iget-object v1, p0, Lcom/facebook/login/widget/LoginButton;->loginText:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 736
    iget-object v0, p0, Lcom/facebook/login/widget/LoginButton;->loginText:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 738
    :cond_3
    sget v1, Lcom/facebook/login/R$string;->com_facebook_loginview_log_in_button_continue:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 739
    invoke-virtual {p0}, Landroid/widget/Button;->getWidth()I

    move-result v2

    if-eqz v2, :cond_4

    .line 743
    invoke-direct {p0, v1}, Lcom/facebook/login/widget/LoginButton;->measureButtonWidth(Ljava/lang/String;)I

    move-result v3

    if-le v3, v2, :cond_4

    .line 746
    sget v1, Lcom/facebook/login/R$string;->com_facebook_loginview_log_in_button:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 749
    :cond_4
    invoke-virtual {p0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    return-void

    :catchall_0
    move-exception v0

    .line 752
    invoke-static {v0, p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method

.method private showToolTipPerSettings(Lcom/facebook/internal/FetchedAppSettings;)V
    .locals 1

    invoke-static {p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 525
    :try_start_0
    invoke-virtual {p1}, Lcom/facebook/internal/FetchedAppSettings;->getNuxEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/widget/Button;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 526
    invoke-virtual {p1}, Lcom/facebook/internal/FetchedAppSettings;->getNuxContent()Ljava/lang/String;

    move-result-object p1

    .line 527
    invoke-direct {p0, p1}, Lcom/facebook/login/widget/LoginButton;->displayToolTip(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 529
    invoke-static {p1, p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public clearPermissions()V
    .locals 1

    .line 381
    iget-object v0, p0, Lcom/facebook/login/widget/LoginButton;->properties:Lcom/facebook/login/widget/LoginButton$LoginButtonProperties;

    invoke-virtual {v0}, Lcom/facebook/login/widget/LoginButton$LoginButtonProperties;->clearPermissions()V

    return-void
.end method

.method protected configureButton(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1

    invoke-static {p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 615
    :cond_0
    :try_start_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/facebook/FacebookButtonBase;->configureButton(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 616
    invoke-virtual {p0}, Lcom/facebook/login/widget/LoginButton;->getNewLoginClickListener()Lcom/facebook/login/widget/LoginButton$LoginClickListener;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/FacebookButtonBase;->setInternalOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 618
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/facebook/login/widget/LoginButton;->parseLoginButtonAttributes(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 620
    invoke-virtual {p0}, Landroid/widget/Button;->isInEditMode()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 623
    invoke-virtual {p0}, Landroid/widget/Button;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/facebook/common/R$color;->com_facebook_blue:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/Button;->setBackgroundColor(I)V

    const-string p1, "Continue with Facebook"

    .line 626
    iput-object p1, p0, Lcom/facebook/login/widget/LoginButton;->loginText:Ljava/lang/String;

    goto :goto_0

    .line 628
    :cond_1
    new-instance p1, Lcom/facebook/login/widget/LoginButton$2;

    invoke-direct {p1, p0}, Lcom/facebook/login/widget/LoginButton$2;-><init>(Lcom/facebook/login/widget/LoginButton;)V

    iput-object p1, p0, Lcom/facebook/login/widget/LoginButton;->accessTokenTracker:Lcom/facebook/AccessTokenTracker;

    .line 638
    :goto_0
    invoke-direct {p0}, Lcom/facebook/login/widget/LoginButton;->setButtonText()V

    .line 642
    invoke-virtual {p0}, Landroid/widget/Button;->getContext()Landroid/content/Context;

    move-result-object p1

    sget p2, Lcom/facebook/common/R$drawable;->com_facebook_button_icon:I

    .line 641
    invoke-static {p1, p2}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    const/4 p2, 0x0

    .line 640
    invoke-virtual {p0, p1, p2, p2, p2}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    .line 646
    invoke-static {p1, p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method

.method public dismissToolTip()V
    .locals 1

    .line 476
    iget-object v0, p0, Lcom/facebook/login/widget/LoginButton;->toolTipPopup:Lcom/facebook/login/widget/ToolTipPopup;

    if-eqz v0, :cond_0

    .line 477
    invoke-virtual {v0}, Lcom/facebook/login/widget/ToolTipPopup;->dismiss()V

    const/4 v0, 0x0

    .line 478
    iput-object v0, p0, Lcom/facebook/login/widget/LoginButton;->toolTipPopup:Lcom/facebook/login/widget/ToolTipPopup;

    :cond_0
    return-void
.end method

.method public getAuthType()Ljava/lang/String;
    .locals 1

    .line 412
    iget-object v0, p0, Lcom/facebook/login/widget/LoginButton;->properties:Lcom/facebook/login/widget/LoginButton$LoginButtonProperties;

    invoke-virtual {v0}, Lcom/facebook/login/widget/LoginButton$LoginButtonProperties;->getAuthType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultAudience()Lcom/facebook/login/DefaultAudience;
    .locals 1

    .line 242
    iget-object v0, p0, Lcom/facebook/login/widget/LoginButton;->properties:Lcom/facebook/login/widget/LoginButton$LoginButtonProperties;

    invoke-virtual {v0}, Lcom/facebook/login/widget/LoginButton$LoginButtonProperties;->getDefaultAudience()Lcom/facebook/login/DefaultAudience;

    move-result-object v0

    return-object v0
.end method

.method protected getDefaultRequestCode()I
    .locals 2

    invoke-static {p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 757
    :cond_0
    :try_start_0
    sget-object v0, Lcom/facebook/internal/CallbackManagerImpl$RequestCodeOffset;->Login:Lcom/facebook/internal/CallbackManagerImpl$RequestCodeOffset;

    invoke-virtual {v0}, Lcom/facebook/internal/CallbackManagerImpl$RequestCodeOffset;->toRequestCode()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    :catchall_0
    move-exception v0

    invoke-static {v0, p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return v1
.end method

.method protected getDefaultStyleResource()I
    .locals 1

    .line 654
    sget v0, Lcom/facebook/login/R$style;->com_facebook_loginview_default_style:I

    return v0
.end method

.method public getLoginBehavior()Lcom/facebook/login/LoginBehavior;
    .locals 1

    .line 403
    iget-object v0, p0, Lcom/facebook/login/widget/LoginButton;->properties:Lcom/facebook/login/widget/LoginButton$LoginButtonProperties;

    invoke-virtual {v0}, Lcom/facebook/login/widget/LoginButton$LoginButtonProperties;->getLoginBehavior()Lcom/facebook/login/LoginBehavior;

    move-result-object v0

    return-object v0
.end method

.method getLoginManager()Lcom/facebook/login/LoginManager;
    .locals 1

    .line 761
    iget-object v0, p0, Lcom/facebook/login/widget/LoginButton;->loginManager:Lcom/facebook/login/LoginManager;

    if-nez v0, :cond_0

    .line 762
    invoke-static {}, Lcom/facebook/login/LoginManager;->getInstance()Lcom/facebook/login/LoginManager;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/login/widget/LoginButton;->loginManager:Lcom/facebook/login/LoginManager;

    .line 764
    :cond_0
    iget-object v0, p0, Lcom/facebook/login/widget/LoginButton;->loginManager:Lcom/facebook/login/LoginManager;

    return-object v0
.end method

.method protected getNewLoginClickListener()Lcom/facebook/login/widget/LoginButton$LoginClickListener;
    .locals 1

    .line 649
    new-instance v0, Lcom/facebook/login/widget/LoginButton$LoginClickListener;

    invoke-direct {v0, p0}, Lcom/facebook/login/widget/LoginButton$LoginClickListener;-><init>(Lcom/facebook/login/widget/LoginButton;)V

    return-object v0
.end method

.method getPermissions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 601
    iget-object v0, p0, Lcom/facebook/login/widget/LoginButton;->properties:Lcom/facebook/login/widget/LoginButton$LoginButtonProperties;

    invoke-virtual {v0}, Lcom/facebook/login/widget/LoginButton$LoginButtonProperties;->getPermissions()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getToolTipDisplayTime()J
    .locals 2

    .line 471
    iget-wide v0, p0, Lcom/facebook/login/widget/LoginButton;->toolTipDisplayTime:J

    return-wide v0
.end method

.method public getToolTipMode()Lcom/facebook/login/widget/LoginButton$ToolTipMode;
    .locals 1

    .line 450
    iget-object v0, p0, Lcom/facebook/login/widget/LoginButton;->toolTipMode:Lcom/facebook/login/widget/LoginButton$ToolTipMode;

    return-object v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    invoke-static {p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 505
    :cond_0
    :try_start_0
    invoke-super {p0}, Lcom/facebook/FacebookButtonBase;->onAttachedToWindow()V

    .line 506
    iget-object v0, p0, Lcom/facebook/login/widget/LoginButton;->accessTokenTracker:Lcom/facebook/AccessTokenTracker;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/facebook/login/widget/LoginButton;->accessTokenTracker:Lcom/facebook/AccessTokenTracker;

    invoke-virtual {v0}, Lcom/facebook/AccessTokenTracker;->isTracking()Z

    move-result v0

    if-nez v0, :cond_1

    .line 507
    iget-object v0, p0, Lcom/facebook/login/widget/LoginButton;->accessTokenTracker:Lcom/facebook/AccessTokenTracker;

    invoke-virtual {v0}, Lcom/facebook/AccessTokenTracker;->startTracking()V

    .line 508
    invoke-direct {p0}, Lcom/facebook/login/widget/LoginButton;->setButtonText()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    return-void

    :catchall_0
    move-exception v0

    .line 510
    invoke-static {v0, p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    invoke-static {p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 582
    :cond_0
    :try_start_0
    invoke-super {p0}, Landroid/widget/Button;->onDetachedFromWindow()V

    .line 583
    iget-object v0, p0, Lcom/facebook/login/widget/LoginButton;->accessTokenTracker:Lcom/facebook/AccessTokenTracker;

    if-eqz v0, :cond_1

    .line 584
    iget-object v0, p0, Lcom/facebook/login/widget/LoginButton;->accessTokenTracker:Lcom/facebook/AccessTokenTracker;

    invoke-virtual {v0}, Lcom/facebook/AccessTokenTracker;->stopTracking()V

    .line 586
    :cond_1
    invoke-virtual {p0}, Lcom/facebook/login/widget/LoginButton;->dismissToolTip()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    .line 587
    invoke-static {v0, p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1

    invoke-static {p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 515
    :cond_0
    :try_start_0
    invoke-super {p0, p1}, Lcom/facebook/FacebookButtonBase;->onDraw(Landroid/graphics/Canvas;)V

    .line 517
    iget-boolean p1, p0, Lcom/facebook/login/widget/LoginButton;->toolTipChecked:Z

    if-nez p1, :cond_1

    invoke-virtual {p0}, Landroid/widget/Button;->isInEditMode()Z

    move-result p1

    if-nez p1, :cond_1

    const/4 p1, 0x1

    .line 518
    iput-boolean p1, p0, Lcom/facebook/login/widget/LoginButton;->toolTipChecked:Z

    .line 519
    invoke-direct {p0}, Lcom/facebook/login/widget/LoginButton;->checkToolTipSettings()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    return-void

    :catchall_0
    move-exception p1

    .line 521
    invoke-static {p1, p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 1

    invoke-static {p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 575
    :cond_0
    :try_start_0
    invoke-super/range {p0 .. p5}, Landroid/widget/Button;->onLayout(ZIIII)V

    .line 576
    invoke-direct {p0}, Lcom/facebook/login/widget/LoginButton;->setButtonText()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    .line 577
    invoke-static {p1, p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 4

    invoke-static {p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    return-void

    .line 687
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/widget/Button;->getPaint()Landroid/text/TextPaint;

    move-result-object p2

    invoke-virtual {p2}, Landroid/text/TextPaint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object p2

    .line 689
    invoke-virtual {p0}, Landroid/widget/Button;->getCompoundPaddingTop()I

    move-result v0

    iget v1, p2, Landroid/graphics/Paint$FontMetrics;->top:F

    .line 690
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget p2, p2, Landroid/graphics/Paint$FontMetrics;->bottom:F

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    add-float/2addr v1, p2

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int p2, v1

    add-int/2addr v0, p2

    .line 691
    invoke-virtual {p0}, Landroid/widget/Button;->getCompoundPaddingBottom()I

    move-result p2

    add-int/2addr v0, p2

    .line 693
    invoke-virtual {p0}, Landroid/widget/Button;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    .line 694
    iget-object v1, p0, Lcom/facebook/login/widget/LoginButton;->loginText:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 698
    sget v1, Lcom/facebook/login/R$string;->com_facebook_loginview_log_in_button_continue:I

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 699
    invoke-direct {p0, v1}, Lcom/facebook/login/widget/LoginButton;->measureButtonWidth(Ljava/lang/String;)I

    move-result v2

    .line 700
    invoke-static {v2, p1}, Landroid/widget/Button;->resolveSize(II)I

    move-result v3

    if-ge v3, v2, :cond_1

    .line 702
    sget v1, Lcom/facebook/login/R$string;->com_facebook_loginview_log_in_button:I

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 705
    :cond_1
    invoke-direct {p0, v1}, Lcom/facebook/login/widget/LoginButton;->measureButtonWidth(Ljava/lang/String;)I

    move-result v1

    .line 707
    iget-object v2, p0, Lcom/facebook/login/widget/LoginButton;->logoutText:Ljava/lang/String;

    if-nez v2, :cond_2

    .line 709
    sget v2, Lcom/facebook/login/R$string;->com_facebook_loginview_log_out_button:I

    invoke-virtual {p2, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 711
    :cond_2
    invoke-direct {p0, v2}, Lcom/facebook/login/widget/LoginButton;->measureButtonWidth(Ljava/lang/String;)I

    move-result p2

    .line 713
    invoke-static {v1, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    invoke-static {p2, p1}, Landroid/widget/Button;->resolveSize(II)I

    move-result p1

    .line 714
    invoke-virtual {p0, p1, v0}, Landroid/widget/Button;->setMeasuredDimension(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    .line 715
    invoke-static {p1, p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 1

    invoke-static {p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 592
    :cond_0
    :try_start_0
    invoke-super {p0, p1, p2}, Landroid/widget/Button;->onVisibilityChanged(Landroid/view/View;I)V

    if-eqz p2, :cond_1

    .line 595
    invoke-virtual {p0}, Lcom/facebook/login/widget/LoginButton;->dismissToolTip()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    return-void

    :catchall_0
    move-exception p1

    .line 597
    invoke-static {p1, p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method

.method public registerCallback(Lcom/facebook/CallbackManager;Lcom/facebook/FacebookCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/CallbackManager;",
            "Lcom/facebook/FacebookCallback<",
            "Lcom/facebook/login/LoginResult;",
            ">;)V"
        }
    .end annotation

    .line 490
    invoke-virtual {p0}, Lcom/facebook/login/widget/LoginButton;->getLoginManager()Lcom/facebook/login/LoginManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/facebook/login/LoginManager;->registerCallback(Lcom/facebook/CallbackManager;Lcom/facebook/FacebookCallback;)V

    return-void
.end method

.method public setAuthType(Ljava/lang/String;)V
    .locals 1

    .line 421
    iget-object v0, p0, Lcom/facebook/login/widget/LoginButton;->properties:Lcom/facebook/login/widget/LoginButton$LoginButtonProperties;

    invoke-virtual {v0, p1}, Lcom/facebook/login/widget/LoginButton$LoginButtonProperties;->setAuthType(Ljava/lang/String;)V

    return-void
.end method

.method public setDefaultAudience(Lcom/facebook/login/DefaultAudience;)V
    .locals 1

    .line 232
    iget-object v0, p0, Lcom/facebook/login/widget/LoginButton;->properties:Lcom/facebook/login/widget/LoginButton$LoginButtonProperties;

    invoke-virtual {v0, p1}, Lcom/facebook/login/widget/LoginButton$LoginButtonProperties;->setDefaultAudience(Lcom/facebook/login/DefaultAudience;)V

    return-void
.end method

.method public setLoginBehavior(Lcom/facebook/login/LoginBehavior;)V
    .locals 1

    .line 392
    iget-object v0, p0, Lcom/facebook/login/widget/LoginButton;->properties:Lcom/facebook/login/widget/LoginButton$LoginButtonProperties;

    invoke-virtual {v0, p1}, Lcom/facebook/login/widget/LoginButton$LoginButtonProperties;->setLoginBehavior(Lcom/facebook/login/LoginBehavior;)V

    return-void
.end method

.method setLoginManager(Lcom/facebook/login/LoginManager;)V
    .locals 0

    .line 768
    iput-object p1, p0, Lcom/facebook/login/widget/LoginButton;->loginManager:Lcom/facebook/login/LoginManager;

    return-void
.end method

.method public setLoginText(Ljava/lang/String;)V
    .locals 0

    .line 216
    iput-object p1, p0, Lcom/facebook/login/widget/LoginButton;->loginText:Ljava/lang/String;

    .line 217
    invoke-direct {p0}, Lcom/facebook/login/widget/LoginButton;->setButtonText()V

    return-void
.end method

.method public setLogoutText(Ljava/lang/String;)V
    .locals 0

    .line 221
    iput-object p1, p0, Lcom/facebook/login/widget/LoginButton;->logoutText:Ljava/lang/String;

    .line 222
    invoke-direct {p0}, Lcom/facebook/login/widget/LoginButton;->setButtonText()V

    return-void
.end method

.method public setPermissions(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 308
    iget-object v0, p0, Lcom/facebook/login/widget/LoginButton;->properties:Lcom/facebook/login/widget/LoginButton$LoginButtonProperties;

    invoke-virtual {v0, p1}, Lcom/facebook/login/widget/LoginButton$LoginButtonProperties;->setPermissions(Ljava/util/List;)V

    return-void
.end method

.method public varargs setPermissions([Ljava/lang/String;)V
    .locals 1

    .line 326
    iget-object v0, p0, Lcom/facebook/login/widget/LoginButton;->properties:Lcom/facebook/login/widget/LoginButton$LoginButtonProperties;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/facebook/login/widget/LoginButton$LoginButtonProperties;->setPermissions(Ljava/util/List;)V

    return-void
.end method

.method setProperties(Lcom/facebook/login/widget/LoginButton$LoginButtonProperties;)V
    .locals 0

    .line 605
    iput-object p1, p0, Lcom/facebook/login/widget/LoginButton;->properties:Lcom/facebook/login/widget/LoginButton$LoginButtonProperties;

    return-void
.end method

.method public setPublishPermissions(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 351
    iget-object v0, p0, Lcom/facebook/login/widget/LoginButton;->properties:Lcom/facebook/login/widget/LoginButton$LoginButtonProperties;

    invoke-virtual {v0, p1}, Lcom/facebook/login/widget/LoginButton$LoginButtonProperties;->setPermissions(Ljava/util/List;)V

    return-void
.end method

.method public varargs setPublishPermissions([Ljava/lang/String;)V
    .locals 1

    .line 376
    iget-object v0, p0, Lcom/facebook/login/widget/LoginButton;->properties:Lcom/facebook/login/widget/LoginButton$LoginButtonProperties;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/facebook/login/widget/LoginButton$LoginButtonProperties;->setPermissions(Ljava/util/List;)V

    return-void
.end method

.method public setReadPermissions(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 266
    iget-object v0, p0, Lcom/facebook/login/widget/LoginButton;->properties:Lcom/facebook/login/widget/LoginButton$LoginButtonProperties;

    invoke-virtual {v0, p1}, Lcom/facebook/login/widget/LoginButton$LoginButtonProperties;->setPermissions(Ljava/util/List;)V

    return-void
.end method

.method public varargs setReadPermissions([Ljava/lang/String;)V
    .locals 1

    .line 290
    iget-object v0, p0, Lcom/facebook/login/widget/LoginButton;->properties:Lcom/facebook/login/widget/LoginButton$LoginButtonProperties;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/facebook/login/widget/LoginButton$LoginButtonProperties;->setPermissions(Ljava/util/List;)V

    return-void
.end method

.method public setToolTipDisplayTime(J)V
    .locals 0

    .line 462
    iput-wide p1, p0, Lcom/facebook/login/widget/LoginButton;->toolTipDisplayTime:J

    return-void
.end method

.method public setToolTipMode(Lcom/facebook/login/widget/LoginButton$ToolTipMode;)V
    .locals 0

    .line 441
    iput-object p1, p0, Lcom/facebook/login/widget/LoginButton;->toolTipMode:Lcom/facebook/login/widget/LoginButton$ToolTipMode;

    return-void
.end method

.method public setToolTipStyle(Lcom/facebook/login/widget/ToolTipPopup$Style;)V
    .locals 0

    .line 431
    iput-object p1, p0, Lcom/facebook/login/widget/LoginButton;->toolTipStyle:Lcom/facebook/login/widget/ToolTipPopup$Style;

    return-void
.end method

.method public unregisterCallback(Lcom/facebook/CallbackManager;)V
    .locals 1

    .line 499
    invoke-virtual {p0}, Lcom/facebook/login/widget/LoginButton;->getLoginManager()Lcom/facebook/login/LoginManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/facebook/login/LoginManager;->unregisterCallback(Lcom/facebook/CallbackManager;)V

    return-void
.end method
