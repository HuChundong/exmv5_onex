.class public Landroid/webkit/SingleTapQuickActions;
.super Ljava/lang/Object;
.source "SingleTapQuickActions.java"

# interfaces
.implements Lcom/htc/textselection/QuickActions;


# static fields
.field private static final BUTTON_ID_OPEN_LINK:I = 0xe

.field private static final BUTTON_ID_PASTE:I = 0x0

.field private static final CUSTOM_CLIP_LABEL:Ljava/lang/String; = "HTC_MODIFIED_CLIPDATA="


# instance fields
.field checkTimeout:Z

.field cm:Landroid/content/ClipboardManager;

.field icon_open_link:Landroid/graphics/drawable/Drawable;

.field icon_paste:Landroid/graphics/drawable/Drawable;

.field private mTappedURL:Ljava/lang/String;

.field private mWebView:Landroid/webkit/WebViewClassic;

.field private mWebViewCore:Landroid/webkit/WebViewCore;

.field private resLoaded:Z

.field str_open_link:Ljava/lang/String;

.field str_paste:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const-string v0, ""

    iput-object v0, p0, Landroid/webkit/SingleTapQuickActions;->mTappedURL:Ljava/lang/String;

    .line 44
    iput-boolean v1, p0, Landroid/webkit/SingleTapQuickActions;->checkTimeout:Z

    .line 46
    iput-boolean v1, p0, Landroid/webkit/SingleTapQuickActions;->resLoaded:Z

    return-void
.end method

.method private canPaste()Z
    .locals 12

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 121
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 122
    .local v0, canPaste:Ljava/lang/Boolean;
    iget-object v5, p0, Landroid/webkit/SingleTapQuickActions;->cm:Landroid/content/ClipboardManager;

    if-eqz v5, :cond_3

    move v5, v6

    :goto_0
    iget-object v8, p0, Landroid/webkit/SingleTapQuickActions;->cm:Landroid/content/ClipboardManager;

    invoke-virtual {v8}, Landroid/content/ClipboardManager;->hasPrimaryClip()Z

    move-result v8

    and-int/2addr v5, v8

    if-eqz v5, :cond_2

    .line 123
    iget-object v5, p0, Landroid/webkit/SingleTapQuickActions;->cm:Landroid/content/ClipboardManager;

    invoke-virtual {v5}, Landroid/content/ClipboardManager;->getPrimaryClipDescription()Landroid/content/ClipDescription;

    move-result-object v2

    .line 124
    .local v2, description:Landroid/content/ClipDescription;
    iget-boolean v5, p0, Landroid/webkit/SingleTapQuickActions;->checkTimeout:Z

    if-eqz v5, :cond_4

    .line 126
    invoke-virtual {v2}, Landroid/content/ClipDescription;->getLabel()Ljava/lang/CharSequence;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 127
    invoke-virtual {v2}, Landroid/content/ClipDescription;->getLabel()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 129
    .local v3, label:Ljava/lang/String;
    const-string v5, "HTC_MODIFIED_CLIPDATA="

    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 130
    invoke-virtual {v2}, Landroid/content/ClipDescription;->getLabel()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v8, "HTC_MODIFIED_CLIPDATA="

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v5, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 132
    .local v4, timestamp:Ljava/lang/String;
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    invoke-static {v4}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    sub-long/2addr v8, v10

    const-wide/16 v10, 0x7530

    cmp-long v5, v8, v10

    if-gez v5, :cond_0

    .line 133
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 140
    .end local v3           #label:Ljava/lang/String;
    .end local v4           #timestamp:Ljava/lang/String;
    :cond_0
    :goto_1
    iget-object v5, p0, Landroid/webkit/SingleTapQuickActions;->cm:Landroid/content/ClipboardManager;

    invoke-virtual {v5}, Landroid/content/ClipboardManager;->getPrimaryClip()Landroid/content/ClipData;

    move-result-object v1

    .line 141
    .local v1, clipData:Landroid/content/ClipData;
    if-eqz v2, :cond_1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/content/ClipData;->getItemCount()I

    move-result v5

    if-ge v5, v6, :cond_5

    .line 142
    :cond_1
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 164
    .end local v1           #clipData:Landroid/content/ClipData;
    .end local v2           #description:Landroid/content/ClipDescription;
    :cond_2
    :goto_2
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    return v5

    :cond_3
    move v5, v7

    .line 122
    goto :goto_0

    .line 138
    .restart local v2       #description:Landroid/content/ClipDescription;
    :cond_4
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_1

    .line 144
    .restart local v1       #clipData:Landroid/content/ClipData;
    :cond_5
    const-string/jumbo v5, "text/plain"

    invoke-virtual {v2, v5}, Landroid/content/ClipDescription;->hasMimeType(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-virtual {v1, v7}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    if-eqz v5, :cond_6

    invoke-virtual {v1, v7}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-nez v5, :cond_7

    .line 147
    :cond_6
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_2

    .line 148
    :cond_7
    const-string/jumbo v5, "text/html"

    invoke-virtual {v2, v5}, Landroid/content/ClipDescription;->hasMimeType(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v1, v7}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ClipData$Item;->getHtmlText()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_8

    invoke-virtual {v1, v7}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ClipData$Item;->getHtmlText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_2

    .line 151
    :cond_8
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_2
.end method

.method private openLink(Ljava/lang/String;)V
    .locals 6
    .parameter "url"

    .prologue
    const/4 v3, 0x0

    .line 183
    iget-object v4, p0, Landroid/webkit/SingleTapQuickActions;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v4}, Landroid/webkit/WebViewClassic;->getContext()Landroid/content/Context;

    move-result-object v4

    if-eqz v4, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 206
    :cond_0
    :goto_0
    return-void

    .line 184
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-direct {v0, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 185
    .local v0, intent:Landroid/content/Intent;
    const/high16 v4, 0x1000

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 186
    const-string v4, "android.intent.category.BROWSABLE"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 187
    const-string v4, "com.android.browser.application_id"

    iget-object v5, p0, Landroid/webkit/SingleTapQuickActions;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v5}, Landroid/webkit/WebViewClassic;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 188
    const-string v4, "geo:"

    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string/jumbo v4, "tel:"

    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string/jumbo v4, "mailto:"

    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string/jumbo v4, "rtsp://"

    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    :cond_2
    const/4 v1, 0x1

    .line 194
    .local v1, isDispatcherWanted:Z
    :goto_1
    const-string/jumbo v4, "ro.da1.enable"

    invoke-static {v4, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 195
    .local v2, isNoContextMenu:Z
    if-eqz v2, :cond_3

    .line 197
    if-eqz v1, :cond_3

    .line 198
    const-string v3, "com.htc.HtcLinkifyDispatcher"

    const-string v4, "com.htc.HtcLinkifyDispatcher.HtcLinkifyDispatcherActivity"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 204
    :cond_3
    :try_start_0
    iget-object v3, p0, Landroid/webkit/SingleTapQuickActions;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v3}, Landroid/webkit/WebViewClassic;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 205
    :catch_0
    move-exception v3

    goto :goto_0

    .end local v1           #isDispatcherWanted:Z
    .end local v2           #isNoContextMenu:Z
    :cond_4
    move v1, v3

    .line 188
    goto :goto_1
