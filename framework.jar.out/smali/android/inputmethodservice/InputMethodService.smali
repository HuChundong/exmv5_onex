.class public Landroid/inputmethodservice/InputMethodService;
.super Landroid/inputmethodservice/AbstractInputMethodService;
.source "InputMethodService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/inputmethodservice/InputMethodService$Insets;,
        Landroid/inputmethodservice/InputMethodService$InputMethodSessionImpl;,
        Landroid/inputmethodservice/InputMethodService$InputMethodImpl;
    }
.end annotation


# static fields
.field public static final BACK_DISPOSITION_DEFAULT:I = 0x0

.field public static final BACK_DISPOSITION_WILL_DISMISS:I = 0x2

.field public static final BACK_DISPOSITION_WILL_NOT_DISMISS:I = 0x1

.field private static final BROADCAST_IME_STATE_DELAY:I = 0xc8

#the value of this static final field might be set in the static constructor
.field static final DEBUG:Z = false

.field public static final IME_ACTIVE:I = 0x1

.field public static final IME_VISIBLE:I = 0x2

.field static final MOVEMENT_DOWN:I = -0x1

.field static final MOVEMENT_UP:I = -0x2

.field private static final MSG_BROADCAST_HIDE_SOFTINPUT:I = 0x2711

.field static final TAG:Ljava/lang/String; = "InputMethodService"


# instance fields
.field final mActionClickListener:Landroid/view/View$OnClickListener;

.field mBackDisposition:I

.field mCandidatesFrame:Landroid/widget/FrameLayout;

.field mCandidatesViewStarted:Z

.field mCandidatesVisibility:I

