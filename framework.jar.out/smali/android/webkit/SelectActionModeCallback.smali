.class Landroid/webkit/SelectActionModeCallback;
.super Ljava/lang/Object;
.source "SelectActionModeCallback.java"

# interfaces
.implements Landroid/webkit/SelectionCallback;


# static fields
.field private static final BUTTON_ID_COPY:I = 0x1020021

.field private static final BUTTON_ID_CUT:I = 0x1020020

.field private static final BUTTON_ID_PASTE:I = 0x1020022

.field private static final BUTTON_ID_QUICKLOOKUP:I = 0x1

.field private static final BUTTON_ID_SELECTALL:I = 0x102036d

.field private static final BUTTON_ID_SHARE:I = 0x102036e

.field private static final BUTTON_ID_WEBSEARCH:I = 0x1020370


# instance fields
.field private IS_KIKIN_ENABLED:Z

.field icon_copy:I

.field icon_cut:I

.field icon_paste:I

.field icon_selectall:I

.field icon_share:I

.field icon_websearch:I

.field private isHtcStyle:Z

.field private mActionMode:Landroid/view/ActionMode;

.field private mIsTextSelected:Z

.field private mShouldKillKikinResultsContainer:I

.field private mShouldRestoreKikinResultsContainer:Z

.field private mShouldShowKikinResulsContainer:Z

.field private mToggledSelectAll:Z

.field private mWebView:Landroid/webkit/WebViewClassic;


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkit/SelectActionModeCallback;->mIsTextSelected:Z

    .line 50
    iput-boolean v1, p0, Landroid/webkit/SelectActionModeCallback;->IS_KIKIN_ENABLED:Z

    .line 53
    iput-boolean v1, p0, Landroid/webkit/SelectActionModeCallback;->mShouldRestoreKikinResultsContainer:Z

    .line 56
    iput v1, p0, Landroid/webkit/SelectActionModeCallback;->mShouldKillKikinResultsContainer:I

    .line 59
    iput-boolean v1, p0, Landroid/webkit/SelectActionModeCallback;->mToggledSelectAll:Z

    .line 142
    iput-boolean v1, p0, Landroid/webkit/SelectActionModeCallback;->mShouldShowKikinResulsContainer:Z

    .line 391
    iput-boolean v1, p0, Landroid/webkit/SelectActionModeCallback;->isHtcStyle:Z

    .line 393
    const v0, 0x402002f

    iput v0, p0, Landroid/webkit/SelectActionModeCallback;->icon_copy:I

    .line 394
    const v0, 0x4020048

    iput v0, p0, Landroid/webkit/SelectActionModeCallback;->icon_share:I

    .line 395
    const v0, 0x4020041

    iput v0, p0, Landroid/webkit/SelectActionModeCallback;->icon_websearch:I

    .line 396
    const v0, 0x4020046

    iput v0, p0, Landroid/webkit/SelectActionModeCallback;->icon_selectall:I

    .line 397
    const v0, 0x4020030

    iput v0, p0, Landroid/webkit/SelectActionModeCallback;->icon_cut:I

    .line 398
    const v0, 0x4020038

    iput v0, p0, Landroid/webkit/SelectActionModeCallback;->icon_paste:I

    return-void
.end method

