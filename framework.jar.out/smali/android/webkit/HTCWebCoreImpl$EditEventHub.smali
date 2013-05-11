.class Landroid/webkit/HTCWebCoreImpl$EditEventHub;
.super Ljava/lang/Object;
.source "HTCWebCoreImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/HTCWebCoreImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "EditEventHub"
.end annotation


# static fields
.field static final ALIGN_CENTER:I = 0x203

.field static final ALIGN_JUSTIFIED:I = 0x204

.field static final ALIGN_LEFT:I = 0x205

.field static final ALIGN_RIGHT:I = 0x206

.field static final AUTO_EXTEND_TO_WORD:I = 0x216

.field static final CANCEL_ANCHOR_SPAN:I = 0x223

.field static final CHECK_CURRENT_SPELL:I = 0x232

.field static final COMPOSING_TEXT:I = 0x1f6

.field static final COPY:I = 0x21c

.field static final CUT:I = 0x21d

.field static final DELET_SURROUNDING_TEXT:I = 0x1f7

.field static final DO_SELECTION:I = 0x213

.field static final DO_SELECTION_INDX:I = 0x214

.field static final END_MATCH_PHRASE:I = 0x218

.field static final EXPORT_HTML:I = 0x1fc

.field static final EXPORT_HTML_CALLBACK:I = 0x1fd

.field static final FIND_CONTINOUS_BR_FROM_END:I = 0x221

.field private static final FIRST_MSG:I = 0x1f4

.field static final GET_BODY_NODE:I = 0x277

.field static final GET_HTML_STRING:I = 0x1f9

.field static final GET_READ_MODE_CONTENT:I = 0x259

.field static final INFORM_COLOR_CHANGED:I = 0x20a

.field static final INSERT_ANCHOR_SPAN:I = 0x222

.field static final INSERT_HTML:I = 0x1fa

.field static final INSERT_HTML_ANCHOR_SPAN:I = 0x224

.field static final INSERT_HTML_STRING:I = 0x1fb

.field static final INSERT_HTML_TO_THE_END:I = 0x220

.field static final INSERT_IMAGE:I = 0x1fe

.field static final INSERT_PR_HTML_TO_THE_END:I = 0x25a

.field static final INSERT_TEXT:I = 0x1f5

.field private static final LAST_MSG:I = 0x233

.field static final MARK_MISSPELLING:I = 0x231

.field static final MATCH_PHRASE:I = 0x217

.field static final MODIFY_SELECTION:I = 0x212

.field static final N_CLICK:I = 0x1f8

.field static final PAINT_CARET:I = 0x20c

.field static final PASTE_LATEST_CONTENT_FROM_CLIPBOARD:I = 0x225

.field static final PASTE_PLAIN_TEXT:I = 0x21f

.field static final PASTE_WITH_STYLE:I = 0x21e

.field static final PAUSE_FP_DOPLAY:I = 0x263

.field static final RESCAN_SPELLINGS:I = 0x233

.field static final RESUME_FP_DOPLAY:I = 0x264

.field static final SELECT_ALL:I = 0x219

.field static final SELECT_CJKS_WORD:I = 0x215

.field static final SET_BACK_COLOR:I = 0x208

.field static final SET_EDITABLE:I = 0x1f4

.field static final SET_FONT_SIZE:I = 0x209

.field static final SET_FORE_COLOR:I = 0x207

.field static final SET_IMAGE_ATTR:I = 0x20b

.field static final SWITCH_SPELL_CHECK:I = 0x230

.field static final TOGGLE_BOLD:I = 0x1ff

.field static final TOGGLE_ITALIC:I = 0x201

.field static final TOGGLE_STRIKETHROUGH:I = 0x202

.field static final TOGGLE_UNDERLINE:I = 0x200

.field static final UPDATE_SELECTION_INFO:I = 0x26d


# instance fields
.field public mLastContentChangedMsg:I

.field private nodePtr:I

.field private nodeText:Ljava/lang/String;

.field final synthetic this$0:Landroid/webkit/HTCWebCoreImpl;


# direct methods
.method constructor <init>(Landroid/webkit/HTCWebCoreImpl;)V
    .locals 1
    .parameter

    .prologue
    .line 395
    iput-object p1, p0, Landroid/webkit/HTCWebCoreImpl$EditEventHub;->this$0:Landroid/webkit/HTCWebCoreImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 396
    const/4 v0, 0x0

    iput v0, p0, Landroid/webkit/HTCWebCoreImpl$EditEventHub;->nodePtr:I

    .line 397
    const-string v0, ""

    iput-object v0, p0, Landroid/webkit/HTCWebCoreImpl$EditEventHub;->nodeText:Ljava/lang/String;

    .line 459
    const/4 v0, -0x1

    iput v0, p0, Landroid/webkit/HTCWebCoreImpl$EditEventHub;->mLastContentChangedMsg:I

    return-void
.end method