.end method


# virtual methods
.method public loadResource(Landroid/content/Context;)V
    .locals 8
    .parameter "ctx"

    .prologue
    const/4 v7, 0x0

    .line 55
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 56
    .local v3, res:Landroid/content/res/Resources;
    const v5, 0x4020038

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Landroid/webkit/SingleTapQuickActions;->icon_paste:Landroid/graphics/drawable/Drawable;

    .line 57
    const v5, 0x104000b

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Landroid/webkit/SingleTapQuickActions;->str_paste:Ljava/lang/String;

    .line 59
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 63
    .local v2, pm:Landroid/content/pm/PackageManager;
    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.intent.action.VIEW"

    const-string v6, "http:"

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 64
    .local v4, target:Landroid/content/Intent;
    invoke-virtual {v2, v4, v7}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 65
    .local v1, mainActivitiesList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_0

    .line 66
    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 67
    .local v0, info:Landroid/content/pm/ResolveInfo;
    invoke-virtual {v0, v2}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Landroid/webkit/SingleTapQuickActions;->icon_open_link:Landroid/graphics/drawable/Drawable;

    .line 69
    .end local v0           #info:Landroid/content/pm/ResolveInfo;
    :cond_0
    const v5, 0x204018c

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Landroid/webkit/SingleTapQuickActions;->str_open_link:Ljava/lang/String;

    .line 72
    return-void
.end method

.method public onCreateQuickActions(Lcom/htc/textselection/ActionMenu;)V
    .locals 5
    .parameter "actions"

    .prologue
    const/4 v4, 0x0

    .line 77
    iget-object v1, p0, Landroid/webkit/SingleTapQuickActions;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v1}, Landroid/webkit/WebViewClassic;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 78
    .local v0, context:Landroid/content/Context;
    iget-boolean v1, p0, Landroid/webkit/SingleTapQuickActions;->resLoaded:Z

    if-nez v1, :cond_0

    .line 79
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/webkit/SingleTapQuickActions;->resLoaded:Z

    .line 80
    invoke-virtual {p0, v0}, Landroid/webkit/SingleTapQuickActions;->loadResource(Landroid/content/Context;)V

    .line 82
    const-string v1, "clipboard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ClipboardManager;

    check-cast v1, Landroid/content/ClipboardManager;

    iput-object v1, p0, Landroid/webkit/SingleTapQuickActions;->cm:Landroid/content/ClipboardManager;

    .line 86
    :cond_0
    iget-object v1, p0, Landroid/webkit/SingleTapQuickActions;->str_paste:Ljava/lang/String;

    iget-object v2, p0, Landroid/webkit/SingleTapQuickActions;->icon_paste:Landroid/graphics/drawable/Drawable;

    invoke-interface {p1, v4, v4, v1, v2}, Lcom/htc/textselection/ActionMenu;->addAction(IILjava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)Lcom/htc/textselection/Action;

    .line 87
    const/16 v1, 0xe

    iget-object v2, p0, Landroid/webkit/SingleTapQuickActions;->str_open_link:Ljava/lang/String;

    iget-object v3, p0, Landroid/webkit/SingleTapQuickActions;->icon_open_link:Landroid/graphics/drawable/Drawable;

    invoke-interface {p1, v4, v1, v2, v3}, Lcom/htc/textselection/ActionMenu;->addAction(IILjava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)Lcom/htc/textselection/Action;

    .line 88
    return-void