.method private setMenuVisibility(Landroid/view/Menu;ZI)V
    .locals 1
    .parameter "menu"
    .parameter "visible"
    .parameter "resourceId"

    .prologue
    .line 384
    invoke-interface {p1, p3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 385
    .local v0, item:Landroid/view/MenuItem;
    if-eqz v0, :cond_0

    .line 386
    invoke-interface {v0, p2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 388
    :cond_0
    return-void
.end method


# virtual methods
.method public finish()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 80
    iget-object v1, p0, Landroid/webkit/SelectActionModeCallback;->mActionMode:Landroid/view/ActionMode;

    if-eqz v1, :cond_0

    .line 81
    iget-object v1, p0, Landroid/webkit/SelectActionModeCallback;->mActionMode:Landroid/view/ActionMode;

    invoke-virtual {v1}, Landroid/view/ActionMode;->finish()V

    .line 85
    :cond_0
    iget-boolean v1, p0, Landroid/webkit/SelectActionModeCallback;->IS_KIKIN_ENABLED:Z

    if-eqz v1, :cond_2

    .line 92
    iget-object v1, p0, Landroid/webkit/SelectActionModeCallback;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v1}, Landroid/webkit/WebViewClassic;->getKikinResultsViewController()Lcom/kikin/KikinResultsViewController;

    move-result-object v0

    .line 93
    .local v0, kikinResultsViewContainer:Lcom/kikin/KikinResultsViewController;
    if-eqz v0, :cond_1

    .line 94
    iget v1, p0, Landroid/webkit/SelectActionModeCallback;->mShouldKillKikinResultsContainer:I

    if-nez v1, :cond_3

    move v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Lcom/kikin/KikinResultsViewController;->hide(Z)V

    .line 95
    :cond_1
    invoke-virtual {p0, v2}, Landroid/webkit/SelectActionModeCallback;->setShouldKillKikinResultsContainer(Z)V

    .line 98
    .end local v0           #kikinResultsViewContainer:Lcom/kikin/KikinResultsViewController;
    :cond_2
    return-void

    .line 94
    .restart local v0       #kikinResultsViewContainer:Lcom/kikin/KikinResultsViewController;
    :cond_3
    const/4 v1, 0x0

    goto :goto_0
.end method

.method isAllTextSelected()Z
    .locals 1

    .prologue
    .line 107
    iget-boolean v0, p0, Landroid/webkit/SelectActionModeCallback;->mToggledSelectAll:Z

    return v0
.end method

.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 8
    .parameter "mode"
    .parameter "item"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 271
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v6

    sparse-switch v6, :sswitch_data_0

    .line 375
    :goto_0
    return v4

    .line 273
    :sswitch_0
    iget-object v4, p0, Landroid/webkit/SelectActionModeCallback;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v4}, Landroid/webkit/WebViewClassic;->cutSelection()V

    .line 274
    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    :cond_0
    :goto_1
    move v4, v5

    .line 375
    goto :goto_0

    .line 278
    :sswitch_1
    iget-object v4, p0, Landroid/webkit/SelectActionModeCallback;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v4}, Landroid/webkit/WebViewClassic;->copySelection()Z

    .line 280
    iget-boolean v4, p0, Landroid/webkit/SelectActionModeCallback;->IS_KIKIN_ENABLED:Z

    if-eqz v4, :cond_1

    .line 284
    iget-object v4, p0, Landroid/webkit/SelectActionModeCallback;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v4}, Landroid/webkit/WebViewClassic;->getContext()Landroid/content/Context;

    move-result-object v4

    sget-object v6, Lcom/kikin/analytics/AnalyticsTrackerEvent;->COPY:Lcom/kikin/analytics/AnalyticsTrackerEvent;

    invoke-static {v4, v6}, Lcom/kikin/analytics/AnalyticsTracker;->logEvent(Landroid/content/Context;Lcom/kikin/analytics/AnalyticsTrackerEvent;)V

    goto :goto_1

    .line 287
    :cond_1
    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    goto :goto_1

    .line 294
    :sswitch_2
    iget-object v4, p0, Landroid/webkit/SelectActionModeCallback;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v4}, Landroid/webkit/WebViewClassic;->pasteFromClipboard()V

    .line 295
    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    goto :goto_1

    .line 299
    :sswitch_3
    iget-object v6, p0, Landroid/webkit/SelectActionModeCallback;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v6}, Landroid/webkit/WebViewClassic;->getSelection()Ljava/lang/String;

    move-result-object v3

    .line 301
    .local v3, selection:Ljava/lang/String;
    iget-boolean v6, p0, Landroid/webkit/SelectActionModeCallback;->isHtcStyle:Z

    if-nez v6, :cond_2

    iget-boolean v6, p0, Landroid/webkit/SelectActionModeCallback;->IS_KIKIN_ENABLED:Z

    if-eqz v6, :cond_5

    .line 306
    :cond_2
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_3

    .line 308
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    const/16 v7, 0x7d0

    if-le v6, v7, :cond_4

    .line 309
    iget-object v6, p0, Landroid/webkit/SelectActionModeCallback;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v6}, Landroid/webkit/WebViewClassic;->getContext()Landroid/content/Context;

    move-result-object v6

    const/high16 v7, 0x104

    invoke-static {v6, v7, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 323
    :cond_3
    :goto_2
    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    .line 326
    iget-boolean v4, p0, Landroid/webkit/SelectActionModeCallback;->IS_KIKIN_ENABLED:Z

    if-eqz v4, :cond_0

    .line 327
    iget-object v4, p0, Landroid/webkit/SelectActionModeCallback;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v4}, Landroid/webkit/WebViewClassic;->getContext()Landroid/content/Context;

    move-result-object v4

    sget-object v6, Lcom/kikin/analytics/AnalyticsTrackerEvent;->SHARE:Lcom/kikin/analytics/AnalyticsTrackerEvent;

    invoke-static {v4, v6}, Lcom/kikin/analytics/AnalyticsTracker;->logEvent(Landroid/content/Context;Lcom/kikin/analytics/AnalyticsTrackerEvent;)V

    goto :goto_1

    .line 314
    :cond_4
    new-instance v1, Landroid/webkit/HTCQuickSearch;

    iget-object v4, p0, Landroid/webkit/SelectActionModeCallback;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-direct {v1, v4}, Landroid/webkit/HTCQuickSearch;-><init>(Landroid/webkit/WebViewClassic;)V

    .line 315
    .local v1, quickSearch:Landroid/webkit/HTCQuickSearch;
    if-eqz v1, :cond_3

    .line 316
    iget-object v4, p0, Landroid/webkit/SelectActionModeCallback;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v4}, Landroid/webkit/WebViewClassic;->getUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/webkit/HTCQuickSearch;->shareContent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 322
    .end local v1           #quickSearch:Landroid/webkit/HTCQuickSearch;
    :cond_5
    iget-object v4, p0, Landroid/webkit/SelectActionModeCallback;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v4}, Landroid/webkit/WebViewClassic;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v3}, Landroid/provider/Browser;->sendString(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_2

    .line 333
    .end local v3           #selection:Ljava/lang/String;
    :sswitch_4
    iget-object v4, p0, Landroid/webkit/SelectActionModeCallback;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v4}, Landroid/webkit/WebViewClassic;->selectAll()V

    goto/16 :goto_1

    .line 337
    :sswitch_5
    iget-object v6, p0, Landroid/webkit/SelectActionModeCallback;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v6}, Landroid/webkit/WebViewClassic;->getSelection()Ljava/lang/String;

    move-result-object v2

    .line 338
    .local v2, sel:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    .line 339
    iget-object v6, p0, Landroid/webkit/SelectActionModeCallback;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v6, v2, v4}, Landroid/webkit/WebViewClassic;->showFindDialog(Ljava/lang/String;Z)Z

    .line 341
    iget-boolean v4, p0, Landroid/webkit/SelectActionModeCallback;->IS_KIKIN_ENABLED:Z

    if-eqz v4, :cond_0

    .line 342
    iget-object v4, p0, Landroid/webkit/SelectActionModeCallback;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v4}, Landroid/webkit/WebViewClassic;->getContext()Landroid/content/Context;

    move-result-object v4

    sget-object v6, Lcom/kikin/analytics/AnalyticsTrackerEvent;->FIND:Lcom/kikin/analytics/AnalyticsTrackerEvent;

    invoke-static {v4, v6}, Lcom/kikin/analytics/AnalyticsTracker;->logEvent(Landroid/content/Context;Lcom/kikin/analytics/AnalyticsTrackerEvent;)V

    goto/16 :goto_1

    .line 348
    .end local v2           #sel:Ljava/lang/String;
    :sswitch_6
    iget-boolean v4, p0, Landroid/webkit/SelectActionModeCallback;->IS_KIKIN_ENABLED:Z

    if-eqz v4, :cond_6

    .line 353
    iget-object v4, p0, Landroid/webkit/SelectActionModeCallback;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v4}, Landroid/webkit/WebViewClassic;->getContext()Landroid/content/Context;

    move-result-object v4

    sget-object v6, Lcom/kikin/analytics/AnalyticsTrackerEvent;->WEB_SEARCH:Lcom/kikin/analytics/AnalyticsTrackerEvent;

    invoke-static {v4, v6}, Lcom/kikin/analytics/AnalyticsTracker;->logEvent(Landroid/content/Context;Lcom/kikin/analytics/AnalyticsTrackerEvent;)V

    .line 359
    :cond_6
    new-instance v0, Landroid/content/Intent;

    const-string v4, "android.intent.action.WEB_SEARCH"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 360
    .local v0, i:Landroid/content/Intent;
    const-string/jumbo v4, "new_search"

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 361
    const-string/jumbo v4, "query"

    iget-object v6, p0, Landroid/webkit/SelectActionModeCallback;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v6}, Landroid/webkit/WebViewClassic;->getSelection()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 362
    iget-object v4, p0, Landroid/webkit/SelectActionModeCallback;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v4}, Landroid/webkit/WebViewClassic;->getContext()Landroid/content/Context;

    move-result-object v4

    instance-of v4, v4, Landroid/app/Activity;

    if-nez v4, :cond_7

    .line 363
    const/high16 v4, 0x1000

    invoke-virtual {v0, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 366
    :cond_7
    iget-boolean v4, p0, Landroid/webkit/SelectActionModeCallback;->IS_KIKIN_ENABLED:Z

    if-nez v4, :cond_8

    .line 368
    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    .line 369
    :cond_8
    iget-object v4, p0, Landroid/webkit/SelectActionModeCallback;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v4}, Landroid/webkit/WebViewClassic;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 271
    :sswitch_data_0
    .sparse-switch
        0x1020020 -> :sswitch_0
        0x1020021 -> :sswitch_1
        0x1020022 -> :sswitch_2
        0x102036d -> :sswitch_4
        0x102036e -> :sswitch_3
        0x102036f -> :sswitch_5
        0x1020370 -> :sswitch_6
    .end sparse-switch
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 22
    .parameter "mode"
    .parameter "menu"

    .prologue
    .line 160
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/SelectActionModeCallback;->IS_KIKIN_ENABLED:Z

    move/from16 v19, v0

    if-eqz v19, :cond_6

    .line 161
    invoke-virtual/range {p1 .. p1}, Landroid/view/ActionMode;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v19

    const v20, 0x1140002

    move-object/from16 v0, v19

    move/from16 v1, v20

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 169
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/SelectActionModeCallback;->mWebView:Landroid/webkit/WebViewClassic;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/webkit/WebViewClassic;->getContext()Landroid/content/Context;

    move-result-object v10

    .line 173
    .local v10, context:Landroid/content/Context;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/SelectActionModeCallback;->IS_KIKIN_ENABLED:Z

    move/from16 v19, v0

    if-eqz v19, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/SelectActionModeCallback;->mWebView:Landroid/webkit/WebViewClassic;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/webkit/WebViewClassic;->getSelection()Ljava/lang/String;

    move-result-object v19

    :goto_1
    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/ActionMode;->setTitle(Ljava/lang/CharSequence;)V

    .line 179
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/SelectActionModeCallback;->IS_KIKIN_ENABLED:Z

    move/from16 v19, v0

    if-eqz v19, :cond_9

    .line 182
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/SelectActionModeCallback;->IS_KIKIN_ENABLED:Z

    move/from16 v19, v0

    if-nez v19, :cond_8

    const/16 v19, 0x1

    :goto_2
    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/ActionMode;->setTitleOptionalHint(Z)V

    .line 194
    :goto_3
    const-string v19, "clipboard"

    move-object/from16 v0, v19

    invoke-virtual {v10, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/content/ClipboardManager;

    move-object/from16 v9, v19

    check-cast v9, Landroid/content/ClipboardManager;

    .line 196
    .local v9, cm:Landroid/content/ClipboardManager;
    invoke-virtual/range {p1 .. p1}, Landroid/view/ActionMode;->isUiFocusable()Z

    move-result v12

    .line 197
    .local v12, isFocusable:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/SelectActionModeCallback;->mWebView:Landroid/webkit/WebViewClassic;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/webkit/WebViewClassic;->focusCandidateIsEditableText()Z

    move-result v11

    .line 198
    .local v11, isEditable:Z
    if-eqz v11, :cond_a

    invoke-virtual {v9}, Landroid/content/ClipboardManager;->hasPrimaryClip()Z

    move-result v19

    if-eqz v19, :cond_a

    if-eqz v12, :cond_a

    const/4 v7, 0x1

    .line 199
    .local v7, canPaste:Z
    :goto_4
    if-nez v11, :cond_b

    if-eqz v12, :cond_b

    const/4 v6, 0x1

    .line 200
    .local v6, canFind:Z
    :goto_5
    if-eqz v11, :cond_c

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/SelectActionModeCallback;->mIsTextSelected:Z

    move/from16 v19, v0

    if-eqz v19, :cond_c

    if-eqz v12, :cond_c

    const/4 v5, 0x1

    .line 201
    .local v5, canCut:Z
    :goto_6
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/webkit/SelectActionModeCallback;->mIsTextSelected:Z

    .line 202
    .local v4, canCopy:Z
    move-object/from16 v0, p0

    iget-boolean v8, v0, Landroid/webkit/SelectActionModeCallback;->mIsTextSelected:Z

    .line 203
    .local v8, canWebSearch:Z
    const v19, 0x102036f

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, v19

    invoke-direct {v0, v1, v6, v2}, Landroid/webkit/SelectActionModeCallback;->setMenuVisibility(Landroid/view/Menu;ZI)V

    .line 204
    const v19, 0x1020022

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, v19

    invoke-direct {v0, v1, v7, v2}, Landroid/webkit/SelectActionModeCallback;->setMenuVisibility(Landroid/view/Menu;ZI)V

    .line 205
    const v19, 0x1020020

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, v19

    invoke-direct {v0, v1, v5, v2}, Landroid/webkit/SelectActionModeCallback;->setMenuVisibility(Landroid/view/Menu;ZI)V

    .line 206
    const v19, 0x1020021

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, v19

    invoke-direct {v0, v1, v4, v2}, Landroid/webkit/SelectActionModeCallback;->setMenuVisibility(Landroid/view/Menu;ZI)V

    .line 207
    const v19, 0x1020370

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, v19

    invoke-direct {v0, v1, v8, v2}, Landroid/webkit/SelectActionModeCallback;->setMenuVisibility(Landroid/view/Menu;ZI)V

    .line 208
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/webkit/SelectActionModeCallback;->mActionMode:Landroid/view/ActionMode;

    .line 213
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/SelectActionModeCallback;->IS_KIKIN_ENABLED:Z

    move/from16 v19, v0

    if-eqz v19, :cond_0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/SelectActionModeCallback;->mShouldShowKikinResulsContainer:Z

    move/from16 v19, v0

    if-eqz v19, :cond_0

    .line 215
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/SelectActionModeCallback;->mWebView:Landroid/webkit/WebViewClassic;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/webkit/WebViewClassic;->getKikinResultsViewController()Lcom/kikin/KikinResultsViewController;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/SelectActionModeCallback;->mActionMode:Landroid/view/ActionMode;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/SelectActionModeCallback;->mShouldRestoreKikinResultsContainer:Z

    move/from16 v21, v0

    invoke-virtual/range {v19 .. v21}, Lcom/kikin/KikinResultsViewController;->show(Landroid/view/ActionMode;Z)Z

    .line 216
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/webkit/SelectActionModeCallback;->mShouldRestoreKikinResultsContainer:Z

    .line 217
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/webkit/SelectActionModeCallback;->mShouldShowKikinResulsContainer:Z

    .line 220
    :cond_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/SelectActionModeCallback;->IS_KIKIN_ENABLED:Z

    move/from16 v19, v0

    if-eqz v19, :cond_1

    .line 221
    const v19, 0x102036e

    move-object/from16 v0, p2

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v19

    const v20, 0x20800c4

    invoke-interface/range {v19 .. v20}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 227
    :cond_1
    const v19, 0x102036d

    move-object/from16 v0, p2

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v15

    .line 228
    .local v15, selectAll:Landroid/view/MenuItem;
    if-eqz v15, :cond_3

    .line 230
    invoke-virtual {v10}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v19

    sget-object v20, Lcom/android/internal/R$styleable;->SelectionModeDrawables:[I

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v17

    .line 232
    .local v17, styledAttributes:Landroid/content/res/TypedArray;
    const/16 v19, 0x3

    const/16 v20, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v16

    .line 235
    .local v16, selectAllIconId:I
    if-eqz v16, :cond_2

    .line 236
    invoke-interface/range {v15 .. v16}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 238
    :cond_2
    invoke-virtual/range {v17 .. v17}, Landroid/content/res/TypedArray;->recycle()V

    .line 241
    .end local v16           #selectAllIconId:I
    .end local v17           #styledAttributes:Landroid/content/res/TypedArray;
    :cond_3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/SelectActionModeCallback;->isHtcStyle:Z

    move/from16 v19, v0
    goto/16 :cond_5
    if-eqz v19, :cond_5

    .line 242
    const v19, 0x1020021

    move-object/from16 v0, p2

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v19

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/SelectActionModeCallback;->icon_copy:I

    move/from16 v20, v0

    invoke-interface/range {v19 .. v20}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 243
    const v19, 0x102036e

    move-object/from16 v0, p2

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v19

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/SelectActionModeCallback;->icon_share:I

    move/from16 v20, v0

    invoke-interface/range {v19 .. v20}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 244
    const v19, 0x1020370

    move-object/from16 v0, p2

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v19

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/SelectActionModeCallback;->icon_websearch:I

    move/from16 v20, v0

    invoke-interface/range {v19 .. v20}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 245
    const v19, 0x102036d

    move-object/from16 v0, p2

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v19

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/SelectActionModeCallback;->icon_selectall:I

    move/from16 v20, v0

    invoke-interface/range {v19 .. v20}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 246
    const v19, 0x1020020

    move-object/from16 v0, p2

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v19

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/SelectActionModeCallback;->icon_cut:I

    move/from16 v20, v0

    invoke-interface/range {v19 .. v20}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 247
    const v19, 0x1020022

    move-object/from16 v0, p2

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v19

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/SelectActionModeCallback;->icon_paste:I

    move/from16 v20, v0

    invoke-interface/range {v19 .. v20}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 250
    new-instance v18, Landroid/content/Intent;

    const-string v19, "android.intent.action.WEB_SEARCH"

    invoke-direct/range {v18 .. v19}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 251
    .local v18, target:Landroid/content/Intent;
    invoke-virtual {v10}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v14

    .line 252
    .local v14, pm:Landroid/content/pm/PackageManager;
    const/high16 v19, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v14, v0, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v13

    .line 253
    .local v13, mainActivitiesList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v19

    if-gtz v19, :cond_4

    .line 254
    const/16 v19, 0x0

    const v20, 0x1020370

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-direct {v0, v1, v2, v3}, Landroid/webkit/SelectActionModeCallback;->setMenuVisibility(Landroid/view/Menu;ZI)V

    .line 257
    :cond_4
    const/16 v19, 0x0

    const v20, 0x102036f

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-direct {v0, v1, v2, v3}, Landroid/webkit/SelectActionModeCallback;->setMenuVisibility(Landroid/view/Menu;ZI)V

    .line 261
    .end local v13           #mainActivitiesList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v14           #pm:Landroid/content/pm/PackageManager;
    .end local v18           #target:Landroid/content/Intent;
    :cond_5
    const/16 v19, 0x1

    return v19

    .line 164
    .end local v4           #canCopy:Z
    .end local v5           #canCut:Z
    .end local v6           #canFind:Z
    .end local v7           #canPaste:Z
    .end local v8           #canWebSearch:Z
    .end local v9           #cm:Landroid/content/ClipboardManager;
    .end local v10           #context:Landroid/content/Context;
    .end local v11           #isEditable:Z
    .end local v12           #isFocusable:Z
    .end local v15           #selectAll:Landroid/view/MenuItem;
    :cond_6
    invoke-virtual/range {p1 .. p1}, Landroid/view/ActionMode;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v19

    const/high16 v20, 0x114

    move-object/from16 v0, v19

    move/from16 v1, v20

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    goto/16 :goto_0

    .line 173
    .restart local v10       #context:Landroid/content/Context;
    :cond_7
    const v19, 0x10403c4

    move/from16 v0, v19

    invoke-virtual {v10, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v19

    goto/16 :goto_1

    .line 182
    :cond_8
    const/16 v19, 0x0

    goto/16 :goto_2

    .line 185
    :cond_9
    const/16 v19, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/ActionMode;->setTitleOptionalHint(Z)V

    goto/16 :goto_3

    .line 198
    .restart local v9       #cm:Landroid/content/ClipboardManager;
    .restart local v11       #isEditable:Z
    .restart local v12       #isFocusable:Z
    :cond_a
    const/4 v7, 0x0

    goto/16 :goto_4

    .line 199
    .restart local v7       #canPaste:Z
    :cond_b
    const/4 v6, 0x0

    goto/16 :goto_5

    .line 200
    .restart local v6       #canFind:Z
    :cond_c
    const/4 v5, 0x0

    goto/16 :goto_6
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 1
    .parameter "mode"

    .prologue
    .line 380
    iget-object v0, p0, Landroid/webkit/SelectActionModeCallback;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkit/WebViewClassic;->selectionDone()V

    .line 381
    return-void
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 1
    .parameter "mode"
    .parameter "menu"

    .prologue
    .line 266
    const/4 v0, 0x1

    return v0
.end method

.method setCabTitle(Ljava/lang/String;)V
    .locals 1
    .parameter "title"

    .prologue
    .line 116
    iget-object v0, p0, Landroid/webkit/SelectActionModeCallback;->mActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_0

    .line 117
    iget-object v0, p0, Landroid/webkit/SelectActionModeCallback;->mActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0, p1}, Landroid/view/ActionMode;->setTitle(Ljava/lang/CharSequence;)V

    .line 119
    :cond_0
    return-void
.end method

.method public setHtcStyle(Z)V
    .locals 0
    .parameter "enable"

    .prologue
    .line 409
    iput-boolean p1, p0, Landroid/webkit/SelectActionModeCallback;->isHtcStyle:Z

    .line 410
    return-void
.end method

.method setShouldKillKikinResultsContainer(Z)V
    .locals 2
    .parameter "shouldKillKikinResultsContainer"

    .prologue
    .line 137
    iget v1, p0, Landroid/webkit/SelectActionModeCallback;->mShouldKillKikinResultsContainer:I

    if-eqz p1, :cond_1

    const/4 v0, -0x1

    :goto_0
    add-int/2addr v0, v1

    iput v0, p0, Landroid/webkit/SelectActionModeCallback;->mShouldKillKikinResultsContainer:I

    .line 138
    iget v0, p0, Landroid/webkit/SelectActionModeCallback;->mShouldKillKikinResultsContainer:I

    if-gez v0, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Landroid/webkit/SelectActionModeCallback;->mShouldKillKikinResultsContainer:I

    .line 139
    :cond_0
    return-void

    .line 137
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method setShouldRestoreKikinResultsContainer(Z)V
    .locals 0
    .parameter "shouldRestoreKikinResultsContainer"

    .prologue
    .line 127
    iput-boolean p1, p0, Landroid/webkit/SelectActionModeCallback;->mShouldRestoreKikinResultsContainer:Z

    .line 128
    return-void
.end method

.method setShouldShowKikinResultsContainer(Z)V
    .locals 0
    .parameter "shouldShowKikinResultsContainer"

    .prologue
    .line 151
    iput-boolean p1, p0, Landroid/webkit/SelectActionModeCallback;->mShouldShowKikinResulsContainer:Z

    .line 152
    return-void
.end method

.method public setTextSelected(Z)V
    .locals 0
    .parameter "isTextSelected"

    .prologue
    .line 74
    iput-boolean p1, p0, Landroid/webkit/SelectActionModeCallback;->mIsTextSelected:Z

    .line 75
    return-void
.end method

.method public setWebView(Landroid/webkit/WebViewClassic;)V
    .locals 2
    .parameter "webView"

    .prologue
    const/4 v1, 0x1

    .line 63
    iput-object p1, p0, Landroid/webkit/SelectActionModeCallback;->mWebView:Landroid/webkit/WebViewClassic;

    .line 65
    iget-object v0, p0, Landroid/webkit/SelectActionModeCallback;->mWebView:Landroid/webkit/WebViewClassic;

    iget v0, v0, Landroid/webkit/WebViewClassic;->mSelectionUIType:I

    if-ne v0, v1, :cond_0

    .line 66
    iput-boolean v1, p0, Landroid/webkit/SelectActionModeCallback;->IS_KIKIN_ENABLED:Z

    .line 71
    :goto_0
    return-void

    .line 68
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkit/SelectActionModeCallback;->IS_KIKIN_ENABLED:Z

    goto :goto_0
.end method