# virtual methods
.method handleMessage(Landroid/os/Message;)V
    .locals 46
    .parameter "msg"

    .prologue
    .line 469
    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->what:I

    const/16 v4, 0x1fa

    if-eq v3, v4, :cond_0

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->what:I

    const/16 v4, 0x20c

    if-eq v3, v4, :cond_0

    .line 470
    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->what:I

    move-object/from16 v0, p0

    iput v3, v0, Landroid/webkit/HTCWebCoreImpl$EditEventHub;->mLastContentChangedMsg:I

    .line 472
    :cond_0
    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 872
    :cond_1
    :goto_0
    :pswitch_0
    return-void

    .line 474
    :pswitch_1
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v23, v0

    check-cast v23, Landroid/os/Message;

    .line 475
    .local v23, callback:Landroid/os/Message;
    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v28, v0

    check-cast v28, Ljava/lang/String;

    .line 476
    .local v28, htmlString:Ljava/lang/String;
    if-eqz v28, :cond_1

    invoke-virtual/range {v28 .. v28}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_1

    .line 477
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/HTCWebCoreImpl$EditEventHub;->this$0:Landroid/webkit/HTCWebCoreImpl;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/HTCWebCoreImpl$EditEventHub;->this$0:Landroid/webkit/HTCWebCoreImpl;

    #getter for: Landroid/webkit/HTCWebCoreImpl;->mCoreNativeClass:I
    invoke-static {v4}, Landroid/webkit/HTCWebCoreImpl;->access$000(Landroid/webkit/HTCWebCoreImpl;)I

    move-result v4

    move-object/from16 v0, v28

    invoke-virtual {v3, v4, v0}, Landroid/webkit/HTCWebCoreImpl;->nativeInsertHtmlToTheEnd(ILjava/lang/String;)V

    .line 478
    invoke-virtual/range {v23 .. v23}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 483
    .end local v23           #callback:Landroid/os/Message;
    .end local v28           #htmlString:Ljava/lang/String;
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/HTCWebCoreImpl$EditEventHub;->this$0:Landroid/webkit/HTCWebCoreImpl;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/HTCWebCoreImpl$EditEventHub;->this$0:Landroid/webkit/HTCWebCoreImpl;

    #getter for: Landroid/webkit/HTCWebCoreImpl;->mCoreNativeClass:I
    invoke-static {v4}, Landroid/webkit/HTCWebCoreImpl;->access$000(Landroid/webkit/HTCWebCoreImpl;)I

    move-result v4

    move-object/from16 v0, p1

    iget v7, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v3, v4, v7}, Landroid/webkit/HTCWebCoreImpl;->nativeFindContinuousBRFromEnd(II)I

    move-result v33

    .line 484
    .local v33, pos:I
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v24, v0

    check-cast v24, Landroid/os/Message;

    .line 485
    .local v24, callbackMsg:Landroid/os/Message;
    move/from16 v0, v33

    move-object/from16 v1, v24

    iput v0, v1, Landroid/os/Message;->arg1:I

    .line 486
    invoke-virtual/range {v24 .. v24}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 489
    .end local v24           #callbackMsg:Landroid/os/Message;
    .end local v33           #pos:I
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/HTCWebCoreImpl$EditEventHub;->this$0:Landroid/webkit/HTCWebCoreImpl;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/HTCWebCoreImpl$EditEventHub;->this$0:Landroid/webkit/HTCWebCoreImpl;

    #getter for: Landroid/webkit/HTCWebCoreImpl;->mCoreNativeClass:I
    invoke-static {v3}, Landroid/webkit/HTCWebCoreImpl;->access$000(Landroid/webkit/HTCWebCoreImpl;)I

    move-result v7

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg1:I

    const/4 v8, 0x1

    if-ne v3, v8, :cond_2

    const/4 v3, 0x1

    :goto_1
    #calls: Landroid/webkit/HTCWebCoreImpl;->nativeModifySelection(IZ)V
    invoke-static {v4, v7, v3}, Landroid/webkit/HTCWebCoreImpl;->access$100(Landroid/webkit/HTCWebCoreImpl;IZ)V

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    goto :goto_1

    .line 492
    :pswitch_4
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v34, v0

    check-cast v34, Landroid/graphics/Point;

    .line 493
    .local v34, posPt:Landroid/graphics/Point;
    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg2:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_4

    .line 494
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/HTCWebCoreImpl$EditEventHub;->this$0:Landroid/webkit/HTCWebCoreImpl;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/HTCWebCoreImpl$EditEventHub;->this$0:Landroid/webkit/HTCWebCoreImpl;

    #getter for: Landroid/webkit/HTCWebCoreImpl;->mCoreNativeClass:I
    invoke-static {v3}, Landroid/webkit/HTCWebCoreImpl;->access$000(Landroid/webkit/HTCWebCoreImpl;)I

    move-result v7

    move-object/from16 v0, v34

    iget v8, v0, Landroid/graphics/Point;->x:I

    move-object/from16 v0, v34

    iget v9, v0, Landroid/graphics/Point;->y:I

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg1:I

    const/4 v10, 0x1

    if-ne v3, v10, :cond_3

    const/4 v3, 0x1

    :goto_2
    #calls: Landroid/webkit/HTCWebCoreImpl;->nativeDoWordSelection(IIIZ)V
    invoke-static {v4, v7, v8, v9, v3}, Landroid/webkit/HTCWebCoreImpl;->access$200(Landroid/webkit/HTCWebCoreImpl;IIIZ)V

    goto/16 :goto_0

    :cond_3
    const/4 v3, 0x0

    goto :goto_2

    .line 496
    :cond_4
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/HTCWebCoreImpl$EditEventHub;->this$0:Landroid/webkit/HTCWebCoreImpl;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/HTCWebCoreImpl$EditEventHub;->this$0:Landroid/webkit/HTCWebCoreImpl;

    #getter for: Landroid/webkit/HTCWebCoreImpl;->mCoreNativeClass:I
    invoke-static {v3}, Landroid/webkit/HTCWebCoreImpl;->access$000(Landroid/webkit/HTCWebCoreImpl;)I

    move-result v7

    move-object/from16 v0, v34

    iget v8, v0, Landroid/graphics/Point;->x:I

    move-object/from16 v0, v34

    iget v9, v0, Landroid/graphics/Point;->y:I

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg1:I

    const/4 v10, 0x1

    if-ne v3, v10, :cond_5

    const/4 v3, 0x1

    :goto_3
    #calls: Landroid/webkit/HTCWebCoreImpl;->nativeDoSelection(IIIZ)V
    invoke-static {v4, v7, v8, v9, v3}, Landroid/webkit/HTCWebCoreImpl;->access$300(Landroid/webkit/HTCWebCoreImpl;IIIZ)V

    goto/16 :goto_0

    :cond_5
    const/4 v3, 0x0

    goto :goto_3

    .line 501
    .end local v34           #posPt:Landroid/graphics/Point;
    :pswitch_5
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/HTCWebCoreImpl$EditEventHub;->this$0:Landroid/webkit/HTCWebCoreImpl;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/HTCWebCoreImpl$EditEventHub;->this$0:Landroid/webkit/HTCWebCoreImpl;

    #getter for: Landroid/webkit/HTCWebCoreImpl;->mCoreNativeClass:I
    invoke-static {v4}, Landroid/webkit/HTCWebCoreImpl;->access$000(Landroid/webkit/HTCWebCoreImpl;)I

    move-result v4

    #calls: Landroid/webkit/HTCWebCoreImpl;->nativeSelectAll(I)V
    invoke-static {v3, v4}, Landroid/webkit/HTCWebCoreImpl;->access$400(Landroid/webkit/HTCWebCoreImpl;I)V

    goto/16 :goto_0

    .line 505
    :pswitch_6
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, [I

    move-object/from16 v30, v3

    check-cast v30, [I

    .line 506
    .local v30, indexes:[I
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/HTCWebCoreImpl$EditEventHub;->this$0:Landroid/webkit/HTCWebCoreImpl;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/HTCWebCoreImpl$EditEventHub;->this$0:Landroid/webkit/HTCWebCoreImpl;

    #getter for: Landroid/webkit/HTCWebCoreImpl;->mCoreNativeClass:I
    invoke-static {v4}, Landroid/webkit/HTCWebCoreImpl;->access$000(Landroid/webkit/HTCWebCoreImpl;)I

    move-result v4

    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->arg1:I

    const/4 v7, 0x0

    aget v6, v30, v7

    move-object/from16 v0, p1

    iget v7, v0, Landroid/os/Message;->arg2:I

    const/4 v8, 0x1

    aget v8, v30, v8

    #calls: Landroid/webkit/HTCWebCoreImpl;->nativeDoSelectionByIndex(IIIII)V
    invoke-static/range {v3 .. v8}, Landroid/webkit/HTCWebCoreImpl;->access$500(Landroid/webkit/HTCWebCoreImpl;IIIII)V

    goto/16 :goto_0

    .line 510
    .end local v30           #indexes:[I
    :pswitch_7
    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->arg1:I

    .line 511
    .local v5, pnode:I
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v38, v0

    .line 513
    .local v38, start:I
    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkit/HTCWebCoreImpl$EditEventHub;->nodePtr:I

    if-eq v3, v5, :cond_6

    .line 514
    move-object/from16 v0, p0

    iput v5, v0, Landroid/webkit/HTCWebCoreImpl$EditEventHub;->nodePtr:I

    .line 515
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/HTCWebCoreImpl$EditEventHub;->this$0:Landroid/webkit/HTCWebCoreImpl;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/HTCWebCoreImpl$EditEventHub;->this$0:Landroid/webkit/HTCWebCoreImpl;

    #getter for: Landroid/webkit/HTCWebCoreImpl;->mCoreNativeClass:I
    invoke-static {v4}, Landroid/webkit/HTCWebCoreImpl;->access$000(Landroid/webkit/HTCWebCoreImpl;)I

    move-result v4

    const/4 v6, -0x1

    const/4 v8, -0x1

    move v7, v5

    #calls: Landroid/webkit/HTCWebCoreImpl;->nativeGetTextBetween(IIIII)Ljava/lang/String;
    invoke-static/range {v3 .. v8}, Landroid/webkit/HTCWebCoreImpl;->access$600(Landroid/webkit/HTCWebCoreImpl;IIIII)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Landroid/webkit/HTCWebCoreImpl$EditEventHub;->nodeText:Ljava/lang/String;

    .line 518
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/HTCWebCoreImpl$EditEventHub;->nodeText:Ljava/lang/String;

    move-object/from16 v42, v0

    .line 519
    .local v42, text:Ljava/lang/String;
    if-eqz v42, :cond_1

    invoke-virtual/range {v42 .. v42}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_1

    if-ltz v38, :cond_1

    .line 523
    invoke-virtual/range {v42 .. v42}, Ljava/lang/String;->length()I

    move-result v3

    move/from16 v0, v38

    if-lt v0, v3, :cond_13

    .line 524
    invoke-virtual/range {v42 .. v42}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v6, v3, -0x1

    .line 527
    .end local v38           #start:I
    .local v6, start:I
    :goto_4
    sget-object v3, Landroid/webkit/HTCWebCoreImpl;->suggestionFromIME:Lcom/htc/textselection/FetchSuggestionFromIME;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/HTCWebCoreImpl$EditEventHub;->this$0:Landroid/webkit/HTCWebCoreImpl;

    #getter for: Landroid/webkit/HTCWebCoreImpl;->mWebView:Landroid/webkit/WebViewClassic;
    invoke-static {v4}, Landroid/webkit/HTCWebCoreImpl;->access$700(Landroid/webkit/HTCWebCoreImpl;)Landroid/webkit/WebViewClassic;

    move-result-object v4

    invoke-virtual {v4}, Landroid/webkit/WebViewClassic;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/htc/textselection/FetchSuggestionFromIME;->setContext(Landroid/content/Context;)V

    .line 528
    sget-object v3, Landroid/webkit/HTCWebCoreImpl;->suggestionFromIME:Lcom/htc/textselection/FetchSuggestionFromIME;

    invoke-virtual {v3}, Lcom/htc/textselection/FetchSuggestionFromIME;->isEnable()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-virtual/range {v42 .. v42}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x2

    if-ge v3, v4, :cond_8

    .line 541
    .end local v6           #start:I
    :cond_7
    :goto_5
    sget-object v3, Landroid/webkit/HTCWebCoreImpl;->suggestionFromIME:Lcom/htc/textselection/FetchSuggestionFromIME;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/htc/textselection/FetchSuggestionFromIME;->setContext(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 531
    .restart local v6       #start:I
    :cond_8
    sget-object v3, Landroid/webkit/HTCWebCoreImpl;->suggestionFromIME:Lcom/htc/textselection/FetchSuggestionFromIME;

    const-string v4, "1"

    move-object/from16 v0, v42

    invoke-virtual {v3, v0, v6, v4}, Lcom/htc/textselection/FetchSuggestionFromIME;->matchWord(Ljava/lang/String;ILjava/lang/String;)[I

    move-result-object v36

    .line 533
    .local v36, s_e:[I
    const/4 v3, 0x0

    aget v3, v36, v3

    const/4 v4, 0x1

    aget v4, v36, v4

    if-eq v3, v4, :cond_9

    .line 535
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/HTCWebCoreImpl$EditEventHub;->this$0:Landroid/webkit/HTCWebCoreImpl;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/HTCWebCoreImpl$EditEventHub;->this$0:Landroid/webkit/HTCWebCoreImpl;

    #getter for: Landroid/webkit/HTCWebCoreImpl;->mCoreNativeClass:I
    invoke-static {v4}, Landroid/webkit/HTCWebCoreImpl;->access$000(Landroid/webkit/HTCWebCoreImpl;)I

    move-result v4

    const/4 v7, 0x0

    aget v6, v36, v7

    .end local v6           #start:I
    const/4 v7, 0x1

    aget v8, v36, v7

    move v7, v5

    #calls: Landroid/webkit/HTCWebCoreImpl;->nativeDoSelectionByIndex(IIIII)V
    invoke-static/range {v3 .. v8}, Landroid/webkit/HTCWebCoreImpl;->access$500(Landroid/webkit/HTCWebCoreImpl;IIIII)V

    goto :goto_5

    .line 537
    .restart local v6       #start:I
    :cond_9
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/HTCWebCoreImpl$EditEventHub;->this$0:Landroid/webkit/HTCWebCoreImpl;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/HTCWebCoreImpl$EditEventHub;->this$0:Landroid/webkit/HTCWebCoreImpl;

    #getter for: Landroid/webkit/HTCWebCoreImpl;->mCoreNativeClass:I
    invoke-static {v4}, Landroid/webkit/HTCWebCoreImpl;->access$000(Landroid/webkit/HTCWebCoreImpl;)I

    move-result v4

    add-int/lit8 v8, v6, 0x1

    move v7, v5

    #calls: Landroid/webkit/HTCWebCoreImpl;->nativeDoSelectionByIndex(IIIII)V
    invoke-static/range {v3 .. v8}, Landroid/webkit/HTCWebCoreImpl;->access$500(Landroid/webkit/HTCWebCoreImpl;IIIII)V

    goto :goto_5

    .line 569
    .end local v5           #pnode:I
    .end local v6           #start:I
    .end local v36           #s_e:[I
    .end local v42           #text:Ljava/lang/String;
    :pswitch_8
    sget-object v3, Landroid/webkit/HTCWebCoreImpl;->suggestionFromIME:Lcom/htc/textselection/FetchSuggestionFromIME;

    invoke-virtual {v3}, Lcom/htc/textselection/FetchSuggestionFromIME;->isEnable()Z

    move-result v3

    if-nez v3, :cond_a

    .line 570
    sget-object v3, Landroid/webkit/HTCWebCoreImpl;->suggestionFromIME:Lcom/htc/textselection/FetchSuggestionFromIME;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/HTCWebCoreImpl$EditEventHub;->this$0:Landroid/webkit/HTCWebCoreImpl;

    #getter for: Landroid/webkit/HTCWebCoreImpl;->mWebView:Landroid/webkit/WebViewClassic;
    invoke-static {v4}, Landroid/webkit/HTCWebCoreImpl;->access$700(Landroid/webkit/HTCWebCoreImpl;)Landroid/webkit/WebViewClassic;

    move-result-object v4

    invoke-virtual {v4}, Landroid/webkit/WebViewClassic;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/htc/textselection/FetchSuggestionFromIME;->setContext(Landroid/content/Context;)V

    .line 572
    :cond_a
    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->arg1:I

    .line 573
    .restart local v5       #pnode:I
    move-object/from16 v0, p1

    iget v6, v0, Landroid/os/Message;->arg2:I

    .line 575
    .restart local v6       #start:I
    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkit/HTCWebCoreImpl$EditEventHub;->nodePtr:I

    if-eq v3, v5, :cond_b

    .line 576
    move-object/from16 v0, p0

    iput v5, v0, Landroid/webkit/HTCWebCoreImpl$EditEventHub;->nodePtr:I

    .line 577
    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/webkit/HTCWebCoreImpl$EditEventHub;->this$0:Landroid/webkit/HTCWebCoreImpl;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/HTCWebCoreImpl$EditEventHub;->this$0:Landroid/webkit/HTCWebCoreImpl;

    #getter for: Landroid/webkit/HTCWebCoreImpl;->mCoreNativeClass:I
    invoke-static {v3}, Landroid/webkit/HTCWebCoreImpl;->access$000(Landroid/webkit/HTCWebCoreImpl;)I

    move-result v8

    const/4 v10, -0x1

    const/4 v12, -0x1

    move v9, v5

    move v11, v5

    #calls: Landroid/webkit/HTCWebCoreImpl;->nativeGetTextBetween(IIIII)Ljava/lang/String;
    invoke-static/range {v7 .. v12}, Landroid/webkit/HTCWebCoreImpl;->access$600(Landroid/webkit/HTCWebCoreImpl;IIIII)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Landroid/webkit/HTCWebCoreImpl$EditEventHub;->nodeText:Ljava/lang/String;

    .line 580
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/HTCWebCoreImpl$EditEventHub;->nodeText:Ljava/lang/String;

    move-object/from16 v42, v0

    .line 581
    .restart local v42       #text:Ljava/lang/String;
    if-eqz v42, :cond_1

    invoke-virtual/range {v42 .. v42}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_1

    if-ltz v6, :cond_1

    .line 585
    invoke-virtual/range {v42 .. v42}, Ljava/lang/String;->length()I

    move-result v3

    if-lt v6, v3, :cond_c

    .line 586
    invoke-virtual/range {v42 .. v42}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v6, v3, -0x1

    .line 590
    :cond_c
    sget-object v3, Landroid/webkit/HTCWebCoreImpl;->suggestionFromIME:Lcom/htc/textselection/FetchSuggestionFromIME;

    invoke-virtual {v3}, Lcom/htc/textselection/FetchSuggestionFromIME;->isEnable()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual/range {v42 .. v42}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x2

    if-lt v3, v4, :cond_1

    .line 593
    sget-object v3, Landroid/webkit/HTCWebCoreImpl;->suggestionFromIME:Lcom/htc/textselection/FetchSuggestionFromIME;

    const-string v4, "1"

    move-object/from16 v0, v42

    invoke-virtual {v3, v0, v6, v4}, Lcom/htc/textselection/FetchSuggestionFromIME;->matchWord(Ljava/lang/String;ILjava/lang/String;)[I

    move-result-object v36

    .line 595
    .restart local v36       #s_e:[I
    const/4 v3, 0x0

    aget v3, v36, v3

    const/4 v4, 0x1

    aget v4, v36, v4

    if-eq v3, v4, :cond_1

    .line 597
    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/webkit/HTCWebCoreImpl$EditEventHub;->this$0:Landroid/webkit/HTCWebCoreImpl;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/HTCWebCoreImpl$EditEventHub;->this$0:Landroid/webkit/HTCWebCoreImpl;

    #getter for: Landroid/webkit/HTCWebCoreImpl;->mCoreNativeClass:I
    invoke-static {v3}, Landroid/webkit/HTCWebCoreImpl;->access$000(Landroid/webkit/HTCWebCoreImpl;)I

    move-result v8

    const/4 v3, 0x0

    aget v10, v36, v3

    const/4 v3, 0x1

    aget v12, v36, v3

    move v9, v5

    move v11, v5

    #calls: Landroid/webkit/HTCWebCoreImpl;->nativeDoSelectionByIndex(IIIII)V
    invoke-static/range {v7 .. v12}, Landroid/webkit/HTCWebCoreImpl;->access$500(Landroid/webkit/HTCWebCoreImpl;IIIII)V

    goto/16 :goto_0

    .line 606
    .end local v5           #pnode:I
    .end local v6           #start:I
    .end local v36           #s_e:[I
    .end local v42           #text:Ljava/lang/String;
    :pswitch_9
    sget-object v3, Landroid/webkit/HTCWebCoreImpl;->suggestionFromIME:Lcom/htc/textselection/FetchSuggestionFromIME;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/htc/textselection/FetchSuggestionFromIME;->setContext(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 610
    :pswitch_a
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/HTCWebCoreImpl$EditEventHub;->this$0:Landroid/webkit/HTCWebCoreImpl;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/HTCWebCoreImpl$EditEventHub;->this$0:Landroid/webkit/HTCWebCoreImpl;

    #getter for: Landroid/webkit/HTCWebCoreImpl;->mCoreNativeClass:I
    invoke-static {v3}, Landroid/webkit/HTCWebCoreImpl;->access$000(Landroid/webkit/HTCWebCoreImpl;)I

    move-result v7

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg1:I

    const/4 v8, 0x1

    if-ne v3, v8, :cond_d

    const/4 v3, 0x1

    :goto_6
    #calls: Landroid/webkit/HTCWebCoreImpl;->nativeSetEditable(IZ)V
    invoke-static {v4, v7, v3}, Landroid/webkit/HTCWebCoreImpl;->access$800(Landroid/webkit/HTCWebCoreImpl;IZ)V

    goto/16 :goto_0

    :cond_d
    const/4 v3, 0x0

    goto :goto_6

    .line 613
    :pswitch_b
    new-instance v35, Landroid/graphics/Rect;

    invoke-direct/range {v35 .. v35}, Landroid/graphics/Rect;-><init>()V

    .line 614
    .local v35, ret:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/HTCWebCoreImpl$EditEventHub;->this$0:Landroid/webkit/HTCWebCoreImpl;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/HTCWebCoreImpl$EditEventHub;->this$0:Landroid/webkit/HTCWebCoreImpl;

    #getter for: Landroid/webkit/HTCWebCoreImpl;->mCoreNativeClass:I
    invoke-static {v4}, Landroid/webkit/HTCWebCoreImpl;->access$000(Landroid/webkit/HTCWebCoreImpl;)I

    move-result v4

    move-object/from16 v0, v35

    invoke-virtual {v3, v4, v0}, Landroid/webkit/HTCWebCoreImpl;->nativeGetVSbound(ILandroid/graphics/Rect;)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 615
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/HTCWebCoreImpl$EditEventHub;->this$0:Landroid/webkit/HTCWebCoreImpl;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/HTCWebCoreImpl$EditEventHub;->this$0:Landroid/webkit/HTCWebCoreImpl;

    #getter for: Landroid/webkit/HTCWebCoreImpl;->mCoreNativeClass:I
    invoke-static {v3}, Landroid/webkit/HTCWebCoreImpl;->access$000(Landroid/webkit/HTCWebCoreImpl;)I

    move-result v7

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg1:I

    const/4 v8, 0x1

    if-ne v3, v8, :cond_e

    const/4 v3, 0x1

    :goto_7
    #calls: Landroid/webkit/HTCWebCoreImpl;->nativeShouldPaintingCaret(IZ)V
    invoke-static {v4, v7, v3}, Landroid/webkit/HTCWebCoreImpl;->access$900(Landroid/webkit/HTCWebCoreImpl;IZ)V

    .line 616
    const/4 v3, -0x5

    const/4 v4, -0x5

    move-object/from16 v0, v35

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Rect;->inset(II)V

    .line 617
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/HTCWebCoreImpl$EditEventHub;->this$0:Landroid/webkit/HTCWebCoreImpl;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/HTCWebCoreImpl$EditEventHub;->this$0:Landroid/webkit/HTCWebCoreImpl;

    #getter for: Landroid/webkit/HTCWebCoreImpl;->mCoreNativeClass:I
    invoke-static {v4}, Landroid/webkit/HTCWebCoreImpl;->access$000(Landroid/webkit/HTCWebCoreImpl;)I

    move-result v4

    move-object/from16 v0, v35

    invoke-virtual {v3, v4, v0}, Landroid/webkit/HTCWebCoreImpl;->nativeContentInvalidate(ILandroid/graphics/Rect;)V

    goto/16 :goto_0

    .line 615
    :cond_e
    const/4 v3, 0x0

    goto :goto_7

    .line 623
    .end local v35           #ret:Landroid/graphics/Rect;
    :pswitch_c
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/HTCWebCoreImpl$EditEventHub;->this$0:Landroid/webkit/HTCWebCoreImpl;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/HTCWebCoreImpl$EditEventHub;->this$0:Landroid/webkit/HTCWebCoreImpl;

    #getter for: Landroid/webkit/HTCWebCoreImpl;->mCoreNativeClass:I
    invoke-static {v3}, Landroid/webkit/HTCWebCoreImpl;->access$000(Landroid/webkit/HTCWebCoreImpl;)I

    move-result v7

    move-object/from16 v0, p1

    iget v8, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    #calls: Landroid/webkit/HTCWebCoreImpl;->nativeInsert(IILjava/lang/String;)V
    invoke-static {v4, v7, v8, v3}, Landroid/webkit/HTCWebCoreImpl;->access$1000(Landroid/webkit/HTCWebCoreImpl;IILjava/lang/String;)V

    goto/16 :goto_0

    .line 626
    :pswitch_d
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v22, v0

    .line 627
    .local v22, c:I
    if-nez v22, :cond_f

    .line 628
    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/webkit/HTCWebCoreImpl$EditEventHub;->this$0:Landroid/webkit/HTCWebCoreImpl;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/HTCWebCoreImpl$EditEventHub;->this$0:Landroid/webkit/HTCWebCoreImpl;

    #getter for: Landroid/webkit/HTCWebCoreImpl;->mCoreNativeClass:I
    invoke-static {v3}, Landroid/webkit/HTCWebCoreImpl;->access$000(Landroid/webkit/HTCWebCoreImpl;)I

    move-result v8

    move-object/from16 v0, p1

    iget v9, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Ljava/lang/String;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    #calls: Landroid/webkit/HTCWebCoreImpl;->nativeComposing(IILjava/lang/String;IIII)V
    invoke-static/range {v7 .. v14}, Landroid/webkit/HTCWebCoreImpl;->access$1100(Landroid/webkit/HTCWebCoreImpl;IILjava/lang/String;IIII)V

    goto/16 :goto_0

    .line 631
    :cond_f
    invoke-static/range {v22 .. v22}, Landroid/graphics/Color;->alpha(I)I

    move-result v14

    .line 632
    .local v14, ca:I
    invoke-static/range {v22 .. v22}, Landroid/graphics/Color;->red(I)I

    move-result v11

    .line 633
    .local v11, cr:I
    invoke-static/range {v22 .. v22}, Landroid/graphics/Color;->green(I)I

    move-result v12

    .line 634
    .local v12, cg:I
    invoke-static/range {v22 .. v22}, Landroid/graphics/Color;->blue(I)I

    move-result v13

    .line 635
    .local v13, cb:I
    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/webkit/HTCWebCoreImpl$EditEventHub;->this$0:Landroid/webkit/HTCWebCoreImpl;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/HTCWebCoreImpl$EditEventHub;->this$0:Landroid/webkit/HTCWebCoreImpl;

    #getter for: Landroid/webkit/HTCWebCoreImpl;->mCoreNativeClass:I
    invoke-static {v3}, Landroid/webkit/HTCWebCoreImpl;->access$000(Landroid/webkit/HTCWebCoreImpl;)I

    move-result v8

    move-object/from16 v0, p1

    iget v9, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Ljava/lang/String;

    #calls: Landroid/webkit/HTCWebCoreImpl;->nativeComposing(IILjava/lang/String;IIII)V
    invoke-static/range {v7 .. v14}, Landroid/webkit/HTCWebCoreImpl;->access$1100(Landroid/webkit/HTCWebCoreImpl;IILjava/lang/String;IIII)V

    goto/16 :goto_0

    .line 640
    .end local v11           #cr:I
    .end local v12           #cg:I
    .end local v13           #cb:I
    .end local v14           #ca:I
    .end local v22           #c:I
    :pswitch_e
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, [I

    move-object/from16 v30, v3

    check-cast v30, [I

    .line 641
    .restart local v30       #indexes:[I
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/webkit/HTCWebCoreImpl$EditEventHub;->this$0:Landroid/webkit/HTCWebCoreImpl;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/HTCWebCoreImpl$EditEventHub;->this$0:Landroid/webkit/HTCWebCoreImpl;

    #getter for: Landroid/webkit/HTCWebCoreImpl;->mCoreNativeClass:I
    invoke-static {v3}, Landroid/webkit/HTCWebCoreImpl;->access$000(Landroid/webkit/HTCWebCoreImpl;)I

    move-result v16

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v17, v0

    const/4 v3, 0x0

    aget v18, v30, v3

    const/4 v3, 0x1

    aget v19, v30, v3

    const/4 v3, 0x2

    aget v20, v30, v3

    const/4 v3, 0x3

    aget v21, v30, v3

    #calls: Landroid/webkit/HTCWebCoreImpl;->nativeDeleteSurrounding(IIIIII)V
    invoke-static/range {v15 .. v21}, Landroid/webkit/HTCWebCoreImpl;->access$1200(Landroid/webkit/HTCWebCoreImpl;IIIIII)V

    goto/16 :goto_0

    .line 647
    .end local v30           #indexes:[I
    :pswitch_f
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/HTCWebCoreImpl$EditEventHub;->this$0:Landroid/webkit/HTCWebCoreImpl;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/HTCWebCoreImpl$EditEventHub;->this$0:Landroid/webkit/HTCWebCoreImpl;

    #getter for: Landroid/webkit/HTCWebCoreImpl;->mCoreNativeClass:I
    invoke-static {v4}, Landroid/webkit/HTCWebCoreImpl;->access$000(Landroid/webkit/HTCWebCoreImpl;)I

    move-result v4

    #calls: Landroid/webkit/HTCWebCoreImpl;->nativeGetHtmlString(I)Ljava/lang/String;
    invoke-static {v3, v4}, Landroid/webkit/HTCWebCoreImpl;->access$1300(Landroid/webkit/HTCWebCoreImpl;I)Ljava/lang/String;

    move-result-object v26

    .line 648
    .local v26, html:Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v23, v0

    check-cast v23, Landroid/os/Message;

    .line 649
    .restart local v23       #callback:Landroid/os/Message;
    move-object/from16 v0, v26

    move-object/from16 v1, v23

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 650
    invoke-virtual/range {v23 .. v23}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 654
    .end local v23           #callback:Landroid/os/Message;
    .end local v26           #html:Ljava/lang/String;
    :pswitch_10
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v31, v0

    check-cast v31, Ljava/lang/String;

    .line 655
    .local v31, insert_html:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/HTCWebCoreImpl$EditEventHub;->this$0:Landroid/webkit/HTCWebCoreImpl;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/HTCWebCoreImpl$EditEventHub;->this$0:Landroid/webkit/HTCWebCoreImpl;

    #getter for: Landroid/webkit/HTCWebCoreImpl;->mCoreNativeClass:I
    invoke-static {v4}, Landroid/webkit/HTCWebCoreImpl;->access$000(Landroid/webkit/HTCWebCoreImpl;)I

    move-result v4

    move-object/from16 v0, v31

    #calls: Landroid/webkit/HTCWebCoreImpl;->nativeInsertHtmlString(ILjava/lang/String;)Z
    invoke-static {v3, v4, v0}, Landroid/webkit/HTCWebCoreImpl;->access$1400(Landroid/webkit/HTCWebCoreImpl;ILjava/lang/String;)Z

    goto/16 :goto_0

    .line 660
    .end local v31           #insert_html:Ljava/lang/String;
    :pswitch_11
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/HTCWebCoreImpl$EditEventHub;->this$0:Landroid/webkit/HTCWebCoreImpl;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/HTCWebCoreImpl$EditEventHub;->this$0:Landroid/webkit/HTCWebCoreImpl;

    #getter for: Landroid/webkit/HTCWebCoreImpl;->mCoreNativeClass:I
    invoke-static {v3}, Landroid/webkit/HTCWebCoreImpl;->access$000(Landroid/webkit/HTCWebCoreImpl;)I

    move-result v7

    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    #calls: Landroid/webkit/HTCWebCoreImpl;->nativeExportHtml(ILjava/lang/String;)Z
    invoke-static {v4, v7, v3}, Landroid/webkit/HTCWebCoreImpl;->access$1500(Landroid/webkit/HTCWebCoreImpl;ILjava/lang/String;)Z

    goto/16 :goto_0

    .line 663
    :pswitch_12
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v23, v0

    check-cast v23, Landroid/os/Message;

    .line 664
    .restart local v23       #callback:Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/HTCWebCoreImpl$EditEventHub;->this$0:Landroid/webkit/HTCWebCoreImpl;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/HTCWebCoreImpl$EditEventHub;->this$0:Landroid/webkit/HTCWebCoreImpl;

    #getter for: Landroid/webkit/HTCWebCoreImpl;->mCoreNativeClass:I
    invoke-static {v3}, Landroid/webkit/HTCWebCoreImpl;->access$000(Landroid/webkit/HTCWebCoreImpl;)I

    move-result v7

    move-object/from16 v0, v23

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    #calls: Landroid/webkit/HTCWebCoreImpl;->nativeExportHtml(ILjava/lang/String;)Z
    invoke-static {v4, v7, v3}, Landroid/webkit/HTCWebCoreImpl;->access$1500(Landroid/webkit/HTCWebCoreImpl;ILjava/lang/String;)Z

    .line 665
    invoke-virtual/range {v23 .. v23}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 669
    .end local v23           #callback:Landroid/os/Message;
    :pswitch_13
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/HTCWebCoreImpl$EditEventHub;->this$0:Landroid/webkit/HTCWebCoreImpl;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/HTCWebCoreImpl$EditEventHub;->this$0:Landroid/webkit/HTCWebCoreImpl;

    #getter for: Landroid/webkit/HTCWebCoreImpl;->mCoreNativeClass:I
    invoke-static {v3}, Landroid/webkit/HTCWebCoreImpl;->access$000(Landroid/webkit/HTCWebCoreImpl;)I

    move-result v7

    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    #calls: Landroid/webkit/HTCWebCoreImpl;->nativeInsertHtml(ILjava/lang/String;)Z
    invoke-static {v4, v7, v3}, Landroid/webkit/HTCWebCoreImpl;->access$1600(Landroid/webkit/HTCWebCoreImpl;ILjava/lang/String;)Z

    goto/16 :goto_0

    .line 673
    :pswitch_14
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v29, v0

    check-cast v29, Landroid/webkit/EditableWebView$ImageInfo;

    .line 674
    .local v29, imageInfo:Landroid/webkit/EditableWebView$ImageInfo;
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/HTCWebCoreImpl$EditEventHub;->this$0:Landroid/webkit/HTCWebCoreImpl;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/HTCWebCoreImpl$EditEventHub;->this$0:Landroid/webkit/HTCWebCoreImpl;

    #getter for: Landroid/webkit/HTCWebCoreImpl;->mCoreNativeClass:I
    invoke-static {v4}, Landroid/webkit/HTCWebCoreImpl;->access$000(Landroid/webkit/HTCWebCoreImpl;)I

    move-result v4

    move-object/from16 v0, v29

    iget-object v7, v0, Landroid/webkit/EditableWebView$ImageInfo;->m_src:Ljava/lang/String;

    move-object/from16 v0, v29

    iget v8, v0, Landroid/webkit/EditableWebView$ImageInfo;->m_width:I

    move-object/from16 v0, v29

    iget v9, v0, Landroid/webkit/EditableWebView$ImageInfo;->m_height:I

    #calls: Landroid/webkit/HTCWebCoreImpl;->nativeInsertImage(ILjava/lang/String;II)V
    invoke-static {v3, v4, v7, v8, v9}, Landroid/webkit/HTCWebCoreImpl;->access$1700(Landroid/webkit/HTCWebCoreImpl;ILjava/lang/String;II)V

    goto/16 :goto_0

    .line 679
    .end local v29           #imageInfo:Landroid/webkit/EditableWebView$ImageInfo;
    :pswitch_15
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/HTCWebCoreImpl$EditEventHub;->this$0:Landroid/webkit/HTCWebCoreImpl;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/HTCWebCoreImpl$EditEventHub;->this$0:Landroid/webkit/HTCWebCoreImpl;

    #getter for: Landroid/webkit/HTCWebCoreImpl;->mCoreNativeClass:I
    invoke-static {v4}, Landroid/webkit/HTCWebCoreImpl;->access$000(Landroid/webkit/HTCWebCoreImpl;)I

    move-result v4

    #calls: Landroid/webkit/HTCWebCoreImpl;->nativeInformColorChanged(I)V
    invoke-static {v3, v4}, Landroid/webkit/HTCWebCoreImpl;->access$1800(Landroid/webkit/HTCWebCoreImpl;I)V

    goto/16 :goto_0

    .line 682
    :pswitch_16
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v44, v0

    check-cast v44, Ljava/lang/String;

    .line 683
    .local v44, txt:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/HTCWebCoreImpl$EditEventHub;->this$0:Landroid/webkit/HTCWebCoreImpl;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/HTCWebCoreImpl$EditEventHub;->this$0:Landroid/webkit/HTCWebCoreImpl;

    #getter for: Landroid/webkit/HTCWebCoreImpl;->mCoreNativeClass:I
    invoke-static {v4}, Landroid/webkit/HTCWebCoreImpl;->access$000(Landroid/webkit/HTCWebCoreImpl;)I

    move-result v4

    move-object/from16 v0, v44

    #calls: Landroid/webkit/HTCWebCoreImpl;->nativePasteWithStyle(ILjava/lang/String;)V
    invoke-static {v3, v4, v0}, Landroid/webkit/HTCWebCoreImpl;->access$1900(Landroid/webkit/HTCWebCoreImpl;ILjava/lang/String;)V

    goto/16 :goto_0

    .line 779
    .end local v44           #txt:Ljava/lang/String;
    :pswitch_17
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v3, :cond_1

    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/os/Message;

    iget-object v3, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v3, :cond_1

    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/os/Message;

    iget-object v3, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_1

    .line 783
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/HTCWebCoreImpl$EditEventHub;->this$0:Landroid/webkit/HTCWebCoreImpl;

    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/os/Message;

    #setter for: Landroid/webkit/HTCWebCoreImpl;->mAnchorSpanCallback:Landroid/os/Message;
    invoke-static {v4, v3}, Landroid/webkit/HTCWebCoreImpl;->access$2002(Landroid/webkit/HTCWebCoreImpl;Landroid/os/Message;)Landroid/os/Message;

    .line 784
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/os/Message;

    iget-object v0, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v43, v0

    check-cast v43, Ljava/lang/String;

    .line 785
    .local v43, title:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/HTCWebCoreImpl$EditEventHub;->this$0:Landroid/webkit/HTCWebCoreImpl;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/HTCWebCoreImpl$EditEventHub;->this$0:Landroid/webkit/HTCWebCoreImpl;

    #getter for: Landroid/webkit/HTCWebCoreImpl;->mCoreNativeClass:I
    invoke-static {v4}, Landroid/webkit/HTCWebCoreImpl;->access$000(Landroid/webkit/HTCWebCoreImpl;)I

    move-result v4

    move-object/from16 v0, v43

    #calls: Landroid/webkit/HTCWebCoreImpl;->nativeInsertAnchorSpan(ILjava/lang/String;)V
    invoke-static {v3, v4, v0}, Landroid/webkit/HTCWebCoreImpl;->access$2100(Landroid/webkit/HTCWebCoreImpl;ILjava/lang/String;)V

    goto/16 :goto_0

    .line 789
    .end local v43           #title:Ljava/lang/String;
    :pswitch_18
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/HTCWebCoreImpl$EditEventHub;->this$0:Landroid/webkit/HTCWebCoreImpl;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/HTCWebCoreImpl$EditEventHub;->this$0:Landroid/webkit/HTCWebCoreImpl;

    #getter for: Landroid/webkit/HTCWebCoreImpl;->mCoreNativeClass:I
    invoke-static {v4}, Landroid/webkit/HTCWebCoreImpl;->access$000(Landroid/webkit/HTCWebCoreImpl;)I

    move-result v4

    #calls: Landroid/webkit/HTCWebCoreImpl;->nativeCancelAnchorSpan(I)V
    invoke-static {v3, v4}, Landroid/webkit/HTCWebCoreImpl;->access$2200(Landroid/webkit/HTCWebCoreImpl;I)V

    goto/16 :goto_0

    .line 792
    :pswitch_19
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v3, :cond_1

    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    check-cast v3, Ljava/lang/String;

    if-eqz v3, :cond_1

    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_1

    .line 796
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    move-object/from16 v27, v3

    check-cast v27, Ljava/lang/String;

    .line 797
    .local v27, htmlContainsAnchorSpan:Ljava/lang/String;
    const-string v3, "KENLOG"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "<MSG> INSERT_HTML_ANCHOR_SPAN: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v27

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 798
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/HTCWebCoreImpl$EditEventHub;->this$0:Landroid/webkit/HTCWebCoreImpl;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/HTCWebCoreImpl$EditEventHub;->this$0:Landroid/webkit/HTCWebCoreImpl;

    #getter for: Landroid/webkit/HTCWebCoreImpl;->mCoreNativeClass:I
    invoke-static {v4}, Landroid/webkit/HTCWebCoreImpl;->access$000(Landroid/webkit/HTCWebCoreImpl;)I

    move-result v4

    move-object/from16 v0, v27

    #calls: Landroid/webkit/HTCWebCoreImpl;->nativeInsertHtmlContainsAnchorSpan(ILjava/lang/String;)Z
    invoke-static {v3, v4, v0}, Landroid/webkit/HTCWebCoreImpl;->access$2300(Landroid/webkit/HTCWebCoreImpl;ILjava/lang/String;)Z

    goto/16 :goto_0

    .line 802
    .end local v27           #htmlContainsAnchorSpan:Ljava/lang/String;
    :pswitch_1a
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/HTCWebCoreImpl$EditEventHub;->this$0:Landroid/webkit/HTCWebCoreImpl;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/HTCWebCoreImpl$EditEventHub;->this$0:Landroid/webkit/HTCWebCoreImpl;

    #getter for: Landroid/webkit/HTCWebCoreImpl;->mCoreNativeClass:I
    invoke-static {v4}, Landroid/webkit/HTCWebCoreImpl;->access$000(Landroid/webkit/HTCWebCoreImpl;)I

    move-result v4

    #calls: Landroid/webkit/HTCWebCoreImpl;->nativeToggleBold(I)V
    invoke-static {v3, v4}, Landroid/webkit/HTCWebCoreImpl;->access$2400(Landroid/webkit/HTCWebCoreImpl;I)V

    goto/16 :goto_0

    .line 805
    :pswitch_1b
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/HTCWebCoreImpl$EditEventHub;->this$0:Landroid/webkit/HTCWebCoreImpl;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/HTCWebCoreImpl$EditEventHub;->this$0:Landroid/webkit/HTCWebCoreImpl;

    #getter for: Landroid/webkit/HTCWebCoreImpl;->mCoreNativeClass:I
    invoke-static {v4}, Landroid/webkit/HTCWebCoreImpl;->access$000(Landroid/webkit/HTCWebCoreImpl;)I

    move-result v4

    #calls: Landroid/webkit/HTCWebCoreImpl;->nativeToggleUnderline(I)V
    invoke-static {v3, v4}, Landroid/webkit/HTCWebCoreImpl;->access$2500(Landroid/webkit/HTCWebCoreImpl;I)V

    goto/16 :goto_0

    .line 808
    :pswitch_1c
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/HTCWebCoreImpl$EditEventHub;->this$0:Landroid/webkit/HTCWebCoreImpl;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/HTCWebCoreImpl$EditEventHub;->this$0:Landroid/webkit/HTCWebCoreImpl;

    #getter for: Landroid/webkit/HTCWebCoreImpl;->mCoreNativeClass:I
    invoke-static {v4}, Landroid/webkit/HTCWebCoreImpl;->access$000(Landroid/webkit/HTCWebCoreImpl;)I

    move-result v4

    #calls: Landroid/webkit/HTCWebCoreImpl;->nativeToggleItalic(I)V
    invoke-static {v3, v4}, Landroid/webkit/HTCWebCoreImpl;->access$2600(Landroid/webkit/HTCWebCoreImpl;I)V

    goto/16 :goto_0

    .line 811
    :pswitch_1d
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/HTCWebCoreImpl$EditEventHub;->this$0:Landroid/webkit/HTCWebCoreImpl;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/HTCWebCoreImpl$EditEventHub;->this$0:Landroid/webkit/HTCWebCoreImpl;

    #getter for: Landroid/webkit/HTCWebCoreImpl;->mCoreNativeClass:I
    invoke-static {v4}, Landroid/webkit/HTCWebCoreImpl;->access$000(Landroid/webkit/HTCWebCoreImpl;)I

    move-result v4

    #calls: Landroid/webkit/HTCWebCoreImpl;->nativeToggleStrikethrough(I)V
    invoke-static {v3, v4}, Landroid/webkit/HTCWebCoreImpl;->access$2700(Landroid/webkit/HTCWebCoreImpl;I)V

    goto/16 :goto_0

    .line 814
    :pswitch_1e
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/HTCWebCoreImpl$EditEventHub;->this$0:Landroid/webkit/HTCWebCoreImpl;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/HTCWebCoreImpl$EditEventHub;->this$0:Landroid/webkit/HTCWebCoreImpl;

    #getter for: Landroid/webkit/HTCWebCoreImpl;->mCoreNativeClass:I
    invoke-static {v4}, Landroid/webkit/HTCWebCoreImpl;->access$000(Landroid/webkit/HTCWebCoreImpl;)I

    move-result v4

    #calls: Landroid/webkit/HTCWebCoreImpl;->nativeAlignCenter(I)V
    invoke-static {v3, v4}, Landroid/webkit/HTCWebCoreImpl;->access$2800(Landroid/webkit/HTCWebCoreImpl;I)V

    goto/16 :goto_0

    .line 817
    :pswitch_1f
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/HTCWebCoreImpl$EditEventHub;->this$0:Landroid/webkit/HTCWebCoreImpl;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/HTCWebCoreImpl$EditEventHub;->this$0:Landroid/webkit/HTCWebCoreImpl;

    #getter for: Landroid/webkit/HTCWebCoreImpl;->mCoreNativeClass:I
    invoke-static {v4}, Landroid/webkit/HTCWebCoreImpl;->access$000(Landroid/webkit/HTCWebCoreImpl;)I

    move-result v4

    #calls: Landroid/webkit/HTCWebCoreImpl;->nativeAlignJustified(I)V
    invoke-static {v3, v4}, Landroid/webkit/HTCWebCoreImpl;->access$2900(Landroid/webkit/HTCWebCoreImpl;I)V

    goto/16 :goto_0

    .line 820
    :pswitch_20
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/HTCWebCoreImpl$EditEventHub;->this$0:Landroid/webkit/HTCWebCoreImpl;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/HTCWebCoreImpl$EditEventHub;->this$0:Landroid/webkit/HTCWebCoreImpl;

    #getter for: Landroid/webkit/HTCWebCoreImpl;->mCoreNativeClass:I
    invoke-static {v4}, Landroid/webkit/HTCWebCoreImpl;->access$000(Landroid/webkit/HTCWebCoreImpl;)I

    move-result v4

    #calls: Landroid/webkit/HTCWebCoreImpl;->nativeAlignLeft(I)V
    invoke-static {v3, v4}, Landroid/webkit/HTCWebCoreImpl;->access$3000(Landroid/webkit/HTCWebCoreImpl;I)V

    goto/16 :goto_0

    .line 823
    :pswitch_21
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/HTCWebCoreImpl$EditEventHub;->this$0:Landroid/webkit/HTCWebCoreImpl;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/HTCWebCoreImpl$EditEventHub;->this$0:Landroid/webkit/HTCWebCoreImpl;

    #getter for: Landroid/webkit/HTCWebCoreImpl;->mCoreNativeClass:I
    invoke-static {v4}, Landroid/webkit/HTCWebCoreImpl;->access$000(Landroid/webkit/HTCWebCoreImpl;)I

    move-result v4

    #calls: Landroid/webkit/HTCWebCoreImpl;->nativeAlignRight(I)V
    invoke-static {v3, v4}, Landroid/webkit/HTCWebCoreImpl;->access$3100(Landroid/webkit/HTCWebCoreImpl;I)V

    goto/16 :goto_0

    .line 826
    :pswitch_22
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/HTCWebCoreImpl$EditEventHub;->this$0:Landroid/webkit/HTCWebCoreImpl;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/HTCWebCoreImpl$EditEventHub;->this$0:Landroid/webkit/HTCWebCoreImpl;

    #getter for: Landroid/webkit/HTCWebCoreImpl;->mCoreNativeClass:I
    invoke-static {v3}, Landroid/webkit/HTCWebCoreImpl;->access$000(Landroid/webkit/HTCWebCoreImpl;)I

    move-result v7

    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    #calls: Landroid/webkit/HTCWebCoreImpl;->nativeSetForeColor(ILjava/lang/String;)V
    invoke-static {v4, v7, v3}, Landroid/webkit/HTCWebCoreImpl;->access$3200(Landroid/webkit/HTCWebCoreImpl;ILjava/lang/String;)V

    goto/16 :goto_0

    .line 829
    :pswitch_23
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/HTCWebCoreImpl$EditEventHub;->this$0:Landroid/webkit/HTCWebCoreImpl;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/HTCWebCoreImpl$EditEventHub;->this$0:Landroid/webkit/HTCWebCoreImpl;

    #getter for: Landroid/webkit/HTCWebCoreImpl;->mCoreNativeClass:I
    invoke-static {v3}, Landroid/webkit/HTCWebCoreImpl;->access$000(Landroid/webkit/HTCWebCoreImpl;)I

    move-result v7

    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    #calls: Landroid/webkit/HTCWebCoreImpl;->nativeSetBackColor(ILjava/lang/String;)V
    invoke-static {v4, v7, v3}, Landroid/webkit/HTCWebCoreImpl;->access$3300(Landroid/webkit/HTCWebCoreImpl;ILjava/lang/String;)V

    goto/16 :goto_0

    .line 832
    :pswitch_24
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/HTCWebCoreImpl$EditEventHub;->this$0:Landroid/webkit/HTCWebCoreImpl;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/HTCWebCoreImpl$EditEventHub;->this$0:Landroid/webkit/HTCWebCoreImpl;

    #getter for: Landroid/webkit/HTCWebCoreImpl;->mCoreNativeClass:I
    invoke-static {v4}, Landroid/webkit/HTCWebCoreImpl;->access$000(Landroid/webkit/HTCWebCoreImpl;)I

    move-result v4

    move-object/from16 v0, p1

    iget v7, v0, Landroid/os/Message;->arg1:I

    #calls: Landroid/webkit/HTCWebCoreImpl;->nativeSetFontSize(II)V
    invoke-static {v3, v4, v7}, Landroid/webkit/HTCWebCoreImpl;->access$3400(Landroid/webkit/HTCWebCoreImpl;II)V

    .line 833
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/HTCWebCoreImpl$EditEventHub;->this$0:Landroid/webkit/HTCWebCoreImpl;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/HTCWebCoreImpl$EditEventHub;->this$0:Landroid/webkit/HTCWebCoreImpl;

    #getter for: Landroid/webkit/HTCWebCoreImpl;->mCoreNativeClass:I
    invoke-static {v4}, Landroid/webkit/HTCWebCoreImpl;->access$000(Landroid/webkit/HTCWebCoreImpl;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/webkit/HTCWebCoreImpl;->nativeGetBackColor(I)Ljava/lang/String;

    move-result-object v40

    .line 834
    .local v40, strRGBA:Ljava/lang/String;
    if-eqz v40, :cond_1

    const-string/jumbo v3, "rgba(0, 0, 0, 0)"

    move-object/from16 v0, v40

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 835
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/HTCWebCoreImpl$EditEventHub;->this$0:Landroid/webkit/HTCWebCoreImpl;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/HTCWebCoreImpl$EditEventHub;->this$0:Landroid/webkit/HTCWebCoreImpl;

    #getter for: Landroid/webkit/HTCWebCoreImpl;->mCoreNativeClass:I
    invoke-static {v4}, Landroid/webkit/HTCWebCoreImpl;->access$000(Landroid/webkit/HTCWebCoreImpl;)I

    move-result v4

    move-object/from16 v0, v40

    #calls: Landroid/webkit/HTCWebCoreImpl;->nativeSetBackColor(ILjava/lang/String;)V
    invoke-static {v3, v4, v0}, Landroid/webkit/HTCWebCoreImpl;->access$3300(Landroid/webkit/HTCWebCoreImpl;ILjava/lang/String;)V

    goto/16 :goto_0

    .line 842
    .end local v40           #strRGBA:Ljava/lang/String;
    :pswitch_25
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v45, v0

    .line 843
    .local v45, width:I
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v25, v0

    .line 844
    .local v25, height:I
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v32

    .line 845
    .local v32, pointer:I
    invoke-static/range {v45 .. v45}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v41

    .line 846
    .local v41, strWidth:Ljava/lang/String;
    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v39

    .line 847
    .local v39, strHeight:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/HTCWebCoreImpl$EditEventHub;->this$0:Landroid/webkit/HTCWebCoreImpl;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/HTCWebCoreImpl$EditEventHub;->this$0:Landroid/webkit/HTCWebCoreImpl;

    #getter for: Landroid/webkit/HTCWebCoreImpl;->mCoreNativeClass:I
    invoke-static {v4}, Landroid/webkit/HTCWebCoreImpl;->access$000(Landroid/webkit/HTCWebCoreImpl;)I

    move-result v4

    move-object/from16 v0, v41

    move-object/from16 v1, v39

    move/from16 v2, v32

    #calls: Landroid/webkit/HTCWebCoreImpl;->nativeSetImageAttr(ILjava/lang/String;Ljava/lang/String;I)V
    invoke-static {v3, v4, v0, v1, v2}, Landroid/webkit/HTCWebCoreImpl;->access$3500(Landroid/webkit/HTCWebCoreImpl;ILjava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 851
    .end local v25           #height:I
    .end local v32           #pointer:I
    .end local v39           #strHeight:Ljava/lang/String;
    .end local v41           #strWidth:Ljava/lang/String;
    .end local v45           #width:I
    :pswitch_26
    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg1:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    const/16 v20, 0x1

    .line 852
    .local v20, isMissSpelling:Z
    :goto_8
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v17, v0

    .line 853
    .local v17, scNode:I
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v37, v0

    check-cast v37, Landroid/graphics/Point;

    .line 854
    .local v37, scIndex:Landroid/graphics/Point;
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/webkit/HTCWebCoreImpl$EditEventHub;->this$0:Landroid/webkit/HTCWebCoreImpl;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/HTCWebCoreImpl$EditEventHub;->this$0:Landroid/webkit/HTCWebCoreImpl;

    #getter for: Landroid/webkit/HTCWebCoreImpl;->mCoreNativeClass:I
    invoke-static {v3}, Landroid/webkit/HTCWebCoreImpl;->access$000(Landroid/webkit/HTCWebCoreImpl;)I

    move-result v16

    move-object/from16 v0, v37

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v18, v0

    move-object/from16 v0, v37

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v19, v0

    #calls: Landroid/webkit/HTCWebCoreImpl;->nativeMarkMisspelling(IIIIZ)V
    invoke-static/range {v15 .. v20}, Landroid/webkit/HTCWebCoreImpl;->access$3600(Landroid/webkit/HTCWebCoreImpl;IIIIZ)V

    goto/16 :goto_0

    .line 851
    .end local v17           #scNode:I
    .end local v20           #isMissSpelling:Z
    .end local v37           #scIndex:Landroid/graphics/Point;
    :cond_10
    const/16 v20, 0x0

    goto :goto_8

    .line 858
    :pswitch_27
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/HTCWebCoreImpl$EditEventHub;->this$0:Landroid/webkit/HTCWebCoreImpl;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/HTCWebCoreImpl$EditEventHub;->this$0:Landroid/webkit/HTCWebCoreImpl;

    #getter for: Landroid/webkit/HTCWebCoreImpl;->mCoreNativeClass:I
    invoke-static {v3}, Landroid/webkit/HTCWebCoreImpl;->access$000(Landroid/webkit/HTCWebCoreImpl;)I

    move-result v7

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg1:I

    const/4 v8, 0x1

    if-ne v3, v8, :cond_11

    const/4 v3, 0x1

    :goto_9
    #calls: Landroid/webkit/HTCWebCoreImpl;->nativeCheckCurrentSpell(IZ)V
    invoke-static {v4, v7, v3}, Landroid/webkit/HTCWebCoreImpl;->access$3700(Landroid/webkit/HTCWebCoreImpl;IZ)V

    goto/16 :goto_0

    :cond_11
    const/4 v3, 0x0

    goto :goto_9

    .line 866
    :pswitch_28
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/HTCWebCoreImpl$EditEventHub;->this$0:Landroid/webkit/HTCWebCoreImpl;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/HTCWebCoreImpl$EditEventHub;->this$0:Landroid/webkit/HTCWebCoreImpl;

    #getter for: Landroid/webkit/HTCWebCoreImpl;->mCoreNativeClass:I
    invoke-static {v3}, Landroid/webkit/HTCWebCoreImpl;->access$000(Landroid/webkit/HTCWebCoreImpl;)I

    move-result v7

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg1:I

    const/4 v8, 0x1

    if-ne v3, v8, :cond_12

    const/4 v3, 0x1

    :goto_a
    #calls: Landroid/webkit/HTCWebCoreImpl;->nativeSetSpellCheck(IZ)V
    invoke-static {v4, v7, v3}, Landroid/webkit/HTCWebCoreImpl;->access$3800(Landroid/webkit/HTCWebCoreImpl;IZ)V

    goto/16 :goto_0

    :cond_12
    const/4 v3, 0x0

    goto :goto_a

    .restart local v5       #pnode:I
    .restart local v38       #start:I
    .restart local v42       #text:Ljava/lang/String;
    :cond_13
    move/from16 v6, v38

    .end local v38           #start:I
    .restart local v6       #start:I
    goto/16 :goto_4

    .line 472
    :pswitch_data_0
    .packed-switch 0x1f4
        :pswitch_a
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_0
        :pswitch_f
        :pswitch_13
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_14
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
        :pswitch_1e
        :pswitch_1f
        :pswitch_20
        :pswitch_21
        :pswitch_22
        :pswitch_23
        :pswitch_24
        :pswitch_15
        :pswitch_25
        :pswitch_b
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_6
        :pswitch_7
        :pswitch_0
        :pswitch_8
        :pswitch_9
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_16
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_28
        :pswitch_26
        :pswitch_27
        :pswitch_0
    .end packed-switch
.end method

.method handleOtherMsg(Landroid/os/Message;)V
    .locals 7
    .parameter "msg"

    .prologue
    const/4 v5, -0x1

    .line 890
    iget v4, p1, Landroid/os/Message;->what:I

    sparse-switch v4, :sswitch_data_0

    .line 945
    :cond_0
    :goto_0
    return-void

    .line 903
    :sswitch_0
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/Message;

    .line 904
    .local v1, callback:Landroid/os/Message;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 905
    .local v0, arrayList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v4, p0, Landroid/webkit/HTCWebCoreImpl$EditEventHub;->this$0:Landroid/webkit/HTCWebCoreImpl;

    iget-object v5, p0, Landroid/webkit/HTCWebCoreImpl$EditEventHub;->this$0:Landroid/webkit/HTCWebCoreImpl;

    #getter for: Landroid/webkit/HTCWebCoreImpl;->mCoreNativeClass:I
    invoke-static {v5}, Landroid/webkit/HTCWebCoreImpl;->access$000(Landroid/webkit/HTCWebCoreImpl;)I

    move-result v5

    iget v6, v1, Landroid/os/Message;->arg2:I

    invoke-virtual {v4, v5, v0, v6}, Landroid/webkit/HTCWebCoreImpl;->nativeGetPureReaderContents(ILjava/util/ArrayList;I)Z

    move-result v3

    .line 907
    .local v3, success:Z
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 908
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 910
    if-nez v3, :cond_0

    .line 911
    const-string v4, "KENLOG"

    const-string v5, "[PureReader] fail to get pure contents from native layer."

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 915
    .end local v0           #arrayList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v1           #callback:Landroid/os/Message;
    .end local v3           #success:Z
    :sswitch_1
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    .line 916
    .local v2, htmlString:Ljava/lang/String;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_0

    .line 917
    iget-object v4, p0, Landroid/webkit/HTCWebCoreImpl$EditEventHub;->this$0:Landroid/webkit/HTCWebCoreImpl;

    iget-object v5, p0, Landroid/webkit/HTCWebCoreImpl$EditEventHub;->this$0:Landroid/webkit/HTCWebCoreImpl;

    #getter for: Landroid/webkit/HTCWebCoreImpl;->mCoreNativeClass:I
    invoke-static {v5}, Landroid/webkit/HTCWebCoreImpl;->access$000(Landroid/webkit/HTCWebCoreImpl;)I

    move-result v5

    invoke-virtual {v4, v5, v2}, Landroid/webkit/HTCWebCoreImpl;->nativeInsertHtmlToTheEnd(ILjava/lang/String;)V

    goto :goto_0

    .line 922
    .end local v2           #htmlString:Ljava/lang/String;
    :sswitch_2
    iget-object v4, p0, Landroid/webkit/HTCWebCoreImpl$EditEventHub;->this$0:Landroid/webkit/HTCWebCoreImpl;

    #calls: Landroid/webkit/HTCWebCoreImpl;->nativePauseFPDoPlay()V
    invoke-static {v4}, Landroid/webkit/HTCWebCoreImpl;->access$3900(Landroid/webkit/HTCWebCoreImpl;)V

    goto :goto_0

    .line 926
    :sswitch_3
    iget-object v4, p0, Landroid/webkit/HTCWebCoreImpl$EditEventHub;->this$0:Landroid/webkit/HTCWebCoreImpl;

    #calls: Landroid/webkit/HTCWebCoreImpl;->nativeResumeFPDoPlay()V
    invoke-static {v4}, Landroid/webkit/HTCWebCoreImpl;->access$4000(Landroid/webkit/HTCWebCoreImpl;)V

    goto :goto_0

    .line 930
    :sswitch_4
    iget-object v4, p0, Landroid/webkit/HTCWebCoreImpl$EditEventHub;->this$0:Landroid/webkit/HTCWebCoreImpl;

    #calls: Landroid/webkit/HTCWebCoreImpl;->nativeUpdateTextSelection(I)V
    invoke-static {v4, v5}, Landroid/webkit/HTCWebCoreImpl;->access$4100(Landroid/webkit/HTCWebCoreImpl;I)V

    goto :goto_0

    .line 934
    :sswitch_5
    iget-object v4, p0, Landroid/webkit/HTCWebCoreImpl$EditEventHub;->this$0:Landroid/webkit/HTCWebCoreImpl;

    #getter for: Landroid/webkit/HTCWebCoreImpl;->bodyNodeRect:Landroid/graphics/Rect;
    invoke-static {v4}, Landroid/webkit/HTCWebCoreImpl;->access$4200(Landroid/webkit/HTCWebCoreImpl;)Landroid/graphics/Rect;

    move-result-object v5

    monitor-enter v5

    .line 935
    :try_start_0
    iget-object v4, p0, Landroid/webkit/HTCWebCoreImpl$EditEventHub;->this$0:Landroid/webkit/HTCWebCoreImpl;

    iget v6, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v4, v6}, Landroid/webkit/HTCWebCoreImpl;->setBodyNode(I)V

    .line 936
    iget-object v4, p0, Landroid/webkit/HTCWebCoreImpl$EditEventHub;->this$0:Landroid/webkit/HTCWebCoreImpl;

    #getter for: Landroid/webkit/HTCWebCoreImpl;->bodyNodePtr:I
    invoke-static {v4}, Landroid/webkit/HTCWebCoreImpl;->access$4300(Landroid/webkit/HTCWebCoreImpl;)I

    move-result v4

    if-nez v4, :cond_1

    .line 937
    iget-object v4, p0, Landroid/webkit/HTCWebCoreImpl$EditEventHub;->this$0:Landroid/webkit/HTCWebCoreImpl;

    const/4 v6, -0x1

    #setter for: Landroid/webkit/HTCWebCoreImpl;->bodyNodePtr:I
    invoke-static {v4, v6}, Landroid/webkit/HTCWebCoreImpl;->access$4302(Landroid/webkit/HTCWebCoreImpl;I)I

    .line 938
    :cond_1
    iget-object v4, p0, Landroid/webkit/HTCWebCoreImpl$EditEventHub;->this$0:Landroid/webkit/HTCWebCoreImpl;

    #getter for: Landroid/webkit/HTCWebCoreImpl;->bodyNodeRect:Landroid/graphics/Rect;
    invoke-static {v4}, Landroid/webkit/HTCWebCoreImpl;->access$4200(Landroid/webkit/HTCWebCoreImpl;)Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->notify()V

    .line 939
    monitor-exit v5

    goto :goto_0

    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 890
    nop

    :sswitch_data_0
    .sparse-switch
        0x259 -> :sswitch_0
        0x25a -> :sswitch_1
        0x263 -> :sswitch_2
        0x264 -> :sswitch_3
        0x26d -> :sswitch_4
        0x277 -> :sswitch_5
    .end sparse-switch
.end method

.method isEditMessage(I)Z
    .locals 1
    .parameter "what"

    .prologue
    .line 463
    const/16 v0, 0x1f4

    if-lt p1, v0, :cond_0

    const/16 v0, 0x233

    if-gt p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
