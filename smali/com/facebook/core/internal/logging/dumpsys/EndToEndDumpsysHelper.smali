.class public final Lcom/facebook/core/internal/logging/dumpsys/EndToEndDumpsysHelper;
.super Ljava/lang/Object;
.source "EndToEndDumpsysHelper.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "HexColorValueUsage",
        "CatchGeneralException",
        "BadMethodUse-java.lang.String.length"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/core/internal/logging/dumpsys/EndToEndDumpsysHelper$Api24Utils;,
        Lcom/facebook/core/internal/logging/dumpsys/EndToEndDumpsysHelper$Api21Utils;
    }
.end annotation


# static fields
.field private static final ALL_ROOTS_ARGUMENT:Ljava/lang/String; = "all-roots"

.field private static final E2E_ARGUMENT:Ljava/lang/String; = "e2e"

.field private static final LITHO_VIEW_CLASS:Ljava/lang/String; = "com.facebook.litho.LithoView"

.field private static final LITHO_VIEW_TEST_HELPER_CLASS:Ljava/lang/String; = "com.facebook.litho.LithoViewTestHelper"

.field private static final LITHO_VIEW_TO_STRING_METHOD:Ljava/lang/String; = "viewToStringForE2E"

.field private static final RC_TEXT_VIEW_SIMPLE_CLASS_NAME:Ljava/lang/String; = "RCTextView"

.field private static final TOP_ROOT_ARGUMENT:Ljava/lang/String; = "top-root"

.field private static final WITH_PROPS_ARGUMENT:Ljava/lang/String; = "props"

.field private static final WITH_WEBVIEW_ARGUMENT:Ljava/lang/String; = "webview"

.field private static mInstance:Lcom/facebook/core/internal/logging/dumpsys/EndToEndDumpsysHelper;

.field private static sRcTextViewGetTextMethod:Ljava/lang/reflect/Method;


# instance fields
.field private mLithoViewToStringMethod:Ljava/lang/reflect/Method;

.field private final mRootResolver:Lcom/facebook/core/internal/logging/dumpsys/AndroidRootResolver;

.field private final mWebViewDumpHelper:Lcom/facebook/core/internal/logging/dumpsys/WebViewDumpHelper;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    new-instance v0, Lcom/facebook/core/internal/logging/dumpsys/AndroidRootResolver;

    invoke-direct {v0}, Lcom/facebook/core/internal/logging/dumpsys/AndroidRootResolver;-><init>()V

    iput-object v0, p0, Lcom/facebook/core/internal/logging/dumpsys/EndToEndDumpsysHelper;->mRootResolver:Lcom/facebook/core/internal/logging/dumpsys/AndroidRootResolver;

    .line 69
    new-instance v0, Lcom/facebook/core/internal/logging/dumpsys/WebViewDumpHelper;

    invoke-direct {v0}, Lcom/facebook/core/internal/logging/dumpsys/WebViewDumpHelper;-><init>()V

    iput-object v0, p0, Lcom/facebook/core/internal/logging/dumpsys/EndToEndDumpsysHelper;->mWebViewDumpHelper:Lcom/facebook/core/internal/logging/dumpsys/WebViewDumpHelper;

    return-void
.end method