.end method

.method public onPrepareShowQuicActions(Lcom/htc/textselection/ActionMenu;)V
    .locals 9
    .parameter "actions"

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 94
    invoke-direct {p0}, Landroid/webkit/SingleTapQuickActions;->canPaste()Z

    move-result v3

    .line 95
    .local v3, bShowPaste:Z
    const/4 v2, 0x0

    .line 96
    .local v2, bShowOpenLink:Z
    const-string v7, ""

    iput-object v7, p0, Landroid/webkit/SingleTapQuickActions;->mTappedURL:Ljava/lang/String;

    .line 98
    iget-object v7, p0, Landroid/webkit/SingleTapQuickActions;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v7}, Landroid/webkit/WebViewClassic;->getHitTestResult()Landroid/webkit/WebView$HitTestResult;

    move-result-object v4

    .line 99
    .local v4, hitTest:Landroid/webkit/WebView$HitTestResult;
    if-eqz v4, :cond_0

    .line 100
    invoke-virtual {v4}, Landroid/webkit/WebView$HitTestResult;->getType()I

    move-result v7

    const/4 v8, 0x7

    if-ne v7, v8, :cond_3

    move v2, v5

    .line 101
    :goto_0
    invoke-virtual {v4}, Landroid/webkit/WebView$HitTestResult;->getExtra()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Landroid/webkit/SingleTapQuickActions;->mTappedURL:Ljava/lang/String;

    .line 107
    :cond_0
    invoke-interface {p1, v6, v5}, Lcom/htc/textselection/ActionMenu;->setGroupVisibility(IZ)V

    .line 109
    invoke-interface {p1, v6, v6}, Lcom/htc/textselection/ActionMenu;->getAction(II)Lcom/htc/textselection/Action;

    move-result-object v1

    .line 110
    .local v1, aPaste:Lcom/htc/textselection/Action;
    const/16 v5, 0xe

    invoke-interface {p1, v6, v5}, Lcom/htc/textselection/ActionMenu;->getAction(II)Lcom/htc/textselection/Action;

    move-result-object v0

    .line 112
    .local v0, aLink:Lcom/htc/textselection/Action;
    if-eqz v1, :cond_1

    .line 113
    invoke-interface {v1, v3}, Lcom/htc/textselection/Action;->setVisible(Z)V

    .line 116
    :cond_1
    if-eqz v0, :cond_2

    .line 117
    invoke-interface {v0, v2}, Lcom/htc/textselection/Action;->setVisible(Z)V

    .line 118
    :cond_2
    return-void

    .end local v0           #aLink:Lcom/htc/textselection/Action;
    .end local v1           #aPaste:Lcom/htc/textselection/Action;
    :cond_3
    move v2, v6

    .line 100
    goto :goto_0
.end method

.method public onQuickActionItemClicked(I)V
    .locals 1
    .parameter "actionID"

    .prologue
    .line 170
    sparse-switch p1, :sswitch_data_0

    .line 179
    :goto_0
    iget-object v0, p0, Landroid/webkit/SingleTapQuickActions;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkit/WebViewClassic;->selectionDone()V

    .line 180
    return-void

    .line 172
    :sswitch_0
    iget-object v0, p0, Landroid/webkit/SingleTapQuickActions;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkit/WebViewClassic;->pasteFromClipboard()V

    goto :goto_0

    .line 176
    :sswitch_1
    iget-object v0, p0, Landroid/webkit/SingleTapQuickActions;->mTappedURL:Ljava/lang/String;

    invoke-direct {p0, v0}, Landroid/webkit/SingleTapQuickActions;->openLink(Ljava/lang/String;)V

    goto :goto_0

    .line 170
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xe -> :sswitch_1
    .end sparse-switch
.end method

.method setWebView(Landroid/webkit/WebViewClassic;)V
    .locals 0
    .parameter "webView"

    .prologue
    .line 49
    iput-object p1, p0, Landroid/webkit/SingleTapQuickActions;->mWebView:Landroid/webkit/WebViewClassic;

    .line 50
    return-void
.end method

.method setWebViewCore(Landroid/webkit/WebViewCore;)V
    .locals 0
    .parameter "webViewCore"

    .prologue
    .line 52
    iput-object p1, p0, Landroid/webkit/SingleTapQuickActions;->mWebViewCore:Landroid/webkit/WebViewCore;

    .line 53
    return-void
.end method