.field mCurCompletions:[Landroid/view/inputmethod/CompletionInfo;

.field mExtractAccessories:Landroid/view/ViewGroup;

.field mExtractAction:Landroid/widget/Button;

.field mExtractEditText:Landroid/inputmethodservice/ExtractEditText;

.field mExtractFrame:Landroid/widget/FrameLayout;

.field mExtractView:Landroid/view/View;

.field mExtractViewHidden:Z

.field mExtractedText:Landroid/view/inputmethod/ExtractedText;

.field mExtractedToken:I

.field mFullscreenApplied:Z

.field mFullscreenArea:Landroid/view/ViewGroup;

.field private mHandler:Landroid/os/Handler;

.field mImm:Landroid/view/inputmethod/InputMethodManager;

.field mInShowWindow:Z

.field mInflater:Landroid/view/LayoutInflater;

.field mInitialized:Z

.field mInputBinding:Landroid/view/inputmethod/InputBinding;

.field mInputConnection:Landroid/view/inputmethod/InputConnection;

.field mInputEditorInfo:Landroid/view/inputmethod/EditorInfo;

.field mInputFrame:Landroid/widget/FrameLayout;

.field mInputStarted:Z

.field mInputView:Landroid/view/View;

.field mInputViewStarted:Z

.field final mInsetsComputer:Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;

.field mIsFullscreen:Z

.field mIsInputViewShown:Z

.field mLastShowInputRequested:Z

.field mOldHardKeyboardHidden:I

.field mRootView:Landroid/view/View;

.field mShowInputFlags:I

.field mShowInputForced:Z

.field mShowInputRequested:Z

.field mStartedInputConnection:Landroid/view/inputmethod/InputConnection;

.field mStatusIcon:I

.field mTheme:I

.field mThemeAttrs:Landroid/content/res/TypedArray;

.field final mTmpInsets:Landroid/inputmethodservice/InputMethodService$Insets;

.field final mTmpLocation:[I

.field mToken:Landroid/os/IBinder;

.field mWindow:Landroid/inputmethodservice/SoftInputWindow;

.field mWindowAdded:Z

.field mWindowCreated:Z

.field mWindowVisible:Z

.field mWindowWasVisible:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 223
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    sput-boolean v0, Landroid/inputmethodservice/InputMethodService;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 221
    invoke-direct {p0}, Landroid/inputmethodservice/AbstractInputMethodService;-><init>()V

    .line 254
    const/4 v0, 0x0

    iput v0, p0, Landroid/inputmethodservice/InputMethodService;->mTheme:I

    .line 305
    new-instance v0, Landroid/inputmethodservice/InputMethodService$Insets;

    invoke-direct {v0}, Landroid/inputmethodservice/InputMethodService$Insets;-><init>()V

    iput-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mTmpInsets:Landroid/inputmethodservice/InputMethodService$Insets;

    .line 306
    new-array v0, v1, [I

    iput-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mTmpLocation:[I

    .line 308
    new-instance v0, Landroid/inputmethodservice/InputMethodService$1;

    invoke-direct {v0, p0}, Landroid/inputmethodservice/InputMethodService$1;-><init>(Landroid/inputmethodservice/InputMethodService;)V

    iput-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mInsetsComputer:Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;

    .line 329
    new-instance v0, Landroid/inputmethodservice/InputMethodService$2;

    invoke-direct {v0, p0}, Landroid/inputmethodservice/InputMethodService$2;-><init>(Landroid/inputmethodservice/InputMethodService;)V

    iput-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mActionClickListener:Landroid/view/View$OnClickListener;

    .line 347
    new-instance v0, Landroid/inputmethodservice/InputMethodService$3;

    invoke-direct {v0, p0}, Landroid/inputmethodservice/InputMethodService$3;-><init>(Landroid/inputmethodservice/InputMethodService;)V

    iput-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mHandler:Landroid/os/Handler;

    .line 1606
    iput v1, p0, Landroid/inputmethodservice/InputMethodService;->mOldHardKeyboardHidden:I

    return-void
.end method

.method static synthetic access$000(Landroid/inputmethodservice/InputMethodService;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 221
    invoke-direct {p0, p1}, Landroid/inputmethodservice/InputMethodService;->broadcastIMEstate(Z)V

    return-void
.end method

.method static synthetic access$100(Landroid/inputmethodservice/InputMethodService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 221
    invoke-direct {p0}, Landroid/inputmethodservice/InputMethodService;->doHideWindow()V

    return-void
.end method

.method static synthetic access$200(Landroid/inputmethodservice/InputMethodService;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 221
    invoke-direct {p0, p1, p2}, Landroid/inputmethodservice/InputMethodService;->onToggleSoftInput(II)V

    return-void
.end method

.method private broadcastIMEstate(Z)V
    .locals 7
    .parameter "isShowing"

    .prologue
    .line 358
    const/4 v1, 0x0

    .line 360
    .local v1, height:I
    if-eqz p1, :cond_0

    :try_start_0
    iget-object v3, p0, Landroid/inputmethodservice/InputMethodService;->mInputView:Landroid/view/View;

    if-eqz v3, :cond_0

    .line 361
    iget-object v3, p0, Landroid/inputmethodservice/InputMethodService;->mInputView:Landroid/view/View;

    const/4 v4, 0x0

    const/high16 v5, -0x8000

    invoke-static {v4, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {v5, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/view/View;->measure(II)V

    .line 362
    iget-object v3, p0, Landroid/inputmethodservice/InputMethodService;->mInputView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    .line 365
    :cond_0
    sget-boolean v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v3, :cond_1

    const-string v3, "IME_CURRENT_STATE"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SIP_VISIBLE="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", SIP_HEIGHT="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    :cond_1
    new-instance v2, Landroid/content/Intent;

    const-string v3, "IME_CURRENT_STATE"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 368
    .local v2, msg:Landroid/content/Intent;
    const-string v3, "SIP_VISIBLE"

    invoke-virtual {v2, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 369
    const-string v3, "SIP_HEIGHT"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 370
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getBaseContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 374
    .end local v2           #msg:Landroid/content/Intent;
    :goto_0
    return-void

    .line 371
    :catch_0
    move-exception v0

    .line 372
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "InputMethodService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception occurred while measuring SIP height: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private doHideWindow()V
    .locals 4

    .prologue
    .line 1640
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mImm:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mToken:Landroid/os/IBinder;

    const/4 v2, 0x0

    iget v3, p0, Landroid/inputmethodservice/InputMethodService;->mBackDisposition:I

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->setImeWindowStatus(Landroid/os/IBinder;II)V

    .line 1641
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->hideWindow()V

    .line 1642
    return-void
.end method

.method private finishViews()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1628
    iget-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mInputViewStarted:Z

    if-eqz v0, :cond_2

    .line 1629
    sget-boolean v0, Landroid/inputmethodservice/InputMethodService;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "InputMethodService"

    const-string v1, "CALL: onFinishInputView"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1630
    :cond_0
    invoke-virtual {p0, v2}, Landroid/inputmethodservice/InputMethodService;->onFinishInputView(Z)V

    .line 1635
    :cond_1
    :goto_0
    iput-boolean v2, p0, Landroid/inputmethodservice/InputMethodService;->mInputViewStarted:Z

    .line 1636
    iput-boolean v2, p0, Landroid/inputmethodservice/InputMethodService;->mCandidatesViewStarted:Z

    .line 1637
    return-void

    .line 1631
    :cond_2
    iget-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mCandidatesViewStarted:Z

    if-eqz v0, :cond_1

    .line 1632
    sget-boolean v0, Landroid/inputmethodservice/InputMethodService;->DEBUG:Z

    if-eqz v0, :cond_3

    const-string v0, "InputMethodService"

    const-string v1, "CALL: onFinishCandidatesView"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1633
    :cond_3
    invoke-virtual {p0, v2}, Landroid/inputmethodservice/InputMethodService;->onFinishCandidatesView(Z)V

    goto :goto_0
.end method

.method private handleBack(Z)Z
    .locals 4
    .parameter "doIt"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1893
    iget-boolean v3, p0, Landroid/inputmethodservice/InputMethodService;->mShowInputRequested:Z

    if-eqz v3, :cond_2

    .line 1894
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->isExtractViewShown()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Landroid/inputmethodservice/InputMethodService;->mExtractView:Landroid/view/View;

    instance-of v3, v3, Landroid/inputmethodservice/ExtractEditLayout;

    if-eqz v3, :cond_1

    .line 1895
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mExtractView:Landroid/view/View;

    check-cast v0, Landroid/inputmethodservice/ExtractEditLayout;

    .line 1896
    .local v0, extractEditLayout:Landroid/inputmethodservice/ExtractEditLayout;
    invoke-virtual {v0}, Landroid/inputmethodservice/ExtractEditLayout;->isActionModeStarted()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1897
    if-eqz p1, :cond_0

    invoke-virtual {v0}, Landroid/inputmethodservice/ExtractEditLayout;->finishActionMode()V

    .line 1918
    .end local v0           #extractEditLayout:Landroid/inputmethodservice/ExtractEditLayout;
    :cond_0
    :goto_0
    return v1

    .line 1903
    :cond_1
    if-eqz p1, :cond_0

    invoke-virtual {p0, v2}, Landroid/inputmethodservice/InputMethodService;->requestHideSelf(I)V

    goto :goto_0

    .line 1905
    :cond_2
    iget-boolean v3, p0, Landroid/inputmethodservice/InputMethodService;->mWindowVisible:Z

    if-eqz v3, :cond_4

    .line 1906
    iget v3, p0, Landroid/inputmethodservice/InputMethodService;->mCandidatesVisibility:I

    if-nez v3, :cond_3

    .line 1909
    if-eqz p1, :cond_0

    invoke-virtual {p0, v2}, Landroid/inputmethodservice/InputMethodService;->setCandidatesViewShown(Z)V

    goto :goto_0

    .line 1914
    :cond_3
    if-eqz p1, :cond_0

    invoke-direct {p0}, Landroid/inputmethodservice/InputMethodService;->doHideWindow()V

    goto :goto_0

    :cond_4
    move v1, v2

    .line 1918
    goto :goto_0
.end method

.method private handleError()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1608
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mWindow:Landroid/inputmethodservice/SoftInputWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mWindow:Landroid/inputmethodservice/SoftInputWindow;

    invoke-virtual {v0}, Landroid/inputmethodservice/SoftInputWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1609
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mWindow:Landroid/inputmethodservice/SoftInputWindow;

    invoke-virtual {v0}, Landroid/inputmethodservice/SoftInputWindow;->dismiss()V

    .line 1611
    :cond_0
    iget-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mInputViewStarted:Z

    if-eqz v0, :cond_2

    .line 1612
    const-string v0, "InputMethodService"

    const-string v1, "CALL: onFinishInputView"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1613
    invoke-virtual {p0, v2}, Landroid/inputmethodservice/InputMethodService;->onFinishInputView(Z)V

    .line 1620
    :cond_1
    :goto_0
    iput-boolean v2, p0, Landroid/inputmethodservice/InputMethodService;->mInputViewStarted:Z

    .line 1621
    iput-boolean v2, p0, Landroid/inputmethodservice/InputMethodService;->mCandidatesViewStarted:Z

    .line 1622
    iput-boolean v2, p0, Landroid/inputmethodservice/InputMethodService;->mWindowVisible:Z

    .line 1623
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->onWindowHidden()V

    .line 1624
    iput-boolean v2, p0, Landroid/inputmethodservice/InputMethodService;->mWindowWasVisible:Z

    .line 1625
    return-void

    .line 1615
    :cond_2
    iget-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mCandidatesViewStarted:Z

    if-eqz v0, :cond_1

    .line 1616
    const-string v0, "InputMethodService"

    const-string v1, "CALL: onFinishCandidatesView"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1617
    invoke-virtual {p0, v2}, Landroid/inputmethodservice/InputMethodService;->onFinishCandidatesView(Z)V

    goto :goto_0
.end method

.method private onToggleSoftInput(II)V
    .locals 2
    .parameter "showFlags"
    .parameter "hideFlags"

    .prologue
    .line 2003
    sget-boolean v0, Landroid/inputmethodservice/InputMethodService;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "InputMethodService"

    const-string/jumbo v1, "toggleSoftInput()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2004
    :cond_0
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->isInputViewShown()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2005
    invoke-virtual {p0, p2}, Landroid/inputmethodservice/InputMethodService;->requestHideSelf(I)V

    .line 2009
    :goto_0
    return-void

    .line 2007
    :cond_1
    invoke-direct {p0, p1}, Landroid/inputmethodservice/InputMethodService;->requestShowSelf(I)V

    goto :goto_0
.end method

.method private requestShowSelf(I)V
    .locals 2
    .parameter "flags"

    .prologue
    .line 1889
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mImm:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mToken:Landroid/os/IBinder;

    invoke-virtual {v0, v1, p1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInputFromInputMethod(Landroid/os/IBinder;I)V

    .line 1890
    return-void
.end method


# virtual methods
.method doFinishInput()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1726
    iget-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mInputViewStarted:Z

    if-eqz v0, :cond_4

    .line 1727
    sget-boolean v0, Landroid/inputmethodservice/InputMethodService;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "InputMethodService"

    const-string v1, "CALL: onFinishInputView"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1728
    :cond_0
    invoke-virtual {p0, v3}, Landroid/inputmethodservice/InputMethodService;->onFinishInputView(Z)V

    .line 1733
    :cond_1
    :goto_0
    iput-boolean v2, p0, Landroid/inputmethodservice/InputMethodService;->mInputViewStarted:Z

    .line 1734
    iput-boolean v2, p0, Landroid/inputmethodservice/InputMethodService;->mCandidatesViewStarted:Z

    .line 1735
    iget-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mInputStarted:Z

    if-eqz v0, :cond_3

    .line 1736
    sget-boolean v0, Landroid/inputmethodservice/InputMethodService;->DEBUG:Z

    if-eqz v0, :cond_2

    const-string v0, "InputMethodService"

    const-string v1, "CALL: onFinishInput"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1737
    :cond_2
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->onFinishInput()V

    .line 1739
    :cond_3
    iput-boolean v2, p0, Landroid/inputmethodservice/InputMethodService;->mInputStarted:Z

    .line 1740
    iput-object v4, p0, Landroid/inputmethodservice/InputMethodService;->mStartedInputConnection:Landroid/view/inputmethod/InputConnection;

    .line 1741
    iput-object v4, p0, Landroid/inputmethodservice/InputMethodService;->mCurCompletions:[Landroid/view/inputmethod/CompletionInfo;

    .line 1742
    return-void

    .line 1729
    :cond_4
    iget-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mCandidatesViewStarted:Z

    if-eqz v0, :cond_1

    .line 1730
    sget-boolean v0, Landroid/inputmethodservice/InputMethodService;->DEBUG:Z

    if-eqz v0, :cond_5

    const-string v0, "InputMethodService"

    const-string v1, "CALL: onFinishCandidatesView"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1731
    :cond_5
    invoke-virtual {p0, v3}, Landroid/inputmethodservice/InputMethodService;->onFinishCandidatesView(Z)V

    goto :goto_0
.end method

.method doMovementKey(ILandroid/view/KeyEvent;I)Z
    .locals 8
    .parameter "keyCode"
    .parameter "event"
    .parameter "count"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 2034
    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mExtractEditText:Landroid/inputmethodservice/ExtractEditText;

    .line 2035
    .local v1, eet:Landroid/inputmethodservice/ExtractEditText;
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->isExtractViewShown()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->isInputViewShown()Z

    move-result v7

    if-eqz v7, :cond_3

    if-eqz v1, :cond_3

    .line 2039
    invoke-virtual {v1}, Landroid/inputmethodservice/ExtractEditText;->getMovementMethod()Landroid/text/method/MovementMethod;

    move-result-object v3

    .line 2040
    .local v3, movement:Landroid/text/method/MovementMethod;
    invoke-virtual {v1}, Landroid/inputmethodservice/ExtractEditText;->getLayout()Landroid/text/Layout;

    move-result-object v2

    .line 2041
    .local v2, layout:Landroid/text/Layout;
    if-eqz v3, :cond_2

    if-eqz v2, :cond_2

    .line 2044
    const/4 v7, -0x1

    if-ne p3, v7, :cond_1

    .line 2045
    invoke-virtual {v1}, Landroid/inputmethodservice/ExtractEditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-interface {v3, v1, v7, p1, p2}, Landroid/text/method/MovementMethod;->onKeyDown(Landroid/widget/TextView;Landroid/text/Spannable;ILandroid/view/KeyEvent;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 2047
    invoke-virtual {p0, p1, v5}, Landroid/inputmethodservice/InputMethodService;->reportExtractedMovement(II)V

    .line 2087
    .end local v2           #layout:Landroid/text/Layout;
    .end local v3           #movement:Landroid/text/method/MovementMethod;
    :cond_0
    :goto_0
    :pswitch_0
    return v5

    .line 2050
    .restart local v2       #layout:Landroid/text/Layout;
    .restart local v3       #movement:Landroid/text/method/MovementMethod;
    :cond_1
    const/4 v7, -0x2

    if-ne p3, v7, :cond_4

    .line 2051
    invoke-virtual {v1}, Landroid/inputmethodservice/ExtractEditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-interface {v3, v1, v7, p1, p2}, Landroid/text/method/MovementMethod;->onKeyUp(Landroid/widget/TextView;Landroid/text/Spannable;ILandroid/view/KeyEvent;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 2078
    :cond_2
    :goto_1
    packed-switch p1, :pswitch_data_0

    .end local v2           #layout:Landroid/text/Layout;
    .end local v3           #movement:Landroid/text/method/MovementMethod;
    :cond_3
    move v5, v6

    .line 2087
    goto :goto_0

    .line 2056
    .restart local v2       #layout:Landroid/text/Layout;
    .restart local v3       #movement:Landroid/text/method/MovementMethod;
    :cond_4
    invoke-virtual {v1}, Landroid/inputmethodservice/ExtractEditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-interface {v3, v1, v7, p2}, Landroid/text/method/MovementMethod;->onKeyOther(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/KeyEvent;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 2057
    invoke-virtual {p0, p1, p3}, Landroid/inputmethodservice/InputMethodService;->reportExtractedMovement(II)V

    goto :goto_1

    .line 2059
    :cond_5
    invoke-static {p2, v6}, Landroid/view/KeyEvent;->changeAction(Landroid/view/KeyEvent;I)Landroid/view/KeyEvent;

    move-result-object v0

    .line 2060
    .local v0, down:Landroid/view/KeyEvent;
    invoke-virtual {v1}, Landroid/inputmethodservice/ExtractEditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-interface {v3, v1, v7, p1, v0}, Landroid/text/method/MovementMethod;->onKeyDown(Landroid/widget/TextView;Landroid/text/Spannable;ILandroid/view/KeyEvent;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 2062
    invoke-static {p2, v5}, Landroid/view/KeyEvent;->changeAction(Landroid/view/KeyEvent;I)Landroid/view/KeyEvent;

    move-result-object v4

    .line 2063
    .local v4, up:Landroid/view/KeyEvent;
    invoke-virtual {v1}, Landroid/inputmethodservice/ExtractEditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-interface {v3, v1, v7, p1, v4}, Landroid/text/method/MovementMethod;->onKeyUp(Landroid/widget/TextView;Landroid/text/Spannable;ILandroid/view/KeyEvent;)Z

    .line 2065
    :goto_2
    add-int/lit8 p3, p3, -0x1

    if-lez p3, :cond_6

    .line 2066
    invoke-virtual {v1}, Landroid/inputmethodservice/ExtractEditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-interface {v3, v1, v7, p1, v0}, Landroid/text/method/MovementMethod;->onKeyDown(Landroid/widget/TextView;Landroid/text/Spannable;ILandroid/view/KeyEvent;)Z

    .line 2068
    invoke-virtual {v1}, Landroid/inputmethodservice/ExtractEditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-interface {v3, v1, v7, p1, v4}, Landroid/text/method/MovementMethod;->onKeyUp(Landroid/widget/TextView;Landroid/text/Spannable;ILandroid/view/KeyEvent;)Z

    goto :goto_2

    .line 2071
    :cond_6
    invoke-virtual {p0, p1, p3}, Landroid/inputmethodservice/InputMethodService;->reportExtractedMovement(II)V

    goto :goto_1

    .line 2078
    nop

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method doStartInput(Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;Z)V
    .locals 3
    .parameter "ic"
    .parameter "attribute"
    .parameter "restarting"

    .prologue
    const/4 v2, 0x1

    .line 1745
    if-nez p3, :cond_0

    .line 1746
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->doFinishInput()V

    .line 1748
    :cond_0
    iput-boolean v2, p0, Landroid/inputmethodservice/InputMethodService;->mInputStarted:Z

    .line 1749
    iput-object p1, p0, Landroid/inputmethodservice/InputMethodService;->mStartedInputConnection:Landroid/view/inputmethod/InputConnection;

    .line 1750
    iput-object p2, p0, Landroid/inputmethodservice/InputMethodService;->mInputEditorInfo:Landroid/view/inputmethod/EditorInfo;

    .line 1751
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->initialize()V

    .line 1752
    sget-boolean v0, Landroid/inputmethodservice/InputMethodService;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "InputMethodService"

    const-string v1, "CALL: onStartInput"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1753
    :cond_1
    invoke-virtual {p0, p2, p3}, Landroid/inputmethodservice/InputMethodService;->onStartInput(Landroid/view/inputmethod/EditorInfo;Z)V

    .line 1754
    iget-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mWindowVisible:Z

    if-eqz v0, :cond_3

    .line 1755
    iget-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mShowInputRequested:Z

    if-eqz v0, :cond_4

    .line 1756
    sget-boolean v0, Landroid/inputmethodservice/InputMethodService;->DEBUG:Z

    if-eqz v0, :cond_2

    const-string v0, "InputMethodService"

    const-string v1, "CALL: onStartInputView"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1757
    :cond_2
    iput-boolean v2, p0, Landroid/inputmethodservice/InputMethodService;->mInputViewStarted:Z

    .line 1758
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mInputEditorInfo:Landroid/view/inputmethod/EditorInfo;

    invoke-virtual {p0, v0, p3}, Landroid/inputmethodservice/InputMethodService;->onStartInputView(Landroid/view/inputmethod/EditorInfo;Z)V

    .line 1759
    invoke-virtual {p0, v2}, Landroid/inputmethodservice/InputMethodService;->startExtractingText(Z)V

    .line 1766
    :cond_3
    :goto_0
    return-void

    .line 1760
    :cond_4
    iget v0, p0, Landroid/inputmethodservice/InputMethodService;->mCandidatesVisibility:I

    if-nez v0, :cond_3

    .line 1761
    sget-boolean v0, Landroid/inputmethodservice/InputMethodService;->DEBUG:Z

    if-eqz v0, :cond_5

    const-string v0, "InputMethodService"

    const-string v1, "CALL: onStartCandidatesView"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1762
    :cond_5
    iput-boolean v2, p0, Landroid/inputmethodservice/InputMethodService;->mCandidatesViewStarted:Z

    .line 1763
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mInputEditorInfo:Landroid/view/inputmethod/EditorInfo;

    invoke-virtual {p0, v0, p3}, Landroid/inputmethodservice/InputMethodService;->onStartCandidatesView(Landroid/view/inputmethod/EditorInfo;Z)V

    goto :goto_0
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3
    .parameter "fd"
    .parameter "fout"
    .parameter "args"

    .prologue
    .line 2478
    new-instance v0, Landroid/util/PrintWriterPrinter;

    invoke-direct {v0, p2}, Landroid/util/PrintWriterPrinter;-><init>(Ljava/io/PrintWriter;)V

    .line 2479
    .local v0, p:Landroid/util/Printer;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Input method service state for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 2480
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mWindowCreated="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/inputmethodservice/InputMethodService;->mWindowCreated:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mWindowAdded="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/inputmethodservice/InputMethodService;->mWindowAdded:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 2482
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mWindowVisible="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/inputmethodservice/InputMethodService;->mWindowVisible:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mWindowWasVisible="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/inputmethodservice/InputMethodService;->mWindowWasVisible:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mInShowWindow="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/inputmethodservice/InputMethodService;->mInShowWindow:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 2485
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  Configuration="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 2486
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mToken="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService;->mToken:Landroid/os/IBinder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 2487
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mInputBinding="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService;->mInputBinding:Landroid/view/inputmethod/InputBinding;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 2488
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mInputConnection="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService;->mInputConnection:Landroid/view/inputmethod/InputConnection;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 2489
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mStartedInputConnection="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService;->mStartedInputConnection:Landroid/view/inputmethod/InputConnection;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 2490
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mInputStarted="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/inputmethodservice/InputMethodService;->mInputStarted:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mInputViewStarted="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/inputmethodservice/InputMethodService;->mInputViewStarted:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mCandidatesViewStarted="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/inputmethodservice/InputMethodService;->mCandidatesViewStarted:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 2494
    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mInputEditorInfo:Landroid/view/inputmethod/EditorInfo;

    if-eqz v1, :cond_0

    .line 2495
    const-string v1, "  mInputEditorInfo:"

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 2496
    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mInputEditorInfo:Landroid/view/inputmethod/EditorInfo;

    const-string v2, "    "

    invoke-virtual {v1, v0, v2}, Landroid/view/inputmethod/EditorInfo;->dump(Landroid/util/Printer;Ljava/lang/String;)V

    .line 2501
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mShowInputRequested="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/inputmethodservice/InputMethodService;->mShowInputRequested:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mLastShowInputRequested="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/inputmethodservice/InputMethodService;->mLastShowInputRequested:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mShowInputForced="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/inputmethodservice/InputMethodService;->mShowInputForced:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mShowInputFlags=0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/inputmethodservice/InputMethodService;->mShowInputFlags:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 2505
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mCandidatesVisibility="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/inputmethodservice/InputMethodService;->mCandidatesVisibility:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mFullscreenApplied="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/inputmethodservice/InputMethodService;->mFullscreenApplied:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mIsFullscreen="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/inputmethodservice/InputMethodService;->mIsFullscreen:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mExtractViewHidden="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/inputmethodservice/InputMethodService;->mExtractViewHidden:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 2510
    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mExtractedText:Landroid/view/inputmethod/ExtractedText;

    if-eqz v1, :cond_1

    .line 2511
    const-string v1, "  mExtractedText:"

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 2512
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    text="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService;->mExtractedText:Landroid/view/inputmethod/ExtractedText;

    iget-object v2, v2, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " chars"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " startOffset="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService;->mExtractedText:Landroid/view/inputmethod/ExtractedText;

    iget v2, v2, Landroid/view/inputmethod/ExtractedText;->startOffset:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 2514
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    selectionStart="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService;->mExtractedText:Landroid/view/inputmethod/ExtractedText;

    iget v2, v2, Landroid/view/inputmethod/ExtractedText;->selectionStart:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " selectionEnd="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService;->mExtractedText:Landroid/view/inputmethod/ExtractedText;

    iget v2, v2, Landroid/view/inputmethod/ExtractedText;->selectionEnd:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " flags=0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService;->mExtractedText:Landroid/view/inputmethod/ExtractedText;

    iget v2, v2, Landroid/view/inputmethod/ExtractedText;->flags:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 2520
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mExtractedToken="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/inputmethodservice/InputMethodService;->mExtractedToken:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 2521
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mIsInputViewShown="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/inputmethodservice/InputMethodService;->mIsInputViewShown:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mStatusIcon="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/inputmethodservice/InputMethodService;->mStatusIcon:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 2523
    const-string v1, "Last computed insets:"

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 2524
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  contentTopInsets="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService;->mTmpInsets:Landroid/inputmethodservice/InputMethodService$Insets;

    iget v2, v2, Landroid/inputmethodservice/InputMethodService$Insets;->contentTopInsets:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " visibleTopInsets="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService;->mTmpInsets:Landroid/inputmethodservice/InputMethodService$Insets;

    iget v2, v2, Landroid/inputmethodservice/InputMethodService$Insets;->visibleTopInsets:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " touchableInsets="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService;->mTmpInsets:Landroid/inputmethodservice/InputMethodService$Insets;

    iget v2, v2, Landroid/inputmethodservice/InputMethodService$Insets;->touchableInsets:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " touchableRegion="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService;->mTmpInsets:Landroid/inputmethodservice/InputMethodService$Insets;

    iget-object v2, v2, Landroid/inputmethodservice/InputMethodService$Insets;->touchableRegion:Landroid/graphics/Region;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 2528
    return-void

    .line 2498
    :cond_0
    const-string v1, "  mInputEditorInfo: null"

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2518
    :cond_1
    const-string v1, "  mExtractedText: null"

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method public getBackDisposition()I
    .locals 1

    .prologue
    .line 920
    iget v0, p0, Landroid/inputmethodservice/InputMethodService;->mBackDisposition:I

    return v0
.end method

.method public getCandidatesHiddenVisibility()I
    .locals 1

    .prologue
    .line 1258
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->isExtractViewShown()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x4

    goto :goto_0
.end method

.method public getCurrentInputBinding()Landroid/view/inputmethod/InputBinding;
    .locals 1

    .prologue
    .line 949
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mInputBinding:Landroid/view/inputmethod/InputBinding;

    return-object v0
.end method

.method public getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;
    .locals 1

    .prologue
    .line 957
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mStartedInputConnection:Landroid/view/inputmethod/InputConnection;

    .line 958
    .local v0, ic:Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_0

    .line 961
    .end local v0           #ic:Landroid/view/inputmethod/InputConnection;
    :goto_0
    return-object v0

    .restart local v0       #ic:Landroid/view/inputmethod/InputConnection;
    :cond_0
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mInputConnection:Landroid/view/inputmethod/InputConnection;

    goto :goto_0
.end method

.method public getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;
    .locals 1

    .prologue
    .line 969
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mInputEditorInfo:Landroid/view/inputmethod/EditorInfo;

    return-object v0
.end method

.method public getCurrentInputStarted()Z
    .locals 1

    .prologue
    .line 965
    iget-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mInputStarted:Z

    return v0
.end method

.method public getLayoutInflater()Landroid/view/LayoutInflater;
    .locals 1

    .prologue
    .line 908
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method public getMaxWidth()I
    .locals 2

    .prologue
    .line 940
    const-string/jumbo v1, "window"

    invoke-virtual {p0, v1}, Landroid/inputmethodservice/InputMethodService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 941
    .local v0, wm:Landroid/view/WindowManager;
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    move-result v1

    return v1
.end method

.method public getTextForImeAction(I)Ljava/lang/CharSequence;
    .locals 1
    .parameter "imeOptions"

    .prologue
    .line 2306
    and-int/lit16 v0, p1, 0xff

    packed-switch v0, :pswitch_data_0

    .line 2322
    const v0, 0x1040470

    invoke-virtual {p0, v0}, Landroid/inputmethodservice/InputMethodService;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    :goto_0
    return-object v0

    .line 2308
    :pswitch_0
    const/4 v0, 0x0

    goto :goto_0

    .line 2310
    :pswitch_1
    const v0, 0x104046a

    invoke-virtual {p0, v0}, Landroid/inputmethodservice/InputMethodService;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    .line 2312
    :pswitch_2
    const v0, 0x104046b

    invoke-virtual {p0, v0}, Landroid/inputmethodservice/InputMethodService;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    .line 2314
    :pswitch_3
    const v0, 0x104046c

    invoke-virtual {p0, v0}, Landroid/inputmethodservice/InputMethodService;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    .line 2316
    :pswitch_4
    const v0, 0x104046d

    invoke-virtual {p0, v0}, Landroid/inputmethodservice/InputMethodService;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    .line 2318
    :pswitch_5
    const v0, 0x104046e

    invoke-virtual {p0, v0}, Landroid/inputmethodservice/InputMethodService;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    .line 2320
    :pswitch_6
    const v0, 0x104046f

    invoke-virtual {p0, v0}, Landroid/inputmethodservice/InputMethodService;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    .line 2306
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public getWindow()Landroid/app/Dialog;
    .locals 1

    .prologue
    .line 912
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mWindow:Landroid/inputmethodservice/SoftInputWindow;

    return-object v0
.end method

.method public hideStatusIcon()V
    .locals 2

    .prologue
    .line 1267
    const/4 v0, 0x0

    iput v0, p0, Landroid/inputmethodservice/InputMethodService;->mStatusIcon:I

    .line 1268
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mImm:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mToken:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->hideStatusIcon(Landroid/os/IBinder;)V

    .line 1269
    return-void
.end method

.method public hideWindow()V
    .locals 8

    .prologue
    const-wide/16 v6, 0xc8

    const/16 v5, 0x2711

    const/4 v4, 0x0

    .line 1646
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->isExtractViewShown()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mExtractEditText:Landroid/inputmethodservice/ExtractEditText;

    if-eqz v1, :cond_0

    .line 1647
    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mExtractEditText:Landroid/inputmethodservice/ExtractEditText;

    invoke-virtual {v1}, Landroid/inputmethodservice/ExtractEditText;->stopSelectionActionMode()V

    .line 1649
    :cond_0
    invoke-direct {p0}, Landroid/inputmethodservice/InputMethodService;->finishViews()V

    .line 1650
    iget-boolean v1, p0, Landroid/inputmethodservice/InputMethodService;->mWindowVisible:Z

    if-eqz v1, :cond_1

    .line 1654
    :try_start_0
    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mWindow:Landroid/inputmethodservice/SoftInputWindow;

    invoke-virtual {v1}, Landroid/inputmethodservice/SoftInputWindow;->hide()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1660
    iput-boolean v4, p0, Landroid/inputmethodservice/InputMethodService;->mWindowVisible:Z

    .line 1661
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->onWindowHidden()V

    .line 1662
    iput-boolean v4, p0, Landroid/inputmethodservice/InputMethodService;->mWindowWasVisible:Z

    .line 1665
    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 1666
    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mHandler:Landroid/os/Handler;

    :goto_0
    invoke-virtual {v1, v5, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1669
    :cond_1
    return-void

    .line 1656
    :catch_0
    move-exception v0

    .line 1657
    .local v0, e:Ljava/lang/Exception;
    :try_start_1
    const-string v1, "InputMethodService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception in hideWindow():"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1660
    iput-boolean v4, p0, Landroid/inputmethodservice/InputMethodService;->mWindowVisible:Z

    .line 1661
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->onWindowHidden()V

    .line 1662
    iput-boolean v4, p0, Landroid/inputmethodservice/InputMethodService;->mWindowWasVisible:Z

    .line 1665
    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 1666
    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mHandler:Landroid/os/Handler;

    goto :goto_0

    .line 1660
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    iput-boolean v4, p0, Landroid/inputmethodservice/InputMethodService;->mWindowVisible:Z

    .line 1661
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->onWindowHidden()V

    .line 1662
    iput-boolean v4, p0, Landroid/inputmethodservice/InputMethodService;->mWindowWasVisible:Z

    .line 1665
    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 1666
    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v5, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1660
    throw v1
.end method

.method initViews()V
    .locals 6

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 686
    iput-boolean v3, p0, Landroid/inputmethodservice/InputMethodService;->mInitialized:Z

    .line 687
    iput-boolean v3, p0, Landroid/inputmethodservice/InputMethodService;->mWindowCreated:Z

    .line 688
    iput-boolean v3, p0, Landroid/inputmethodservice/InputMethodService;->mShowInputRequested:Z

    .line 689
    iput-boolean v3, p0, Landroid/inputmethodservice/InputMethodService;->mShowInputForced:Z

    .line 691
    sget-object v1, Landroid/R$styleable;->InputMethodService:[I

    invoke-virtual {p0, v1}, Landroid/inputmethodservice/InputMethodService;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v1

    iput-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mThemeAttrs:Landroid/content/res/TypedArray;

    .line 692
    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x1090047

    invoke-virtual {v1, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mRootView:Landroid/view/View;

    .line 694
    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mWindow:Landroid/inputmethodservice/SoftInputWindow;

    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService;->mRootView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/inputmethodservice/SoftInputWindow;->setContentView(Landroid/view/View;)V

    .line 695
    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mRootView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService;->mInsetsComputer:Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnComputeInternalInsetsListener(Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;)V

    .line 706
    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mWindow:Landroid/inputmethodservice/SoftInputWindow;

    invoke-virtual {v1}, Landroid/inputmethodservice/SoftInputWindow;->getWindow()Landroid/view/Window;

    move-result-object v1

    const v2, 0x40b0001

    invoke-virtual {v1, v2}, Landroid/view/Window;->setWindowAnimations(I)V

    .line 709
    const/4 v0, 0x0

    .line 711
    .local v0, disableIMEAnimation:Z
    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v2, 0x31

    if-ne v1, v2, :cond_0

    .line 712
    const/4 v0, 0x1

    .line 714
    :cond_0
    if-eqz v0, :cond_1

    .line 715
    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mWindow:Landroid/inputmethodservice/SoftInputWindow;

    invoke-virtual {v1}, Landroid/inputmethodservice/SoftInputWindow;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/high16 v2, 0x103

    invoke-virtual {v1, v2}, Landroid/view/Window;->setWindowAnimations(I)V

    .line 719
    :cond_1
    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mExtractEditText:Landroid/inputmethodservice/ExtractEditText;

    if-eqz v1, :cond_2

    .line 720
    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mExtractEditText:Landroid/inputmethodservice/ExtractEditText;

    invoke-virtual {v1}, Landroid/inputmethodservice/ExtractEditText;->hideSuggestions()V

    .line 722
    :cond_2
    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mRootView:Landroid/view/View;

    const v2, 0x102028c

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mFullscreenArea:Landroid/view/ViewGroup;

    .line 723
    iput-boolean v3, p0, Landroid/inputmethodservice/InputMethodService;->mExtractViewHidden:Z

    .line 724
    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mRootView:Landroid/view/View;

    const v2, 0x102001c

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mExtractFrame:Landroid/widget/FrameLayout;

    .line 725
    iput-object v4, p0, Landroid/inputmethodservice/InputMethodService;->mExtractView:Landroid/view/View;

    .line 726
    iput-object v4, p0, Landroid/inputmethodservice/InputMethodService;->mExtractEditText:Landroid/inputmethodservice/ExtractEditText;

    .line 727
    iput-object v4, p0, Landroid/inputmethodservice/InputMethodService;->mExtractAccessories:Landroid/view/ViewGroup;

    .line 728
    iput-object v4, p0, Landroid/inputmethodservice/InputMethodService;->mExtractAction:Landroid/widget/Button;

    .line 729
    iput-boolean v3, p0, Landroid/inputmethodservice/InputMethodService;->mFullscreenApplied:Z

    .line 731
    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mRootView:Landroid/view/View;

    const v2, 0x102001d

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mCandidatesFrame:Landroid/widget/FrameLayout;

    .line 732
    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mRootView:Landroid/view/View;

    const v2, 0x102001e

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mInputFrame:Landroid/widget/FrameLayout;

    .line 733
    iput-object v4, p0, Landroid/inputmethodservice/InputMethodService;->mInputView:Landroid/view/View;

    .line 734
    iput-boolean v3, p0, Landroid/inputmethodservice/InputMethodService;->mIsInputViewShown:Z

    .line 736
    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mExtractFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v5}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 737
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getCandidatesHiddenVisibility()I

    move-result v1

    iput v1, p0, Landroid/inputmethodservice/InputMethodService;->mCandidatesVisibility:I

    .line 738
    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mCandidatesFrame:Landroid/widget/FrameLayout;

    iget v2, p0, Landroid/inputmethodservice/InputMethodService;->mCandidatesVisibility:I

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 739
    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mInputFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v5}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 740
    return-void
.end method

.method initialize()V
    .locals 1

    .prologue
    .line 679
    iget-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mInitialized:Z

    if-nez v0, :cond_0

    .line 680
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mInitialized:Z

    .line 681
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->onInitializeInterface()V

    .line 683
    :cond_0
    return-void
.end method

.method public isExtractViewShown()Z
    .locals 1

    .prologue
    .line 1104
    iget-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mIsFullscreen:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mExtractViewHidden:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFullscreenMode()Z
    .locals 1

    .prologue
    .line 1053
    iget-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mIsFullscreen:Z

    return v0
.end method

.method public isInputViewShown()Z
    .locals 1

    .prologue
    .line 1204
    iget-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mIsInputViewShown:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mWindowVisible:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isShowInputRequested()Z
    .locals 1

    .prologue
    .line 1195
    iget-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mShowInputRequested:Z

    return v0
.end method

.method public onAppPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0
    .parameter "action"
    .parameter "data"

    .prologue
    .line 1997
    return-void
.end method

.method public onBindInput()V
    .locals 0

    .prologue
    .line 1697
    return-void
.end method

.method public onComputeInsets(Landroid/inputmethodservice/InputMethodService$Insets;)V
    .locals 4
    .parameter "outInsets"

    .prologue
    const/4 v3, 0x1

    .line 1146
    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mTmpLocation:[I

    .line 1147
    .local v1, loc:[I
    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService;->mInputFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v2

    if-nez v2, :cond_1

    .line 1148
    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService;->mInputFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->getLocationInWindow([I)V

    .line 1153
    :goto_0
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->isFullscreenMode()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1155
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getWindow()Landroid/app/Dialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 1156
    .local v0, decor:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v2

    iput v2, p1, Landroid/inputmethodservice/InputMethodService$Insets;->contentTopInsets:I

    .line 1160
    .end local v0           #decor:Landroid/view/View;
    :goto_1
    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService;->mCandidatesFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v2

    if-nez v2, :cond_0

    .line 1161
    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService;->mCandidatesFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->getLocationInWindow([I)V

    .line 1163
    :cond_0
    aget v2, v1, v3

    iput v2, p1, Landroid/inputmethodservice/InputMethodService$Insets;->visibleTopInsets:I

    .line 1164
    const/4 v2, 0x2

    iput v2, p1, Landroid/inputmethodservice/InputMethodService$Insets;->touchableInsets:I

    .line 1165
    iget-object v2, p1, Landroid/inputmethodservice/InputMethodService$Insets;->touchableRegion:Landroid/graphics/Region;

    invoke-virtual {v2}, Landroid/graphics/Region;->setEmpty()V

    .line 1166
    return-void

    .line 1150
    :cond_1
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getWindow()Landroid/app/Dialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 1151
    .restart local v0       #decor:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v2

    aput v2, v1, v3

    goto :goto_0

    .line 1158
    .end local v0           #decor:Landroid/view/View;
    :cond_2
    aget v2, v1, v3

    iput v2, p1, Landroid/inputmethodservice/InputMethodService$Insets;->contentTopInsets:I

    goto :goto_1
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 11
    .parameter "newConfig"

    .prologue
    const/4 v6, 0x2

    const/4 v7, 0x0

    const/4 v10, 0x1

    .line 773
    sget-boolean v8, Landroid/inputmethodservice/InputMethodService;->DEBUG:Z

    if-eqz v8, :cond_0

    const-string v8, "InputMethodService"

    const-string v9, "[onConfigurationChanged]"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 775
    :cond_0
    invoke-super {p0, p1}, Landroid/inputmethodservice/AbstractInputMethodService;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 777
    iget-boolean v5, p0, Landroid/inputmethodservice/InputMethodService;->mWindowVisible:Z

    .line 778
    .local v5, visible:Z
    iget v2, p0, Landroid/inputmethodservice/InputMethodService;->mShowInputFlags:I

    .line 779
    .local v2, showFlags:I
    iget-boolean v4, p0, Landroid/inputmethodservice/InputMethodService;->mShowInputRequested:Z

    .line 780
    .local v4, showingInput:Z
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mCurCompletions:[Landroid/view/inputmethod/CompletionInfo;

    .line 781
    .local v0, completions:[Landroid/view/inputmethod/CompletionInfo;
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->initViews()V

    .line 782
    iput-boolean v7, p0, Landroid/inputmethodservice/InputMethodService;->mInputViewStarted:Z

    .line 783
    iput-boolean v7, p0, Landroid/inputmethodservice/InputMethodService;->mCandidatesViewStarted:Z

    .line 786
    iget v1, p0, Landroid/inputmethodservice/InputMethodService;->mOldHardKeyboardHidden:I

    .line 787
    .local v1, oldHardKeyboardHidden:I
    iget v8, p1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    iput v8, p0, Landroid/inputmethodservice/InputMethodService;->mOldHardKeyboardHidden:I

    .line 789
    iget-boolean v8, p0, Landroid/inputmethodservice/InputMethodService;->mInputStarted:Z

    if-eqz v8, :cond_1

    .line 790
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v8

    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v9

    invoke-virtual {p0, v8, v9, v10}, Landroid/inputmethodservice/InputMethodService;->doStartInput(Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;Z)V

    .line 797
    :cond_1
    sget-short v8, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v9, 0x10

    if-ne v8, v9, :cond_5

    .line 862
    :cond_2
    if-eqz v5, :cond_4

    .line 863
    if-eqz v4, :cond_17

    .line 865
    invoke-virtual {p0, v2, v10}, Landroid/inputmethodservice/InputMethodService;->onShowInputRequested(IZ)Z

    move-result v8

    if-eqz v8, :cond_16

    .line 866
    invoke-virtual {p0, v10}, Landroid/inputmethodservice/InputMethodService;->showWindow(Z)V

    .line 867
    if-eqz v0, :cond_3

    .line 868
    iput-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mCurCompletions:[Landroid/view/inputmethod/CompletionInfo;

    .line 869
    invoke-virtual {p0, v0}, Landroid/inputmethodservice/InputMethodService;->onDisplayCompletions([Landroid/view/inputmethod/CompletionInfo;)V

    .line 883
    :cond_3
    :goto_0
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->onEvaluateInputViewShown()Z

    move-result v3

    .line 884
    .local v3, showing:Z
    iget-object v8, p0, Landroid/inputmethodservice/InputMethodService;->mImm:Landroid/view/inputmethod/InputMethodManager;

    iget-object v9, p0, Landroid/inputmethodservice/InputMethodService;->mToken:Landroid/os/IBinder;

    if-eqz v3, :cond_19

    :goto_1
    or-int/lit8 v6, v6, 0x1

    iget v7, p0, Landroid/inputmethodservice/InputMethodService;->mBackDisposition:I

    invoke-virtual {v8, v9, v6, v7}, Landroid/view/inputmethod/InputMethodManager;->setImeWindowStatus(Landroid/os/IBinder;II)V

    .line 887
    .end local v3           #showing:Z
    :cond_4
    :goto_2
    return-void

    .line 805
    :cond_5
    iget v8, p1, Landroid/content/res/Configuration;->keyboard:I

    if-eq v10, v8, :cond_2

    .line 806
    iget v8, p1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    if-ne v6, v8, :cond_12

    .line 807
    sget-boolean v8, Landroid/inputmethodservice/InputMethodService;->DEBUG:Z

    if-eqz v8, :cond_6

    const-string v8, "InputMethodService"

    const-string v9, "[onConfigurationChanged] state = hide keyboard"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 809
    :cond_6
    if-eqz v5, :cond_10

    .line 810
    if-eqz v4, :cond_c

    .line 811
    if-eq v1, v6, :cond_8

    .line 812
    sget-boolean v6, Landroid/inputmethodservice/InputMethodService;->DEBUG:Z

    if-eqz v6, :cond_7

    const-string v6, "InputMethodService"

    const-string v7, "[onConfigurationChanged] hide keyboard = hideWindow1"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 813
    :cond_7
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->hideWindow()V

    goto :goto_2

    .line 817
    :cond_8
    invoke-virtual {p0, v2, v10}, Landroid/inputmethodservice/InputMethodService;->onShowInputRequested(IZ)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 818
    sget-boolean v6, Landroid/inputmethodservice/InputMethodService;->DEBUG:Z

    if-eqz v6, :cond_9

    const-string v6, "InputMethodService"

    const-string v7, "[onConfigurationChanged] hide keyboard = showWindow(true)"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 819
    :cond_9
    invoke-virtual {p0, v10}, Landroid/inputmethodservice/InputMethodService;->showWindow(Z)V

    .line 820
    if-eqz v0, :cond_4

    .line 821
    iput-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mCurCompletions:[Landroid/view/inputmethod/CompletionInfo;

    .line 822
    invoke-virtual {p0, v0}, Landroid/inputmethodservice/InputMethodService;->onDisplayCompletions([Landroid/view/inputmethod/CompletionInfo;)V

    goto :goto_2

    .line 825
    :cond_a
    sget-boolean v6, Landroid/inputmethodservice/InputMethodService;->DEBUG:Z

    if-eqz v6, :cond_b

    const-string v6, "InputMethodService"

    const-string v7, "[onConfigurationChanged] hide keyboard = hideWindow"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 826
    :cond_b
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->hideWindow()V

    goto :goto_2

    .line 829
    :cond_c
    iget v6, p0, Landroid/inputmethodservice/InputMethodService;->mCandidatesVisibility:I

    if-nez v6, :cond_e

    .line 830
    sget-boolean v6, Landroid/inputmethodservice/InputMethodService;->DEBUG:Z

    if-eqz v6, :cond_d

    const-string v6, "InputMethodService"

    const-string v8, "[onConfigurationChanged] hide keyboard = showWindow(false)"

    invoke-static {v6, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 831
    :cond_d
    invoke-virtual {p0, v7}, Landroid/inputmethodservice/InputMethodService;->showWindow(Z)V

    goto :goto_2

    .line 834
    :cond_e
    sget-boolean v6, Landroid/inputmethodservice/InputMethodService;->DEBUG:Z

    if-eqz v6, :cond_f

    const-string v6, "InputMethodService"

    const-string v7, "[onConfigurationChanged] hide keyboard = hideWindow1"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 835
    :cond_f
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->hideWindow()V

    goto :goto_2

    .line 838
    :cond_10
    sget-boolean v6, Landroid/inputmethodservice/InputMethodService;->DEBUG:Z

    if-eqz v6, :cond_11

    const-string v6, "InputMethodService"

    const-string v7, "[onConfigurationChanged] hide keyboard = hideWindow2"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 839
    :cond_11
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->hideWindow()V

    goto/16 :goto_2

    .line 842
    :cond_12
    sget-boolean v6, Landroid/inputmethodservice/InputMethodService;->DEBUG:Z

    if-eqz v6, :cond_13

    const-string v6, "InputMethodService"

    const-string v7, "[onConfigurationChanged] state = open keyboard"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 845
    :cond_13
    invoke-virtual {p0, v10, v10}, Landroid/inputmethodservice/InputMethodService;->onShowInputRequested(IZ)Z

    move-result v6

    if-eqz v6, :cond_15

    .line 846
    sget-boolean v6, Landroid/inputmethodservice/InputMethodService;->DEBUG:Z

    if-eqz v6, :cond_14

    const-string v6, "InputMethodService"

    const-string v7, "[onConfigurationChanged] open keyboard = showWindow"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 847
    :cond_14
    invoke-virtual {p0, v10}, Landroid/inputmethodservice/InputMethodService;->showWindow(Z)V

    .line 848
    if-eqz v0, :cond_4

    .line 849
    iput-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mCurCompletions:[Landroid/view/inputmethod/CompletionInfo;

    .line 850
    invoke-virtual {p0, v0}, Landroid/inputmethodservice/InputMethodService;->onDisplayCompletions([Landroid/view/inputmethod/CompletionInfo;)V

    goto/16 :goto_2

    .line 853
    :cond_15
    const-string v6, "InputMethodService"

    const-string v7, "[onConfigurationChanged] open keyboard = hideWindow"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 854
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->hideWindow()V

    goto/16 :goto_2

    .line 872
    :cond_16
    invoke-direct {p0}, Landroid/inputmethodservice/InputMethodService;->doHideWindow()V

    goto/16 :goto_0

    .line 874
    :cond_17
    iget v8, p0, Landroid/inputmethodservice/InputMethodService;->mCandidatesVisibility:I

    if-nez v8, :cond_18

    .line 877
    invoke-virtual {p0, v7}, Landroid/inputmethodservice/InputMethodService;->showWindow(Z)V

    goto/16 :goto_0

    .line 880
    :cond_18
    invoke-direct {p0}, Landroid/inputmethodservice/InputMethodService;->doHideWindow()V

    goto/16 :goto_0

    .restart local v3       #showing:Z
    :cond_19
    move v6, v7

    .line 884
    goto/16 :goto_1
.end method

.method public onConfigureWindow(Landroid/view/Window;ZZ)V
    .locals 3
    .parameter "win"
    .parameter "isFullscreen"
    .parameter "isCandidatesOnly"

    .prologue
    const/4 v2, -0x1

    .line 1040
    if-eqz p2, :cond_0

    .line 1041
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mWindow:Landroid/inputmethodservice/SoftInputWindow;

    invoke-virtual {v0}, Landroid/inputmethodservice/SoftInputWindow;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v2, v2}, Landroid/view/Window;->setLayout(II)V

    .line 1045
    :goto_0
    return-void

    .line 1043
    :cond_0
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mWindow:Landroid/inputmethodservice/SoftInputWindow;

    invoke-virtual {v0}, Landroid/inputmethodservice/SoftInputWindow;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, -0x2

    invoke-virtual {v0, v2, v1}, Landroid/view/Window;->setLayout(II)V

    goto :goto_0
.end method

.method public onCreate()V
    .locals 5

    .prologue
    .line 653
    iget v0, p0, Landroid/inputmethodservice/InputMethodService;->mTheme:I

    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const v2, 0x1030054

    const v3, 0x103007f

    const v4, 0x103013e

    invoke-static {v0, v1, v2, v3, v4}, Landroid/content/res/Resources;->selectSystemTheme(IIIII)I

    move-result v0

    iput v0, p0, Landroid/inputmethodservice/InputMethodService;->mTheme:I

    .line 658
    iget v0, p0, Landroid/inputmethodservice/InputMethodService;->mTheme:I

    invoke-super {p0, v0}, Landroid/inputmethodservice/AbstractInputMethodService;->setTheme(I)V

    .line 659
    invoke-super {p0}, Landroid/inputmethodservice/AbstractInputMethodService;->onCreate()V

    .line 660
    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Landroid/inputmethodservice/InputMethodService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iput-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mImm:Landroid/view/inputmethod/InputMethodManager;

    .line 661
    const-string v0, "layout_inflater"

    invoke-virtual {p0, v0}, Landroid/inputmethodservice/InputMethodService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mInflater:Landroid/view/LayoutInflater;

    .line 663
    new-instance v0, Landroid/inputmethodservice/SoftInputWindow;

    iget v1, p0, Landroid/inputmethodservice/InputMethodService;->mTheme:I

    iget-object v2, p0, Landroid/inputmethodservice/AbstractInputMethodService;->mDispatcherState:Landroid/view/KeyEvent$DispatcherState;

    invoke-direct {v0, p0, v1, v2}, Landroid/inputmethodservice/SoftInputWindow;-><init>(Landroid/content/Context;ILandroid/view/KeyEvent$DispatcherState;)V

    iput-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mWindow:Landroid/inputmethodservice/SoftInputWindow;

    .line 664
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->initViews()V

    .line 665
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mWindow:Landroid/inputmethodservice/SoftInputWindow;

    invoke-virtual {v0}, Landroid/inputmethodservice/SoftInputWindow;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/Window;->setLayout(II)V

    .line 666
    return-void
.end method

.method public onCreateCandidatesView()Landroid/view/View;
    .locals 1

    .prologue
    .line 1355
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreateExtractTextView()Landroid/view/View;
    .locals 3

    .prologue
    .line 1340
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x1090048

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onCreateInputMethodInterface()Landroid/inputmethodservice/AbstractInputMethodService$AbstractInputMethodImpl;
    .locals 1

    .prologue
    .line 895
    new-instance v0, Landroid/inputmethodservice/InputMethodService$InputMethodImpl;

    invoke-direct {v0, p0}, Landroid/inputmethodservice/InputMethodService$InputMethodImpl;-><init>(Landroid/inputmethodservice/InputMethodService;)V

    return-object v0
.end method

.method public onCreateInputMethodSessionInterface()Landroid/inputmethodservice/AbstractInputMethodService$AbstractInputMethodSessionImpl;
    .locals 1

    .prologue
    .line 904
    new-instance v0, Landroid/inputmethodservice/InputMethodService$InputMethodSessionImpl;

    invoke-direct {v0, p0}, Landroid/inputmethodservice/InputMethodService$InputMethodSessionImpl;-><init>(Landroid/inputmethodservice/InputMethodService;)V

    return-object v0
.end method

.method public onCreateInputView()Landroid/view/View;
    .locals 1

    .prologue
    .line 1370
    const/4 v0, 0x0

    return-object v0
.end method

.method protected onCurrentInputMethodSubtypeChanged(Landroid/view/inputmethod/InputMethodSubtype;)V
    .locals 6
    .parameter "newSubtype"

    .prologue
    .line 2462
    sget-boolean v3, Landroid/inputmethodservice/InputMethodService;->DEBUG:Z

    if-eqz v3, :cond_0

    .line 2463
    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodSubtype;->getNameResId()I

    move-result v1

    .line 2464
    .local v1, nameResId:I
    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodSubtype;->getMode()Ljava/lang/String;

    move-result-object v0

    .line 2465
    .local v0, mode:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "changeInputMethodSubtype:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-nez v1, :cond_1

    const-string v3, "<none>"

    :goto_0
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodSubtype;->getLocale()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodSubtype;->getExtraValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2469
    .local v2, output:Ljava/lang/String;
    const-string v3, "InputMethodService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "--- "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2471
    .end local v0           #mode:Ljava/lang/String;
    .end local v1           #nameResId:I
    .end local v2           #output:Ljava/lang/String;
    :cond_0
    return-void

    .line 2465
    .restart local v0       #mode:Ljava/lang/String;
    .restart local v1       #nameResId:I
    :cond_1
    invoke-virtual {p0, v1}, Landroid/inputmethodservice/InputMethodService;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 743
    invoke-super {p0}, Landroid/inputmethodservice/AbstractInputMethodService;->onDestroy()V

    .line 744
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mRootView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mInsetsComputer:Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnComputeInternalInsetsListener(Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;)V

    .line 746
    invoke-direct {p0}, Landroid/inputmethodservice/InputMethodService;->finishViews()V

    .line 747
    iget-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mWindowAdded:Z

    if-eqz v0, :cond_0

    .line 751
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mWindow:Landroid/inputmethodservice/SoftInputWindow;

    invoke-virtual {v0}, Landroid/inputmethodservice/SoftInputWindow;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/Window;->setWindowAnimations(I)V

    .line 752
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mWindow:Landroid/inputmethodservice/SoftInputWindow;

    invoke-virtual {v0}, Landroid/inputmethodservice/SoftInputWindow;->dismiss()V

    .line 754
    :cond_0
    return-void
.end method

.method public onDisplayCompletions([Landroid/view/inputmethod/CompletionInfo;)V
    .locals 0
    .parameter "completions"

    .prologue
    .line 1798
    return-void
.end method

.method public onEvaluateFullscreenMode()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1065
    sget-boolean v2, Landroid/inputmethodservice/InputMethodService;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "InputMethodService"

    const-string v3, "[onEvaluateFullscreenMode]"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1066
    :cond_0
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 1067
    .local v0, config:Landroid/content/res/Configuration;
    iget v2, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_2

    .line 1074
    :cond_1
    :goto_0
    return v1

    .line 1070
    :cond_2
    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService;->mInputEditorInfo:Landroid/view/inputmethod/EditorInfo;

    if-eqz v2, :cond_3

    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService;->mInputEditorInfo:Landroid/view/inputmethod/EditorInfo;

    iget v2, v2, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    const/high16 v3, 0x200

    and-int/2addr v2, v3

    if-nez v2, :cond_1

    .line 1074
    :cond_3
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public onEvaluateInputViewShown()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 1216
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 1217
    .local v0, config:Landroid/content/res/Configuration;
    iget v2, v0, Landroid/content/res/Configuration;->keyboard:I

    if-eq v2, v1, :cond_0

    iget v2, v0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onExtractTextContextMenuItem(I)Z
    .locals 2
    .parameter "id"

    .prologue
    .line 2287
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 2288
    .local v0, ic:Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_0

    .line 2289
    invoke-interface {v0, p1}, Landroid/view/inputmethod/InputConnection;->performContextMenuAction(I)Z

    .line 2291
    :cond_0
    const/4 v1, 0x1

    return v1
.end method

.method public onExtractedCursorMovement(II)V
    .locals 1
    .parameter "dx"
    .parameter "dy"

    .prologue
    .line 2270
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mExtractEditText:Landroid/inputmethodservice/ExtractEditText;

    if-eqz v0, :cond_0

    if-nez p2, :cond_1

    .line 2276
    :cond_0
    :goto_0
    return-void

    .line 2273
    :cond_1
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mExtractEditText:Landroid/inputmethodservice/ExtractEditText;

    invoke-virtual {v0}, Landroid/inputmethodservice/ExtractEditText;->hasVerticalScrollBar()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2274
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/inputmethodservice/InputMethodService;->setCandidatesViewShown(Z)V

    goto :goto_0
.end method

.method public onExtractedDeleteText(II)V
    .locals 3
    .parameter "start"
    .parameter "end"

    .prologue
    .line 2209
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 2210
    .local v0, conn:Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_0

    .line 2211
    invoke-interface {v0, p1, p1}, Landroid/view/inputmethod/InputConnection;->setSelection(II)Z

    .line 2212
    const/4 v1, 0x0

    sub-int v2, p2, p1

    invoke-interface {v0, v1, v2}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    .line 2214
    :cond_0
    return-void
.end method

.method public onExtractedReplaceText(IILjava/lang/CharSequence;)V
    .locals 2
    .parameter "start"
    .parameter "end"
    .parameter "text"

    .prologue
    .line 2220
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 2221
    .local v0, conn:Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_0

    .line 2222
    invoke-interface {v0, p1, p2}, Landroid/view/inputmethod/InputConnection;->setComposingRegion(II)Z

    .line 2223
    const/4 v1, 0x1

    invoke-interface {v0, p3, v1}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 2225
    :cond_0
    return-void
.end method

.method public onExtractedSelectionChanged(II)V
    .locals 1
    .parameter "start"
    .parameter "end"

    .prologue
    .line 2199
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 2200
    .local v0, conn:Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_0

    .line 2201
    invoke-interface {v0, p1, p2}, Landroid/view/inputmethod/InputConnection;->setSelection(II)Z

    .line 2203
    :cond_0
    return-void
.end method

.method public onExtractedSetSpan(Ljava/lang/Object;III)V
    .locals 6
    .parameter "span"
    .parameter "start"
    .parameter "end"
    .parameter "flags"

    .prologue
    const/4 v5, 0x1

    .line 2231
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 2232
    .local v0, conn:Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_0

    .line 2233
    invoke-interface {v0, p2, p3}, Landroid/view/inputmethod/InputConnection;->setSelection(II)Z

    move-result v2

    if-nez v2, :cond_1

    .line 2241
    :cond_0
    :goto_0
    return-void

    .line 2234
    :cond_1
    invoke-interface {v0, v5}, Landroid/view/inputmethod/InputConnection;->getSelectedText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 2235
    .local v1, text:Ljava/lang/CharSequence;
    instance-of v2, v1, Landroid/text/Spannable;

    if-eqz v2, :cond_0

    move-object v2, v1

    .line 2236
    check-cast v2, Landroid/text/Spannable;

    const/4 v3, 0x0

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    invoke-interface {v2, p1, v3, v4, p4}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 2237
    invoke-interface {v0, p2, p3}, Landroid/view/inputmethod/InputConnection;->setComposingRegion(II)Z

    .line 2238
    invoke-interface {v0, v1, v5}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    goto :goto_0
.end method

.method public onExtractedTextClicked()V
    .locals 1

    .prologue
    .line 2251
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mExtractEditText:Landroid/inputmethodservice/ExtractEditText;

    if-nez v0, :cond_1

    .line 2257
    :cond_0
    :goto_0
    return-void

    .line 2254
    :cond_1
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mExtractEditText:Landroid/inputmethodservice/ExtractEditText;

    invoke-virtual {v0}, Landroid/inputmethodservice/ExtractEditText;->hasVerticalScrollBar()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2255
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/inputmethodservice/InputMethodService;->setCandidatesViewShown(Z)V

    goto :goto_0
.end method

.method public onExtractingInputChanged(Landroid/view/inputmethod/EditorInfo;)V
    .locals 1
    .parameter "ei"

    .prologue
    .line 2398
    iget v0, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    if-nez v0, :cond_0

    .line 2399
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/inputmethodservice/InputMethodService;->requestHideSelf(I)V

    .line 2401
    :cond_0
    return-void
.end method

.method public onFinishCandidatesView(Z)V
    .locals 1
    .parameter "finishingInput"

    .prologue
    .line 1447
    if-nez p1, :cond_0

    .line 1448
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 1449
    .local v0, ic:Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_0

    .line 1450
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->finishComposingText()Z

    .line 1453
    .end local v0           #ic:Landroid/view/inputmethod/InputConnection;
    :cond_0
    return-void
.end method

.method public onFinishInput()V
    .locals 1

    .prologue
    .line 1781
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 1782
    .local v0, ic:Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_0

    .line 1783
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->finishComposingText()Z

    .line 1785
    :cond_0
    return-void
.end method

.method public onFinishInputView(Z)V
    .locals 1
    .parameter "finishingInput"

    .prologue
    .line 1402
    if-nez p1, :cond_0

    .line 1403
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 1404
    .local v0, ic:Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_0

    .line 1405
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->finishComposingText()Z

    .line 1408
    .end local v0           #ic:Landroid/view/inputmethod/InputConnection;
    :cond_0
    return-void
.end method

.method public onInitializeInterface()V
    .locals 0

    .prologue
    .line 676
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v0, 0x0

    .line 1935
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    .line 1936
    invoke-direct {p0, v0}, Landroid/inputmethodservice/InputMethodService;->handleBack(Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1937
    invoke-virtual {p2}, Landroid/view/KeyEvent;->startTracking()V

    .line 1938
    const/4 v0, 0x1

    .line 1942
    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, -0x1

    invoke-virtual {p0, p1, p2, v0}, Landroid/inputmethodservice/InputMethodService;->doMovementKey(ILandroid/view/KeyEvent;I)Z

    move-result v0

    goto :goto_0
.end method

.method public onKeyLongPress(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 1951
    const/4 v0, 0x0

    return v0
.end method

.method public onKeyMultiple(IILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "count"
    .parameter "event"

    .prologue
    .line 1967
    invoke-virtual {p0, p1, p3, p2}, Landroid/inputmethodservice/InputMethodService;->doMovementKey(ILandroid/view/KeyEvent;I)Z

    move-result v0

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 1983
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isTracking()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1985
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/inputmethodservice/InputMethodService;->handleBack(Z)Z

    move-result v0

    .line 1988
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x2

    invoke-virtual {p0, p1, p2, v0}, Landroid/inputmethodservice/InputMethodService;->doMovementKey(ILandroid/view/KeyEvent;I)Z

    move-result v0

    goto :goto_0
.end method

.method public onShowInputRequested(IZ)Z
    .locals 5
    .parameter "flags"
    .parameter "configChange"

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 1471
    sget-boolean v2, Landroid/inputmethodservice/InputMethodService;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "InputMethodService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[onShowInputRequested] flags = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1473
    :cond_0
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->onEvaluateInputViewShown()Z

    move-result v2

    if-nez v2, :cond_2

    .line 1474
    sget-boolean v1, Landroid/inputmethodservice/InputMethodService;->DEBUG:Z

    if-eqz v1, :cond_1

    const-string v1, "InputMethodService"

    const-string v2, "[onShowInputRequested] false 1"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1504
    :cond_1
    :goto_0
    return v0

    .line 1477
    :cond_2
    and-int/lit8 v2, p1, 0x1

    if-nez v2, :cond_3

    .line 1478
    if-nez p2, :cond_3

    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->onEvaluateFullscreenMode()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1484
    sget-boolean v1, Landroid/inputmethodservice/InputMethodService;->DEBUG:Z

    if-eqz v1, :cond_1

    const-string v1, "InputMethodService"

    const-string v2, "[onShowInputRequested] false 2"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1500
    :cond_3
    and-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_4

    .line 1501
    iput-boolean v1, p0, Landroid/inputmethodservice/InputMethodService;->mShowInputForced:Z

    .line 1503
    :cond_4
    sget-boolean v0, Landroid/inputmethodservice/InputMethodService;->DEBUG:Z

    if-eqz v0, :cond_5

    const-string v0, "InputMethodService"

    const-string v2, "[onShowInputRequested] true"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    move v0, v1

    .line 1504
    goto :goto_0
.end method

.method public onStartCandidatesView(Landroid/view/inputmethod/EditorInfo;Z)V
    .locals 0
    .parameter "info"
    .parameter "restarting"

    .prologue
    .line 1431
    return-void
.end method

.method public onStartInput(Landroid/view/inputmethod/EditorInfo;Z)V
    .locals 0
    .parameter "attribute"
    .parameter "restarting"

    .prologue
    .line 1723
    return-void
.end method

.method public onStartInputView(Landroid/view/inputmethod/EditorInfo;Z)V
    .locals 0
    .parameter "info"
    .parameter "restarting"

    .prologue
    .line 1386
    return-void
.end method

.method public onTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 1993
    const/4 v0, 0x0

    return v0
.end method

.method public onUnbindInput()V
    .locals 0

    .prologue
    .line 1707
    return-void
.end method

.method public onUpdateCursor(Landroid/graphics/Rect;)V
    .locals 0
    .parameter "newCursor"

    .prologue
    .line 1864
    return-void
.end method

.method public onUpdateExtractedText(ILandroid/view/inputmethod/ExtractedText;)V
    .locals 1
    .parameter "token"
    .parameter "text"

    .prologue
    .line 1807
    iget v0, p0, Landroid/inputmethodservice/InputMethodService;->mExtractedToken:I

    if-eq v0, p1, :cond_1

    .line 1816
    :cond_0
    :goto_0
    return-void

    .line 1810
    :cond_1
    if-eqz p2, :cond_0

    .line 1811
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mExtractEditText:Landroid/inputmethodservice/ExtractEditText;

    if-eqz v0, :cond_0

    .line 1812
    iput-object p2, p0, Landroid/inputmethodservice/InputMethodService;->mExtractedText:Landroid/view/inputmethod/ExtractedText;

    .line 1813
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mExtractEditText:Landroid/inputmethodservice/ExtractEditText;

    invoke-virtual {v0, p2}, Landroid/inputmethodservice/ExtractEditText;->setExtractedText(Landroid/view/inputmethod/ExtractedText;)V

    goto :goto_0
.end method

.method public onUpdateExtractingViews(Landroid/view/inputmethod/EditorInfo;)V
    .locals 4
    .parameter "ei"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2362
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->isExtractViewShown()Z

    move-result v2

    if-nez v2, :cond_1

    .line 2389
    :cond_0
    :goto_0
    return-void

    .line 2366
    :cond_1
    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService;->mExtractAccessories:Landroid/view/ViewGroup;

    if-eqz v2, :cond_0

    .line 2369
    iget-object v2, p1, Landroid/view/inputmethod/EditorInfo;->actionLabel:Ljava/lang/CharSequence;

    if-nez v2, :cond_2

    iget v2, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    and-int/lit16 v2, v2, 0xff

    if-eq v2, v0, :cond_3

    iget v2, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    const/high16 v3, 0x2000

    and-int/2addr v2, v3

    if-nez v2, :cond_3

    iget v2, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    if-eqz v2, :cond_3

    .line 2373
    .local v0, hasAction:Z
    :cond_2
    :goto_1
    if-eqz v0, :cond_5

    .line 2374
    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService;->mExtractAccessories:Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 2375
    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mExtractAction:Landroid/widget/Button;

    if-eqz v1, :cond_0

    .line 2376
    iget-object v1, p1, Landroid/view/inputmethod/EditorInfo;->actionLabel:Ljava/lang/CharSequence;

    if-eqz v1, :cond_4

    .line 2377
    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mExtractAction:Landroid/widget/Button;

    iget-object v2, p1, Landroid/view/inputmethod/EditorInfo;->actionLabel:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 2381
    :goto_2
    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mExtractAction:Landroid/widget/Button;

    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService;->mActionClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .end local v0           #hasAction:Z
    :cond_3
    move v0, v1

    .line 2369
    goto :goto_1

    .line 2379
    .restart local v0       #hasAction:Z
    :cond_4
    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mExtractAction:Landroid/widget/Button;

    iget v2, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    invoke-virtual {p0, v2}, Landroid/inputmethodservice/InputMethodService;->getTextForImeAction(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 2384
    :cond_5
    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mExtractAccessories:Landroid/view/ViewGroup;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 2385
    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mExtractAction:Landroid/widget/Button;

    if-eqz v1, :cond_0

    .line 2386
    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mExtractAction:Landroid/widget/Button;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method public onUpdateExtractingVisibility(Landroid/view/inputmethod/EditorInfo;)V
    .locals 2
    .parameter "ei"

    .prologue
    .line 2336
    iget v0, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    if-eqz v0, :cond_0

    iget v0, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    const/high16 v1, 0x1000

    and-int/2addr v0, v1

    if-eqz v0, :cond_1

    .line 2339
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/inputmethodservice/InputMethodService;->setExtractViewShown(Z)V

    .line 2344
    :goto_0
    return-void

    .line 2343
    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/inputmethodservice/InputMethodService;->setExtractViewShown(Z)V

    goto :goto_0
.end method

.method public onUpdateSelection(IIIIII)V
    .locals 4
    .parameter "oldSelStart"
    .parameter "oldSelEnd"
    .parameter "newSelStart"
    .parameter "newSelEnd"
    .parameter "candidatesStart"
    .parameter "candidatesEnd"

    .prologue
    .line 1830
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mExtractEditText:Landroid/inputmethodservice/ExtractEditText;

    .line 1831
    .local v0, eet:Landroid/inputmethodservice/ExtractEditText;
    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->isFullscreenMode()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/inputmethodservice/InputMethodService;->mExtractedText:Landroid/view/inputmethod/ExtractedText;

    if-eqz v3, :cond_2

    .line 1832
    iget-object v3, p0, Landroid/inputmethodservice/InputMethodService;->mExtractedText:Landroid/view/inputmethod/ExtractedText;

    iget v2, v3, Landroid/view/inputmethod/ExtractedText;->startOffset:I

    .line 1833
    .local v2, off:I
    invoke-virtual {v0}, Landroid/inputmethodservice/ExtractEditText;->startInternalChanges()V

    .line 1834
    sub-int/2addr p3, v2

    .line 1835
    sub-int/2addr p4, v2

    .line 1836
    invoke-virtual {v0}, Landroid/inputmethodservice/ExtractEditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->length()I

    move-result v1

    .line 1837
    .local v1, len:I
    if-gez p3, :cond_3

    const/4 p3, 0x0

    .line 1839
    :cond_0
    :goto_0
    if-gez p4, :cond_4

    const/4 p4, 0x0

    .line 1841
    :cond_1
    :goto_1
    invoke-virtual {v0, p3, p4}, Landroid/inputmethodservice/ExtractEditText;->setSelection(II)V

    .line 1842
    invoke-virtual {v0}, Landroid/inputmethodservice/ExtractEditText;->finishInternalChanges()V

    .line 1844
    .end local v1           #len:I
    .end local v2           #off:I
    :cond_2
    return-void

    .line 1838
    .restart local v1       #len:I
    .restart local v2       #off:I
    :cond_3
    if-le p3, v1, :cond_0

    move p3, v1

    goto :goto_0

    .line 1840
    :cond_4
    if-le p4, v1, :cond_1

    move p4, v1

    goto :goto_1
.end method

.method public onViewClicked(Z)V
    .locals 0
    .parameter "focusChanged"

    .prologue
    .line 1855
    return-void
.end method

.method public onWindowHidden()V
    .locals 0

    .prologue
    .line 1686
    return-void
.end method

.method public onWindowShown()V
    .locals 0

    .prologue
    .line 1678
    return-void
.end method

.method reportExtractedMovement(II)V
    .locals 2
    .parameter "keyCode"
    .parameter "count"

    .prologue
    .line 2015
    const/4 v0, 0x0

    .local v0, dx:I
    const/4 v1, 0x0

    .line 2016
    .local v1, dy:I
    packed-switch p1, :pswitch_data_0

    .line 2030
    :goto_0
    invoke-virtual {p0, v0, v1}, Landroid/inputmethodservice/InputMethodService;->onExtractedCursorMovement(II)V

    .line 2031
    return-void

    .line 2018
    :pswitch_0
    neg-int v0, p2

    .line 2019
    goto :goto_0

    .line 2021
    :pswitch_1
    move v0, p2

    .line 2022
    goto :goto_0

    .line 2024
    :pswitch_2
    neg-int v1, p2

    .line 2025
    goto :goto_0

    .line 2027
    :pswitch_3
    move v1, p2

    goto :goto_0

    .line 2016
    nop

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public requestHideSelf(I)V
    .locals 2
    .parameter "flags"

    .prologue
    .line 1875
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mImm:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mToken:Landroid/os/IBinder;

    invoke-virtual {v0, v1, p1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromInputMethod(Landroid/os/IBinder;I)V

    .line 1876
    return-void
.end method

.method public sendDefaultEditorAction(Z)Z
    .locals 5
    .parameter "fromEnterKey"

    .prologue
    const/4 v2, 0x1

    .line 2138
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v0

    .line 2139
    .local v0, ei:Landroid/view/inputmethod/EditorInfo;
    if-eqz v0, :cond_2

    if-eqz p1, :cond_0

    iget v3, v0, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    const/high16 v4, 0x4000

    and-int/2addr v3, v4

    if-nez v3, :cond_2

    :cond_0
    iget v3, v0, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    and-int/lit16 v3, v3, 0xff

    if-eq v3, v2, :cond_2

    .line 2147
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v1

    .line 2148
    .local v1, ic:Landroid/view/inputmethod/InputConnection;
    if-eqz v1, :cond_1

    .line 2149
    iget v3, v0, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    and-int/lit16 v3, v3, 0xff

    invoke-interface {v1, v3}, Landroid/view/inputmethod/InputConnection;->performEditorAction(I)Z

    .line 2154
    .end local v1           #ic:Landroid/view/inputmethod/InputConnection;
    :cond_1
    :goto_0
    return v2

    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public sendDownUpKeyEvents(I)V
    .locals 16
    .parameter "keyEventCode"

    .prologue
    .line 2110
    invoke-virtual/range {p0 .. p0}, Landroid/inputmethodservice/InputMethodService;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v15

    .line 2111
    .local v15, ic:Landroid/view/inputmethod/InputConnection;
    if-nez v15, :cond_0

    .line 2119
    :goto_0
    return-void

    .line 2112
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 2113
    .local v1, eventTime:J
    new-instance v0, Landroid/view/KeyEvent;

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, -0x1

    const/4 v10, 0x0

    const/4 v11, 0x6

    move-wide v3, v1

    move/from16 v6, p1

    invoke-direct/range {v0 .. v11}, Landroid/view/KeyEvent;-><init>(JJIIIIIII)V

    invoke-interface {v15, v0}, Landroid/view/inputmethod/InputConnection;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    .line 2116
    new-instance v3, Landroid/view/KeyEvent;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    const/4 v8, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, -0x1

    const/4 v13, 0x0

    const/4 v14, 0x6

    move-wide v6, v1

    move/from16 v9, p1

    invoke-direct/range {v3 .. v14}, Landroid/view/KeyEvent;-><init>(JJIIIIIII)V

    invoke-interface {v15, v3}, Landroid/view/inputmethod/InputConnection;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    goto :goto_0
.end method

.method public sendKeyChar(C)V
    .locals 3
    .parameter "charCode"

    .prologue
    const/4 v2, 0x1

    .line 2172
    packed-switch p1, :pswitch_data_0

    .line 2180
    const/16 v1, 0x30

    if-lt p1, v1, :cond_1

    const/16 v1, 0x39

    if-gt p1, v1, :cond_1

    .line 2181
    add-int/lit8 v1, p1, -0x30

    add-int/lit8 v1, v1, 0x7

    invoke-virtual {p0, v1}, Landroid/inputmethodservice/InputMethodService;->sendDownUpKeyEvents(I)V

    .line 2190
    :cond_0
    :goto_0
    return-void

    .line 2174
    :pswitch_0
    invoke-virtual {p0, v2}, Landroid/inputmethodservice/InputMethodService;->sendDefaultEditorAction(Z)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2175
    const/16 v1, 0x42

    invoke-virtual {p0, v1}, Landroid/inputmethodservice/InputMethodService;->sendDownUpKeyEvents(I)V

    goto :goto_0

    .line 2183
    :cond_1
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 2184
    .local v0, ic:Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_0

    .line 2185
    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v2}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    goto :goto_0

    .line 2172
    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_0
    .end packed-switch
.end method

.method public setBackDisposition(I)V
    .locals 0
    .parameter "disposition"

    .prologue
    .line 916
    iput p1, p0, Landroid/inputmethodservice/InputMethodService;->mBackDisposition:I

    .line 917
    return-void
.end method

.method public setCandidatesView(Landroid/view/View;)V
    .locals 4
    .parameter "view"

    .prologue
    .line 1313
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mCandidatesFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 1314
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mCandidatesFrame:Landroid/widget/FrameLayout;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, p1, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1317
    return-void
.end method

.method public setCandidatesViewShown(Z)V
    .locals 1
    .parameter "shown"

    .prologue
    .line 1226
    invoke-virtual {p0, p1}, Landroid/inputmethodservice/InputMethodService;->updateCandidatesVisibility(Z)V

    .line 1227
    iget-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mShowInputRequested:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mWindowVisible:Z

    if-eq v0, p1, :cond_0

    .line 1231
    if-eqz p1, :cond_1

    .line 1232
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/inputmethodservice/InputMethodService;->showWindow(Z)V

    .line 1237
    :cond_0
    :goto_0
    return-void

    .line 1234
    :cond_1
    invoke-direct {p0}, Landroid/inputmethodservice/InputMethodService;->doHideWindow()V

    goto :goto_0
.end method

.method public setExtractView(Landroid/view/View;)V
    .locals 4
    .parameter "view"

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 1283
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mExtractFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 1284
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mExtractFrame:Landroid/widget/FrameLayout;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, p1, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1287
    iput-object p1, p0, Landroid/inputmethodservice/InputMethodService;->mExtractView:Landroid/view/View;

    .line 1288
    if-eqz p1, :cond_1

    .line 1289
    const v0, 0x1020025

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/inputmethodservice/ExtractEditText;

    iput-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mExtractEditText:Landroid/inputmethodservice/ExtractEditText;

    .line 1291
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mExtractEditText:Landroid/inputmethodservice/ExtractEditText;

    invoke-virtual {v0, p0}, Landroid/inputmethodservice/ExtractEditText;->setIME(Landroid/inputmethodservice/InputMethodService;)V

    .line 1292
    const v0, 0x102028e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mExtractAction:Landroid/widget/Button;

    .line 1294
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mExtractAction:Landroid/widget/Button;

    if-eqz v0, :cond_0

    .line 1295
    const v0, 0x102028d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mExtractAccessories:Landroid/view/ViewGroup;

    .line 1298
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/inputmethodservice/InputMethodService;->startExtractingText(Z)V

    .line 1304
    :goto_0
    return-void

    .line 1300
    :cond_1
    iput-object v2, p0, Landroid/inputmethodservice/InputMethodService;->mExtractEditText:Landroid/inputmethodservice/ExtractEditText;

    .line 1301
    iput-object v2, p0, Landroid/inputmethodservice/InputMethodService;->mExtractAccessories:Landroid/view/ViewGroup;

    .line 1302
    iput-object v2, p0, Landroid/inputmethodservice/InputMethodService;->mExtractAction:Landroid/widget/Button;

    goto :goto_0
.end method

.method public setExtractViewShown(Z)V
    .locals 1
    .parameter "shown"

    .prologue
    .line 1087
    iget-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mExtractViewHidden:Z

    if-ne v0, p1, :cond_0

    .line 1088
    if-nez p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mExtractViewHidden:Z

    .line 1089
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->updateExtractFrameVisibility()V

    .line 1091
    :cond_0
    return-void

    .line 1088
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setInputView(Landroid/view/View;)V
    .locals 4
    .parameter "view"

    .prologue
    .line 1326
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mInputFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 1327
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mInputFrame:Landroid/widget/FrameLayout;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, p1, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1330
    iput-object p1, p0, Landroid/inputmethodservice/InputMethodService;->mInputView:Landroid/view/View;

    .line 1331
    return-void
.end method

.method public setTheme(I)V
    .locals 2
    .parameter "theme"

    .prologue
    .line 646
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mWindow:Landroid/inputmethodservice/SoftInputWindow;

    if-eqz v0, :cond_0

    .line 647
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Must be called before onCreate()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 649
    :cond_0
    iput p1, p0, Landroid/inputmethodservice/InputMethodService;->mTheme:I

    .line 650
    return-void
.end method

.method public showStatusIcon(I)V
    .locals 3
    .parameter "iconResId"

    .prologue
    .line 1262
    iput p1, p0, Landroid/inputmethodservice/InputMethodService;->mStatusIcon:I

    .line 1263
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mImm:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mToken:Landroid/os/IBinder;

    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2, p1}, Landroid/view/inputmethod/InputMethodManager;->showStatusIcon(Landroid/os/IBinder;Ljava/lang/String;I)V

    .line 1264
    return-void
.end method

.method public showWindow(Z)V
    .locals 5
    .parameter "showInput"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 1508
    sget-boolean v0, Landroid/inputmethodservice/InputMethodService;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "InputMethodService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Showing window: showInput="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mShowInputRequested="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/inputmethodservice/InputMethodService;->mShowInputRequested:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mWindowAdded="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/inputmethodservice/InputMethodService;->mWindowAdded:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mWindowCreated="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/inputmethodservice/InputMethodService;->mWindowCreated:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mWindowVisible="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/inputmethodservice/InputMethodService;->mWindowVisible:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mInputStarted="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/inputmethodservice/InputMethodService;->mInputStarted:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1515
    :cond_0
    iget-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mInShowWindow:Z

    if-eqz v0, :cond_1

    .line 1516
    const-string v0, "InputMethodService"

    const-string v1, "Re-entrance in to showWindow"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1528
    :goto_0
    return-void

    .line 1521
    :cond_1
    :try_start_0
    iget-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mWindowVisible:Z

    iput-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mWindowWasVisible:Z

    .line 1522
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mInShowWindow:Z

    .line 1523
    invoke-virtual {p0, p1}, Landroid/inputmethodservice/InputMethodService;->showWindowInner(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1525
    iput-boolean v3, p0, Landroid/inputmethodservice/InputMethodService;->mWindowWasVisible:Z

    .line 1526
    iput-boolean v4, p0, Landroid/inputmethodservice/InputMethodService;->mInShowWindow:Z

    goto :goto_0

    .line 1525
    :catchall_0
    move-exception v0

    iput-boolean v3, p0, Landroid/inputmethodservice/InputMethodService;->mWindowWasVisible:Z

    .line 1526
    iput-boolean v4, p0, Landroid/inputmethodservice/InputMethodService;->mInShowWindow:Z

    .line 1525
    throw v0
.end method

.method showWindowInner(Z)V
    .locals 9
    .parameter "showInput"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 1531
    const/4 v0, 0x0

    .line 1532
    .local v0, doShowInput:Z
    iget-boolean v3, p0, Landroid/inputmethodservice/InputMethodService;->mWindowVisible:Z

    .line 1533
    .local v3, wasVisible:Z
    iput-boolean v7, p0, Landroid/inputmethodservice/InputMethodService;->mWindowVisible:Z

    .line 1534
    iget-boolean v4, p0, Landroid/inputmethodservice/InputMethodService;->mShowInputRequested:Z

    if-nez v4, :cond_b

    .line 1535
    iget-boolean v4, p0, Landroid/inputmethodservice/InputMethodService;->mInputStarted:Z

    if-eqz v4, :cond_0

    .line 1536
    if-eqz p1, :cond_0

    .line 1537
    const/4 v0, 0x1

    .line 1538
    iput-boolean v7, p0, Landroid/inputmethodservice/InputMethodService;->mShowInputRequested:Z

    .line 1545
    :cond_0
    :goto_0
    sget-boolean v4, Landroid/inputmethodservice/InputMethodService;->DEBUG:Z

    if-eqz v4, :cond_1

    const-string v4, "InputMethodService"

    const-string/jumbo v5, "showWindow: updating UI"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1546
    :cond_1
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->initialize()V

    .line 1547
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->updateFullscreenMode()V

    .line 1548
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->updateInputViewShown()V

    .line 1550
    iget-boolean v4, p0, Landroid/inputmethodservice/InputMethodService;->mWindowAdded:Z

    if-eqz v4, :cond_2

    iget-boolean v4, p0, Landroid/inputmethodservice/InputMethodService;->mWindowCreated:Z

    if-nez v4, :cond_5

    .line 1551
    :cond_2
    iput-boolean v7, p0, Landroid/inputmethodservice/InputMethodService;->mWindowAdded:Z

    .line 1552
    iput-boolean v7, p0, Landroid/inputmethodservice/InputMethodService;->mWindowCreated:Z

    .line 1553
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->initialize()V

    .line 1554
    sget-boolean v4, Landroid/inputmethodservice/InputMethodService;->DEBUG:Z

    if-eqz v4, :cond_3

    const-string v4, "InputMethodService"

    const-string v5, "CALL: onCreateCandidatesView"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1555
    :cond_3
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->onCreateCandidatesView()Landroid/view/View;

    move-result-object v2

    .line 1556
    .local v2, v:Landroid/view/View;
    sget-boolean v4, Landroid/inputmethodservice/InputMethodService;->DEBUG:Z

    if-eqz v4, :cond_4

    const-string v4, "InputMethodService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "showWindow: candidates="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1557
    :cond_4
    if-eqz v2, :cond_5

    .line 1558
    invoke-virtual {p0, v2}, Landroid/inputmethodservice/InputMethodService;->setCandidatesView(Landroid/view/View;)V

    .line 1561
    .end local v2           #v:Landroid/view/View;
    :cond_5
    iget-boolean v4, p0, Landroid/inputmethodservice/InputMethodService;->mShowInputRequested:Z

    if-eqz v4, :cond_c

    .line 1562
    iget-boolean v4, p0, Landroid/inputmethodservice/InputMethodService;->mInputViewStarted:Z

    if-nez v4, :cond_7

    .line 1563
    sget-boolean v4, Landroid/inputmethodservice/InputMethodService;->DEBUG:Z

    if-eqz v4, :cond_6

    const-string v4, "InputMethodService"

    const-string v5, "CALL: onStartInputView"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1564
    :cond_6
    iput-boolean v7, p0, Landroid/inputmethodservice/InputMethodService;->mInputViewStarted:Z

    .line 1565
    iget-object v4, p0, Landroid/inputmethodservice/InputMethodService;->mInputEditorInfo:Landroid/view/inputmethod/EditorInfo;

    invoke-virtual {p0, v4, v8}, Landroid/inputmethodservice/InputMethodService;->onStartInputView(Landroid/view/inputmethod/EditorInfo;Z)V

    .line 1573
    :cond_7
    :goto_1
    if-eqz v0, :cond_8

    .line 1574
    invoke-virtual {p0, v8}, Landroid/inputmethodservice/InputMethodService;->startExtractingText(Z)V

    .line 1577
    :cond_8
    if-nez v3, :cond_a

    .line 1578
    sget-boolean v4, Landroid/inputmethodservice/InputMethodService;->DEBUG:Z

    if-eqz v4, :cond_9

    const-string v4, "InputMethodService"

    const-string/jumbo v5, "showWindow: showing!"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1579
    :cond_9
    iget-object v4, p0, Landroid/inputmethodservice/InputMethodService;->mImm:Landroid/view/inputmethod/InputMethodManager;

    iget-object v5, p0, Landroid/inputmethodservice/InputMethodService;->mToken:Landroid/os/IBinder;

    iget v6, p0, Landroid/inputmethodservice/InputMethodService;->mBackDisposition:I

    invoke-virtual {v4, v5, v7, v6}, Landroid/view/inputmethod/InputMethodManager;->setImeWindowStatus(Landroid/os/IBinder;II)V

    .line 1580
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->onWindowShown()V

    .line 1585
    :try_start_0
    iget-object v4, p0, Landroid/inputmethodservice/InputMethodService;->mWindow:Landroid/inputmethodservice/SoftInputWindow;

    invoke-virtual {v4}, Landroid/inputmethodservice/SoftInputWindow;->show()V
    :try_end_0
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 1601
    :goto_2
    invoke-direct {p0, v7}, Landroid/inputmethodservice/InputMethodService;->broadcastIMEstate(Z)V

    .line 1603
    :cond_a
    return-void

    .line 1542
    :cond_b
    const/4 p1, 0x1

    goto/16 :goto_0

    .line 1567
    :cond_c
    iget-boolean v4, p0, Landroid/inputmethodservice/InputMethodService;->mCandidatesViewStarted:Z

    if-nez v4, :cond_7

    .line 1568
    sget-boolean v4, Landroid/inputmethodservice/InputMethodService;->DEBUG:Z

    if-eqz v4, :cond_d

    const-string v4, "InputMethodService"

    const-string v5, "CALL: onStartCandidatesView"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1569
    :cond_d
    iput-boolean v7, p0, Landroid/inputmethodservice/InputMethodService;->mCandidatesViewStarted:Z

    .line 1570
    iget-object v4, p0, Landroid/inputmethodservice/InputMethodService;->mInputEditorInfo:Landroid/view/inputmethod/EditorInfo;

    invoke-virtual {p0, v4, v8}, Landroid/inputmethodservice/InputMethodService;->onStartCandidatesView(Landroid/view/inputmethod/EditorInfo;Z)V

    goto :goto_1

    .line 1587
    :catch_0
    move-exception v1

    .line 1588
    .local v1, e:Landroid/view/WindowManager$BadTokenException;
    const-string v4, "InputMethodService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "BadTokenException !!! - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1589
    invoke-direct {p0}, Landroid/inputmethodservice/InputMethodService;->handleError()V

    goto :goto_2

    .line 1590
    .end local v1           #e:Landroid/view/WindowManager$BadTokenException;
    :catch_1
    move-exception v1

    .line 1591
    .local v1, e:Ljava/lang/Exception;
    const-string v4, "InputMethodService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "show() Exception !!! - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1592
    invoke-direct {p0}, Landroid/inputmethodservice/InputMethodService;->handleError()V

    .line 1595
    const-string v4, "InputMethodService"

    const-string v5, "[showWindowInner] Restart SIP window"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1596
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->onDestroy()V

    .line 1597
    const/4 v4, 0x0

    iput-object v4, p0, Landroid/inputmethodservice/InputMethodService;->mWindow:Landroid/inputmethodservice/SoftInputWindow;

    .line 1598
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->onCreate()V

    goto :goto_2
.end method

.method startExtractingText(Z)V
    .locals 9
    .parameter "inputChanged"

    .prologue
    const/4 v8, 0x1

    .line 2404
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mExtractEditText:Landroid/inputmethodservice/ExtractEditText;

    .line 2405
    .local v0, eet:Landroid/inputmethodservice/ExtractEditText;
    if-eqz v0, :cond_4

    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getCurrentInputStarted()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->isFullscreenMode()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 2407
    iget v5, p0, Landroid/inputmethodservice/InputMethodService;->mExtractedToken:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Landroid/inputmethodservice/InputMethodService;->mExtractedToken:I

    .line 2408
    new-instance v4, Landroid/view/inputmethod/ExtractedTextRequest;

    invoke-direct {v4}, Landroid/view/inputmethod/ExtractedTextRequest;-><init>()V

    .line 2409
    .local v4, req:Landroid/view/inputmethod/ExtractedTextRequest;
    iget v5, p0, Landroid/inputmethodservice/InputMethodService;->mExtractedToken:I

    iput v5, v4, Landroid/view/inputmethod/ExtractedTextRequest;->token:I

    .line 2410
    iput v8, v4, Landroid/view/inputmethod/ExtractedTextRequest;->flags:I

    .line 2411
    const/16 v5, 0xa

    iput v5, v4, Landroid/view/inputmethod/ExtractedTextRequest;->hintMaxLines:I

    .line 2412
    const/16 v5, 0x2710

    iput v5, v4, Landroid/view/inputmethod/ExtractedTextRequest;->hintMaxChars:I

    .line 2413
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v2

    .line 2414
    .local v2, ic:Landroid/view/inputmethod/InputConnection;
    if-nez v2, :cond_5

    const/4 v5, 0x0

    :goto_0
    iput-object v5, p0, Landroid/inputmethodservice/InputMethodService;->mExtractedText:Landroid/view/inputmethod/ExtractedText;

    .line 2416
    iget-object v5, p0, Landroid/inputmethodservice/InputMethodService;->mExtractedText:Landroid/view/inputmethod/ExtractedText;

    if-eqz v5, :cond_0

    if-nez v2, :cond_1

    .line 2417
    :cond_0
    const-string v5, "InputMethodService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unexpected null in startExtractingText : mExtractedText = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Landroid/inputmethodservice/InputMethodService;->mExtractedText:Landroid/view/inputmethod/ExtractedText;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", input connection = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2420
    :cond_1
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v1

    .line 2423
    .local v1, ei:Landroid/view/inputmethod/EditorInfo;
    :try_start_0
    invoke-virtual {v0}, Landroid/inputmethodservice/ExtractEditText;->startInternalChanges()V

    .line 2424
    invoke-virtual {p0, v1}, Landroid/inputmethodservice/InputMethodService;->onUpdateExtractingVisibility(Landroid/view/inputmethod/EditorInfo;)V

    .line 2425
    invoke-virtual {p0, v1}, Landroid/inputmethodservice/InputMethodService;->onUpdateExtractingViews(Landroid/view/inputmethod/EditorInfo;)V

    .line 2426
    iget v3, v1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    .line 2427
    .local v3, inputType:I
    and-int/lit8 v5, v3, 0xf

    if-ne v5, v8, :cond_2

    .line 2429
    const/high16 v5, 0x4

    and-int/2addr v5, v3

    if-eqz v5, :cond_2

    .line 2430
    const/high16 v5, 0x2

    or-int/2addr v3, v5

    .line 2433
    :cond_2
    invoke-virtual {v0, v3}, Landroid/inputmethodservice/ExtractEditText;->setInputType(I)V

    .line 2434
    iget-object v5, v1, Landroid/view/inputmethod/EditorInfo;->hintText:Ljava/lang/CharSequence;

    invoke-virtual {v0, v5}, Landroid/inputmethodservice/ExtractEditText;->setHint(Ljava/lang/CharSequence;)V

    .line 2435
    iget-object v5, p0, Landroid/inputmethodservice/InputMethodService;->mExtractedText:Landroid/view/inputmethod/ExtractedText;

    if-eqz v5, :cond_6

    .line 2436
    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Landroid/inputmethodservice/ExtractEditText;->setEnabled(Z)V

    .line 2437
    iget-object v5, p0, Landroid/inputmethodservice/InputMethodService;->mExtractedText:Landroid/view/inputmethod/ExtractedText;

    invoke-virtual {v0, v5}, Landroid/inputmethodservice/ExtractEditText;->setExtractedText(Landroid/view/inputmethod/ExtractedText;)V

    .line 2444
    :goto_1
    iget v5, v1, Landroid/view/inputmethod/EditorInfo;->transformationType:I

    if-ne v5, v8, :cond_3

    .line 2445
    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/inputmethodservice/ExtractEditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2447
    :cond_3
    invoke-virtual {v0}, Landroid/inputmethodservice/ExtractEditText;->finishInternalChanges()V

    .line 2450
    if-eqz p1, :cond_4

    .line 2451
    invoke-virtual {p0, v1}, Landroid/inputmethodservice/InputMethodService;->onExtractingInputChanged(Landroid/view/inputmethod/EditorInfo;)V

    .line 2454
    .end local v1           #ei:Landroid/view/inputmethod/EditorInfo;
    .end local v2           #ic:Landroid/view/inputmethod/InputConnection;
    .end local v3           #inputType:I
    .end local v4           #req:Landroid/view/inputmethod/ExtractedTextRequest;
    :cond_4
    return-void

    .line 2414
    .restart local v2       #ic:Landroid/view/inputmethod/InputConnection;
    .restart local v4       #req:Landroid/view/inputmethod/ExtractedTextRequest;
    :cond_5
    invoke-interface {v2, v4, v8}, Landroid/view/inputmethod/InputConnection;->getExtractedText(Landroid/view/inputmethod/ExtractedTextRequest;I)Landroid/view/inputmethod/ExtractedText;

    move-result-object v5

    goto :goto_0

    .line 2439
    .restart local v1       #ei:Landroid/view/inputmethod/EditorInfo;
    .restart local v3       #inputType:I
    :cond_6
    const/4 v5, 0x0

    :try_start_1
    invoke-virtual {v0, v5}, Landroid/inputmethodservice/ExtractEditText;->setEnabled(Z)V

    .line 2440
    const-string v5, ""

    invoke-virtual {v0, v5}, Landroid/inputmethodservice/ExtractEditText;->setText(Ljava/lang/CharSequence;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 2447
    .end local v3           #inputType:I
    :catchall_0
    move-exception v5

    invoke-virtual {v0}, Landroid/inputmethodservice/ExtractEditText;->finishInternalChanges()V

    throw v5
.end method

.method public switchInputMethod(Ljava/lang/String;)V
    .locals 2
    .parameter "id"

    .prologue
    .line 1279
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mImm:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mToken:Landroid/os/IBinder;

    invoke-virtual {v0, v1, p1}, Landroid/view/inputmethod/InputMethodManager;->setInputMethod(Landroid/os/IBinder;Ljava/lang/String;)V

    .line 1280
    return-void
.end method

.method updateCandidatesVisibility(Z)V
    .locals 2
    .parameter "shown"

    .prologue
    .line 1240
    if-eqz p1, :cond_1

    const/4 v0, 0x0

    .line 1241
    .local v0, vis:I
    :goto_0
    iget v1, p0, Landroid/inputmethodservice/InputMethodService;->mCandidatesVisibility:I

    if-eq v1, v0, :cond_0

    .line 1242
    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mCandidatesFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1243
    iput v0, p0, Landroid/inputmethodservice/InputMethodService;->mCandidatesVisibility:I

    .line 1245
    :cond_0
    return-void

    .line 1240
    .end local v0           #vis:I
    :cond_1
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getCandidatesHiddenVisibility()I

    move-result v0

    goto :goto_0
.end method

.method updateExtractFrameVisibility()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1109
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->isFullscreenMode()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1110
    iget-boolean v2, p0, Landroid/inputmethodservice/InputMethodService;->mExtractViewHidden:Z

    if-eqz v2, :cond_1

    const/4 v0, 0x4

    .line 1111
    .local v0, vis:I
    :goto_0
    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService;->mExtractFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1116
    :goto_1
    iget v2, p0, Landroid/inputmethodservice/InputMethodService;->mCandidatesVisibility:I

    if-nez v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    invoke-virtual {p0, v1}, Landroid/inputmethodservice/InputMethodService;->updateCandidatesVisibility(Z)V

    .line 1129
    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mFullscreenArea:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1130
    return-void

    .end local v0           #vis:I
    :cond_1
    move v0, v1

    .line 1110
    goto :goto_0

    .line 1113
    :cond_2
    const/4 v0, 0x0

    .line 1114
    .restart local v0       #vis:I
    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService;->mExtractFrame:Landroid/widget/FrameLayout;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_1
.end method

.method public updateFullscreenMode()V
    .locals 9

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 981
    iget-boolean v5, p0, Landroid/inputmethodservice/InputMethodService;->mShowInputRequested:Z

    if-eqz v5, :cond_6

    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->onEvaluateFullscreenMode()Z

    move-result v5

    if-eqz v5, :cond_6

    move v2, v6

    .line 982
    .local v2, isFullscreen:Z
    :goto_0
    iget-boolean v5, p0, Landroid/inputmethodservice/InputMethodService;->mLastShowInputRequested:Z

    iget-boolean v8, p0, Landroid/inputmethodservice/InputMethodService;->mShowInputRequested:Z

    if-eq v5, v8, :cond_7

    move v0, v6

    .line 983
    .local v0, changed:Z
    :goto_1
    iget-boolean v5, p0, Landroid/inputmethodservice/InputMethodService;->mIsFullscreen:Z

    if-ne v5, v2, :cond_0

    iget-boolean v5, p0, Landroid/inputmethodservice/InputMethodService;->mFullscreenApplied:Z

    if-nez v5, :cond_4

    .line 984
    :cond_0
    const/4 v0, 0x1

    .line 985
    iput-boolean v2, p0, Landroid/inputmethodservice/InputMethodService;->mIsFullscreen:Z

    .line 986
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v1

    .line 987
    .local v1, ic:Landroid/view/inputmethod/InputConnection;
    if-eqz v1, :cond_1

    invoke-interface {v1, v2}, Landroid/view/inputmethod/InputConnection;->reportFullscreenMode(Z)Z

    .line 988
    :cond_1
    iput-boolean v6, p0, Landroid/inputmethodservice/InputMethodService;->mFullscreenApplied:Z

    .line 989
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->initialize()V

    .line 990
    iget-object v5, p0, Landroid/inputmethodservice/InputMethodService;->mFullscreenArea:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    .line 992
    .local v3, lp:Landroid/widget/LinearLayout$LayoutParams;
    if-eqz v2, :cond_8

    .line 993
    iget-object v5, p0, Landroid/inputmethodservice/InputMethodService;->mFullscreenArea:Landroid/view/ViewGroup;

    iget-object v8, p0, Landroid/inputmethodservice/InputMethodService;->mThemeAttrs:Landroid/content/res/TypedArray;

    invoke-virtual {v8, v7}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/view/ViewGroup;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 995
    iput v7, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 996
    const/high16 v5, 0x3f80

    iput v5, v3, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 1002
    :goto_2
    iget-object v5, p0, Landroid/inputmethodservice/InputMethodService;->mFullscreenArea:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    iget-object v8, p0, Landroid/inputmethodservice/InputMethodService;->mFullscreenArea:Landroid/view/ViewGroup;

    invoke-virtual {v5, v8, v3}, Landroid/view/ViewGroup;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1004
    if-eqz v2, :cond_3

    .line 1005
    iget-object v5, p0, Landroid/inputmethodservice/InputMethodService;->mExtractView:Landroid/view/View;

    if-nez v5, :cond_2

    .line 1006
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->onCreateExtractTextView()Landroid/view/View;

    move-result-object v4

    .line 1007
    .local v4, v:Landroid/view/View;
    if-eqz v4, :cond_2

    .line 1008
    invoke-virtual {p0, v4}, Landroid/inputmethodservice/InputMethodService;->setExtractView(Landroid/view/View;)V

    .line 1011
    .end local v4           #v:Landroid/view/View;
    :cond_2
    invoke-virtual {p0, v7}, Landroid/inputmethodservice/InputMethodService;->startExtractingText(Z)V

    .line 1013
    :cond_3
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->updateExtractFrameVisibility()V

    .line 1016
    .end local v1           #ic:Landroid/view/inputmethod/InputConnection;
    .end local v3           #lp:Landroid/widget/LinearLayout$LayoutParams;
    :cond_4
    if-eqz v0, :cond_5

    .line 1017
    iget-object v5, p0, Landroid/inputmethodservice/InputMethodService;->mWindow:Landroid/inputmethodservice/SoftInputWindow;

    invoke-virtual {v5}, Landroid/inputmethodservice/SoftInputWindow;->getWindow()Landroid/view/Window;

    move-result-object v5

    iget-boolean v8, p0, Landroid/inputmethodservice/InputMethodService;->mShowInputRequested:Z

    if-nez v8, :cond_9

    :goto_3
    invoke-virtual {p0, v5, v2, v6}, Landroid/inputmethodservice/InputMethodService;->onConfigureWindow(Landroid/view/Window;ZZ)V

    .line 1018
    iget-boolean v5, p0, Landroid/inputmethodservice/InputMethodService;->mShowInputRequested:Z

    iput-boolean v5, p0, Landroid/inputmethodservice/InputMethodService;->mLastShowInputRequested:Z

    .line 1020
    :cond_5
    return-void

    .end local v0           #changed:Z
    .end local v2           #isFullscreen:Z
    :cond_6
    move v2, v7

    .line 981
    goto :goto_0

    .restart local v2       #isFullscreen:Z
    :cond_7
    move v0, v7

    .line 982
    goto :goto_1

    .line 998
    .restart local v0       #changed:Z
    .restart local v1       #ic:Landroid/view/inputmethod/InputConnection;
    .restart local v3       #lp:Landroid/widget/LinearLayout$LayoutParams;
    :cond_8
    iget-object v5, p0, Landroid/inputmethodservice/InputMethodService;->mFullscreenArea:Landroid/view/ViewGroup;

    const/4 v8, 0x0

    invoke-virtual {v5, v8}, Landroid/view/ViewGroup;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 999
    const/4 v5, -0x2

    iput v5, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1000
    const/4 v5, 0x0

    iput v5, v3, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    goto :goto_2

    .end local v1           #ic:Landroid/view/inputmethod/InputConnection;
    .end local v3           #lp:Landroid/widget/LinearLayout$LayoutParams;
    :cond_9
    move v6, v7

    .line 1017
    goto :goto_3
.end method

.method public updateInputViewShown()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 1177
    iget-boolean v3, p0, Landroid/inputmethodservice/InputMethodService;->mShowInputRequested:Z

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->onEvaluateInputViewShown()Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v0, 0x1

    .line 1178
    .local v0, isShown:Z
    :goto_0
    iget-boolean v3, p0, Landroid/inputmethodservice/InputMethodService;->mIsInputViewShown:Z

    if-eq v3, v0, :cond_0

    iget-boolean v3, p0, Landroid/inputmethodservice/InputMethodService;->mWindowVisible:Z

    if-eqz v3, :cond_0

    .line 1179
    iput-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mIsInputViewShown:Z

    .line 1180
    iget-object v3, p0, Landroid/inputmethodservice/InputMethodService;->mInputFrame:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_2

    :goto_1
    invoke-virtual {v3, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1181
    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService;->mInputView:Landroid/view/View;

    if-nez v2, :cond_0

    .line 1182
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->initialize()V

    .line 1183
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->onCreateInputView()Landroid/view/View;

    move-result-object v1

    .line 1184
    .local v1, v:Landroid/view/View;
    if-eqz v1, :cond_0

    .line 1185
    invoke-virtual {p0, v1}, Landroid/inputmethodservice/InputMethodService;->setInputView(Landroid/view/View;)V

    .line 1189
    .end local v1           #v:Landroid/view/View;
    :cond_0
    return-void

    .end local v0           #isShown:Z
    :cond_1
    move v0, v2

    .line 1177
    goto :goto_0

    .line 1180
    .restart local v0       #isShown:Z
    :cond_2
    const/16 v2, 0x8

    goto :goto_1
.end method