.method static synthetic access$000(Landroid/view/View;)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 0

    .line 51
    invoke-static {p0}, Lcom/facebook/core/internal/logging/dumpsys/EndToEndDumpsysHelper;->createNodeInfoFromView(Landroid/view/View;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Ljava/lang/CharSequence;I)Ljava/lang/String;
    .locals 0

    .line 51
    invoke-static {p0, p1}, Lcom/facebook/core/internal/logging/dumpsys/EndToEndDumpsysHelper;->fixString(Ljava/lang/CharSequence;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static createNodeInfoFromView(Landroid/view/View;)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 390
    :cond_0
    invoke-static {}, Landroid/view/accessibility/AccessibilityNodeInfo;->obtain()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v1

    .line 394
    :try_start_0
    invoke-virtual {p0, v1}, Landroid/view/View;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    if-eqz v1, :cond_1

    .line 397
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->recycle()V

    :cond_1
    return-object v0
.end method

.method private dumpViewHierarchy(Ljava/lang/String;Ljava/io/PrintWriter;Landroid/view/View;IIZZ)V
    .locals 17

    move-object/from16 v8, p0

    move-object/from16 v0, p1

    move-object/from16 v9, p2

    move-object/from16 v1, p3

    move/from16 v10, p7

    .line 139
    invoke-virtual {v9, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    if-nez v1, :cond_0

    const-string v0, "null"

    .line 142
    invoke-virtual {v9, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    .line 146
    :cond_0
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "{"

    .line 147
    invoke-virtual {v9, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 148
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 149
    invoke-static/range {p2 .. p3}, Lcom/facebook/core/internal/logging/dumpsys/EndToEndDumpsysHelper;->writeViewFlags(Ljava/io/PrintWriter;Landroid/view/View;)V

    .line 150
    invoke-static/range {p2 .. p5}, Lcom/facebook/core/internal/logging/dumpsys/EndToEndDumpsysHelper;->writeViewBounds(Ljava/io/PrintWriter;Landroid/view/View;II)V

    .line 151
    invoke-static/range {p2 .. p3}, Lcom/facebook/core/internal/logging/dumpsys/EndToEndDumpsysHelper;->writeViewTestId(Ljava/io/PrintWriter;Landroid/view/View;)V

    .line 152
    invoke-static/range {p2 .. p3}, Lcom/facebook/core/internal/logging/dumpsys/EndToEndDumpsysHelper;->writeViewText(Ljava/io/PrintWriter;Landroid/view/View;)V

    if-eqz v10, :cond_1

    .line 153
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_1

    .line 154
    invoke-static/range {p2 .. p3}, Lcom/facebook/core/internal/logging/dumpsys/EndToEndDumpsysHelper$Api21Utils;->writeExtraProps(Ljava/io/PrintWriter;Landroid/view/View;)V

    :cond_1
    const-string v2, "}"

    .line 156
    invoke-virtual {v9, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 158
    invoke-static/range {p3 .. p3}, Lcom/facebook/core/internal/logging/dumpsys/EndToEndDumpsysHelper;->isExtendsLithoView(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 159
    invoke-direct {v8, v9, v1, v0, v10}, Lcom/facebook/core/internal/logging/dumpsys/EndToEndDumpsysHelper;->writeLithoViewSubHierarchy(Ljava/io/PrintWriter;Landroid/view/View;Ljava/lang/String;Z)V

    :cond_2
    if-eqz p6, :cond_3

    .line 162
    instance-of v2, v1, Landroid/webkit/WebView;

    if-eqz v2, :cond_3

    .line 163
    iget-object v2, v8, Lcom/facebook/core/internal/logging/dumpsys/EndToEndDumpsysHelper;->mWebViewDumpHelper:Lcom/facebook/core/internal/logging/dumpsys/WebViewDumpHelper;

    move-object v3, v1

    check-cast v3, Landroid/webkit/WebView;

    invoke-virtual {v2, v3}, Lcom/facebook/core/internal/logging/dumpsys/WebViewDumpHelper;->handle(Landroid/webkit/WebView;)V

    .line 166
    :cond_3
    instance-of v2, v1, Landroid/view/ViewGroup;

    if-nez v2, :cond_4

    return-void

    .line 170
    :cond_4
    move-object v11, v1

    check-cast v11, Landroid/view/ViewGroup;

    .line 171
    invoke-virtual {v11}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v12

    if-gtz v12, :cond_5

    return-void

    .line 175
    :cond_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "  "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const/4 v0, 0x2

    new-array v14, v0, [I

    .line 178
    invoke-virtual {v1, v14}, Landroid/view/View;->getLocationOnScreen([I)V

    const/4 v15, 0x0

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v12, :cond_6

    .line 181
    invoke-virtual {v11, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    aget v4, v14, v15

    const/4 v0, 0x1

    aget v5, v14, v0

    move-object/from16 v0, p0

    move-object v1, v13

    move-object/from16 v2, p2

    move/from16 v6, p6

    move/from16 v16, v7

    move/from16 v7, p7

    .line 180
    invoke-direct/range {v0 .. v7}, Lcom/facebook/core/internal/logging/dumpsys/EndToEndDumpsysHelper;->dumpViewHierarchy(Ljava/lang/String;Ljava/io/PrintWriter;Landroid/view/View;IIZZ)V

    add-int/lit8 v7, v16, 0x1

    goto :goto_0

    :cond_6
    return-void
.end method

.method private dumpViewHierarchy(Ljava/lang/String;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 16

    move-object/from16 v9, p0

    move-object/from16 v0, p1

    move-object/from16 v10, p2

    move-object/from16 v1, p3

    .line 88
    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "Top Level Window View Hierarchy:"

    .line 89
    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "all-roots"

    .line 90
    invoke-static {v1, v2}, Lcom/facebook/core/internal/logging/dumpsys/EndToEndDumpsysHelper;->hasArgument([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v11

    const-string v2, "top-root"

    .line 91
    invoke-static {v1, v2}, Lcom/facebook/core/internal/logging/dumpsys/EndToEndDumpsysHelper;->hasArgument([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v12

    const-string v2, "webview"

    .line 92
    invoke-static {v1, v2}, Lcom/facebook/core/internal/logging/dumpsys/EndToEndDumpsysHelper;->hasArgument([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v13

    const-string v2, "props"

    .line 93
    invoke-static {v1, v2}, Lcom/facebook/core/internal/logging/dumpsys/EndToEndDumpsysHelper;->hasArgument([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v14

    .line 96
    :try_start_0
    iget-object v1, v9, Lcom/facebook/core/internal/logging/dumpsys/EndToEndDumpsysHelper;->mRootResolver:Lcom/facebook/core/internal/logging/dumpsys/AndroidRootResolver;

    invoke-virtual {v1}, Lcom/facebook/core/internal/logging/dumpsys/AndroidRootResolver;->listActiveRoots()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 97
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_2

    .line 101
    :cond_0
    invoke-static {v1}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    const/4 v2, 0x0

    .line 106
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_0
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Lcom/facebook/core/internal/logging/dumpsys/AndroidRootResolver$Root;

    .line 107
    iget-object v1, v8, Lcom/facebook/core/internal/logging/dumpsys/AndroidRootResolver$Root;->view:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    if-nez v11, :cond_2

    if-eqz v2, :cond_2

    .line 111
    iget-object v1, v8, Lcom/facebook/core/internal/logging/dumpsys/AndroidRootResolver$Root;->param:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    sub-int/2addr v1, v2

    .line 113
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    goto :goto_1

    .line 117
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v4, v8, Lcom/facebook/core/internal/logging/dumpsys/AndroidRootResolver$Root;->view:Landroid/view/View;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v1, p0

    move-object/from16 v3, p2

    move v7, v13

    move-object v0, v8

    move v8, v14

    invoke-direct/range {v1 .. v8}, Lcom/facebook/core/internal/logging/dumpsys/EndToEndDumpsysHelper;->dumpViewHierarchy(Ljava/lang/String;Ljava/io/PrintWriter;Landroid/view/View;IIZZ)V

    .line 118
    iget-object v2, v0, Lcom/facebook/core/internal/logging/dumpsys/AndroidRootResolver$Root;->param:Landroid/view/WindowManager$LayoutParams;

    if-eqz v12, :cond_3

    goto :goto_1

    :cond_3
    move-object/from16 v0, p1

    goto :goto_0

    .line 125
    :cond_4
    :goto_1
    iget-object v0, v9, Lcom/facebook/core/internal/logging/dumpsys/EndToEndDumpsysHelper;->mWebViewDumpHelper:Lcom/facebook/core/internal/logging/dumpsys/WebViewDumpHelper;

    invoke-virtual {v0, v10}, Lcom/facebook/core/internal/logging/dumpsys/WebViewDumpHelper;->dump(Ljava/io/PrintWriter;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :cond_5
    :goto_2
    return-void

    :catch_0
    move-exception v0

    .line 127
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failure in view hierarchy dump: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_3
    return-void
.end method

.method private static fixString(Ljava/lang/CharSequence;I)Ljava/lang/String;
    .locals 4

    const-string v0, ""

    if-eqz p0, :cond_1

    .line 364
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const/4 v2, 0x1

    if-ge v1, v2, :cond_0

    goto :goto_0

    .line 367
    :cond_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, " \n"

    const-string v3, " "

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 368
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result p0

    if-le p0, p1, :cond_1

    .line 369
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "..."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    :goto_0
    return-object v0
.end method

.method private static getTextFromRcTextView(Landroid/view/View;)Ljava/lang/String;
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "PrivateApi",
            "ReflectionMethodUse"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .line 356
    sget-object v0, Lcom/facebook/core/internal/logging/dumpsys/EndToEndDumpsysHelper;->sRcTextViewGetTextMethod:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 357
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    new-array v2, v1, [Ljava/lang/Class;

    const-string v3, "getText"

    invoke-virtual {v0, v3, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/facebook/core/internal/logging/dumpsys/EndToEndDumpsysHelper;->sRcTextViewGetTextMethod:Ljava/lang/reflect/Method;

    .line 359
    :cond_0
    sget-object v0, Lcom/facebook/core/internal/logging/dumpsys/EndToEndDumpsysHelper;->sRcTextViewGetTextMethod:Ljava/lang/reflect/Method;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 360
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method private static hasArgument([Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 378
    :cond_0
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, p0, v2

    .line 379
    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method private static isExtendsLithoView(Landroid/view/View;)Z
    .locals 2

    .line 186
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    :goto_0
    if-eqz p0, :cond_1

    .line 188
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.facebook.litho.LithoView"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 191
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static maybeDump(Ljava/lang/String;Ljava/io/PrintWriter;[Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    .line 75
    array-length v1, p2

    if-lez v1, :cond_1

    aget-object v1, p2, v0

    const-string v2, "e2e"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 77
    sget-object v0, Lcom/facebook/core/internal/logging/dumpsys/EndToEndDumpsysHelper;->mInstance:Lcom/facebook/core/internal/logging/dumpsys/EndToEndDumpsysHelper;

    if-nez v0, :cond_0

    .line 79
    new-instance v0, Lcom/facebook/core/internal/logging/dumpsys/EndToEndDumpsysHelper;

    invoke-direct {v0}, Lcom/facebook/core/internal/logging/dumpsys/EndToEndDumpsysHelper;-><init>()V

    sput-object v0, Lcom/facebook/core/internal/logging/dumpsys/EndToEndDumpsysHelper;->mInstance:Lcom/facebook/core/internal/logging/dumpsys/EndToEndDumpsysHelper;

    .line 81
    :cond_0
    sget-object v0, Lcom/facebook/core/internal/logging/dumpsys/EndToEndDumpsysHelper;->mInstance:Lcom/facebook/core/internal/logging/dumpsys/EndToEndDumpsysHelper;

    invoke-direct {v0, p0, p1, p2}, Lcom/facebook/core/internal/logging/dumpsys/EndToEndDumpsysHelper;->dumpViewHierarchy(Ljava/lang/String;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    :cond_1
    return v0
.end method

.method private static maybeWriteViewTestIdFromTag(Ljava/io/PrintWriter;Landroid/view/View;)V
    .locals 1

    .line 307
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    .line 308
    instance-of v0, p1, Ljava/lang/String;

    if-nez v0, :cond_0

    return-void

    .line 311
    :cond_0
    check-cast p1, Ljava/lang/String;

    .line 312
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_1

    return-void

    :cond_1
    const-string v0, " app:tag/"

    .line 315
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/16 v0, 0x3c

    .line 316
    invoke-static {p1, v0}, Lcom/facebook/core/internal/logging/dumpsys/EndToEndDumpsysHelper;->fixString(Ljava/lang/CharSequence;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    return-void
.end method

.method private writeLithoViewSubHierarchy(Ljava/io/PrintWriter;Landroid/view/View;Ljava/lang/String;Z)V
    .locals 8

    .line 199
    :try_start_0
    iget-object v0, p0, Lcom/facebook/core/internal/logging/dumpsys/EndToEndDumpsysHelper;->mLithoViewToStringMethod:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-nez v0, :cond_0

    const-string v0, "com.facebook.litho.LithoViewTestHelper"

    .line 200
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v5, "viewToStringForE2E"

    new-array v6, v2, [Ljava/lang/Class;

    .line 201
    const-class v7, Landroid/view/View;

    aput-object v7, v6, v1

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v4

    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v3

    .line 202
    invoke-virtual {v0, v5, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/core/internal/logging/dumpsys/EndToEndDumpsysHelper;->mLithoViewToStringMethod:Ljava/lang/reflect/Method;

    .line 208
    :cond_0
    iget-object v0, p0, Lcom/facebook/core/internal/logging/dumpsys/EndToEndDumpsysHelper;->mLithoViewToStringMethod:Ljava/lang/reflect/Method;

    const/4 v5, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p2, v2, v1

    .line 209
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p2

    div-int/2addr p2, v3

    add-int/2addr p2, v4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v2, v4

    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    aput-object p2, v2, v3

    invoke-virtual {v0, v5, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 210
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 213
    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object p1

    const-string p3, "Failed litho view sub hierarch dump: "

    .line 214
    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object p1

    .line 215
    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p2

    const/16 p3, 0x64

    invoke-static {p2, p3}, Lcom/facebook/core/internal/logging/dumpsys/EndToEndDumpsysHelper;->fixString(Ljava/lang/CharSequence;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object p1

    .line 216
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    :goto_0
    return-void
.end method

.method private static writeViewBounds(Ljava/io/PrintWriter;Landroid/view/View;II)V
    .locals 5

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 253
    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    const-string v1, " "

    .line 254
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 255
    aget v2, v0, v1

    sub-int/2addr v2, p2

    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->print(I)V

    const-string v2, ","

    .line 256
    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/4 v3, 0x1

    .line 257
    aget v4, v0, v3

    sub-int/2addr v4, p3

    invoke-virtual {p0, v4}, Ljava/io/PrintWriter;->print(I)V

    const-string v4, "-"

    .line 258
    invoke-virtual {p0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 259
    aget v1, v0, v1

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v4

    add-int/2addr v1, v4

    sub-int/2addr v1, p2

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 260
    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 261
    aget p2, v0, v3

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    add-int/2addr p2, p1

    sub-int/2addr p2, p3

    invoke-virtual {p0, p2}, Ljava/io/PrintWriter;->print(I)V

    return-void
.end method

.method private static writeViewFlags(Ljava/io/PrintWriter;Landroid/view/View;)V
    .locals 6

    const-string v0, " "

    .line 221
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 222
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v1

    const-string v2, "V"

    const-string v3, "."

    if-eqz v1, :cond_2

    const/4 v4, 0x4

    if-eq v1, v4, :cond_1

    const/16 v4, 0x8

    if-eq v1, v4, :cond_0

    .line 233
    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v1, "G"

    .line 230
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v1, "I"

    .line 227
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_0

    .line 224
    :cond_2
    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 235
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->isFocusable()Z

    move-result v1

    const-string v4, "F"

    if-eqz v1, :cond_3

    move-object v1, v4

    goto :goto_1

    :cond_3
    move-object v1, v3

    :goto_1
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 236
    invoke-virtual {p1}, Landroid/view/View;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "E"

    goto :goto_2

    :cond_4
    move-object v1, v3

    :goto_2
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 237
    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 238
    invoke-virtual {p1}, Landroid/view/View;->isHorizontalScrollBarEnabled()Z

    move-result v1

    const-string v5, "H"

    if-eqz v1, :cond_5

    move-object v1, v5

    goto :goto_3

    :cond_5
    move-object v1, v3

    :goto_3
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 239
    invoke-virtual {p1}, Landroid/view/View;->isVerticalScrollBarEnabled()Z

    move-result v1

    if-eqz v1, :cond_6

    goto :goto_4

    :cond_6
    move-object v2, v3

    :goto_4
    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 240
    invoke-virtual {p1}, Landroid/view/View;->isClickable()Z

    move-result v1

    if-eqz v1, :cond_7

    const-string v1, "C"

    goto :goto_5

    :cond_7
    move-object v1, v3

    :goto_5
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 241
    invoke-virtual {p1}, Landroid/view/View;->isLongClickable()Z

    move-result v1

    if-eqz v1, :cond_8

    const-string v1, "L"

    goto :goto_6

    :cond_8
    move-object v1, v3

    :goto_6
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 242
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 243
    invoke-virtual {p1}, Landroid/view/View;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_7

    :cond_9
    move-object v4, v3

    :goto_7
    invoke-virtual {p0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 244
    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_a

    const-string v0, "S"

    goto :goto_8

    :cond_a
    move-object v0, v3

    :goto_8
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 245
    invoke-virtual {p1}, Landroid/view/View;->isHovered()Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_9

    :cond_b
    move-object v5, v3

    :goto_9
    invoke-virtual {p0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 246
    invoke-virtual {p1}, Landroid/view/View;->isActivated()Z

    move-result v0

    if-eqz v0, :cond_c

    const-string v0, "A"

    goto :goto_a

    :cond_c
    move-object v0, v3

    :goto_a
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 247
    invoke-virtual {p1}, Landroid/view/View;->isDirty()Z

    move-result p1

    if-eqz p1, :cond_d

    const-string v3, "D"

    :cond_d
    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    return-void
.end method

.method private static writeViewTestId(Ljava/io/PrintWriter;Landroid/view/View;)V
    .locals 4

    .line 266
    :try_start_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 268
    invoke-static {p0, p1}, Lcom/facebook/core/internal/logging/dumpsys/EndToEndDumpsysHelper;->maybeWriteViewTestIdFromTag(Ljava/io/PrintWriter;Landroid/view/View;)V

    return-void

    :cond_0
    const-string v1, " #"

    .line 272
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 273
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 275
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    if-lez v0, :cond_4

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    const/high16 v2, -0x1000000

    and-int/2addr v2, v0

    const/high16 v3, 0x1000000

    if-eq v2, v3, :cond_3

    const/high16 v3, 0x7f000000

    if-eq v2, v3, :cond_2

    .line 290
    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getResourcePackageName(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_2
    const-string v2, "app"

    goto :goto_0

    :cond_3
    const-string v2, "android"

    :goto_0
    const-string v3, " "

    .line 294
    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 295
    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, ":"

    .line 296
    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 297
    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getResourceTypeName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "/"

    .line 298
    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 299
    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_2

    .line 277
    :cond_4
    :goto_1
    invoke-static {p0, p1}, Lcom/facebook/core/internal/logging/dumpsys/EndToEndDumpsysHelper;->maybeWriteViewTestIdFromTag(Ljava/io/PrintWriter;Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 302
    :catch_0
    invoke-static {p0, p1}, Lcom/facebook/core/internal/logging/dumpsys/EndToEndDumpsysHelper;->maybeWriteViewTestIdFromTag(Ljava/io/PrintWriter;Landroid/view/View;)V

    :goto_2
    return-void
.end method

.method private static writeViewText(Ljava/io/PrintWriter;Landroid/view/View;)V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ReflectionMethodUse"
        }
    .end annotation

    const/4 v0, 0x0

    .line 323
    :try_start_0
    instance-of v1, p1, Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 324
    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 327
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "RCTextView"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 328
    invoke-static {p1}, Lcom/facebook/core/internal/logging/dumpsys/EndToEndDumpsysHelper;->getTextFromRcTextView(Landroid/view/View;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 330
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 332
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_2
    if-eqz v0, :cond_3

    .line 334
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 335
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 337
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_4
    move-object p1, v0

    :goto_0
    if-eqz p1, :cond_6

    .line 341
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_1

    :cond_5
    const-string v0, " text=\""

    .line 344
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/16 v0, 0x258

    .line 345
    invoke-static {p1, v0}, Lcom/facebook/core/internal/logging/dumpsys/EndToEndDumpsysHelper;->fixString(Ljava/lang/CharSequence;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p1, "\""

    .line 346
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    nop

    :catch_0
    :cond_6
    :goto_1
    return-void
.end method
