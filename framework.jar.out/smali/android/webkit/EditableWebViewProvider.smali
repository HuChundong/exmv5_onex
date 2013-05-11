.class interface abstract Landroid/webkit/EditableWebViewProvider;
.super Ljava/lang/Object;
.source "EditableWebViewProvider.java"


# virtual methods
.method public abstract GetImageAttr([Ljava/lang/String;[ILandroid/graphics/Rect;)Z
.end method

.method public abstract SetBackColor(IZ)V
.end method

.method public abstract SetFontSize(I)V
.end method

.method public abstract SetForeColor(I)V
.end method

.method public abstract SetImageAttr(III)V
.end method

.method public abstract SetOwnerActivityContext(Landroid/content/Context;)V
.end method

.method public abstract alignCenter()V
.end method

.method public abstract alignJustified()V
.end method

.method public abstract alignLeft()V
.end method

.method public abstract alignRight()V
.end method

.method public abstract beginBatchEdit()V
.end method

.method public abstract cancelAnchorSpan()V
.end method

.method public abstract checkVerticalBouncingCallback(I)Z
.end method

.method public abstract commitText(Ljava/lang/CharSequence;I)Z
.end method

.method public abstract copy()V
.end method

.method public abstract cut()V
.end method

.method public abstract deleteSurroundingText(IIII)V
.end method

.method public abstract destroy()V
.end method

.method public abstract enableMultiTouch()V
.end method

.method public abstract enableOrientationCustomScale(FF)V
.end method

.method public abstract enableSpellCheckIfAvalible(Z)V
.end method

.method public abstract endBatchEdit()V
.end method

.method public abstract exportHTML(Ljava/lang/String;)V
.end method

.method public abstract exportHTML(Ljava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract findContinuousBRFromEnd(ILandroid/os/Message;)V
.end method

.method public abstract getAllAnchorSpan()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract getAnchorRect(Ljava/lang/String;)Landroid/graphics/Rect;
.end method

.method public abstract getAnchorSpanRect(Ljava/lang/String;)Landroid/graphics/Rect;
.end method

.method public abstract getAnchorSpanRect(Landroid/graphics/Rect;Ljava/lang/String;)V
.end method

.method public abstract getBackColor()I
.end method

.method public abstract getBoldState()I
.end method

.method public abstract getCaretRect()Landroid/graphics/Rect;
.end method

.method public abstract getContentWidth()I
.end method

.method public abstract getEditableText()Landroid/text/Editable;
.end method

.method public abstract getEnableBackColor()Z
.end method

.method public abstract getFontSize()I
.end method

.method public abstract getForeColor()I
.end method

.method public abstract getHTML(Landroid/os/Message;)V
.end method

.method public abstract getHighlightRect()Landroid/graphics/Rect;
.end method

.method public abstract getImageNodeRect(I)Landroid/graphics/Rect;
.end method

.method public abstract getItalicState()I
.end method

.method public abstract getKeyListener()Landroid/text/method/KeyListener;
.end method

.method public abstract getPenHighlightListener()Landroid/view/View$OnTouchListener;
.end method

.method public abstract getPenSelectionListener()Landroid/view/View$OnTouchListener;
.end method

.method public abstract getRegionCapture(IIIIZ)Landroid/graphics/Bitmap;
.end method

.method public abstract getRegionCapture(IIIIZLandroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
.end method

.method public abstract getRegionCapture(IIIIZLandroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
.end method

.method public abstract getRegionCapture(Landroid/graphics/Rect;Z)Landroid/graphics/Bitmap;
.end method

.method public abstract getRegionCapture(Landroid/graphics/Rect;ZLandroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
.end method

.method public abstract getRegionCaptureByMessage(Landroid/os/Message;)V
.end method

.method public abstract getSelectionMethod()Landroid/webkit/WebViewSelectionMethod;
.end method

.method public abstract getStrikethroughState()I
.end method

.method public abstract getUnderlineState()I
.end method

.method public abstract gethTCWebCoreInst()Landroid/webkit/HTCWebCore;
.end method

.method public abstract hideSingleTapQuickActions()V
.end method

.method public abstract insertAnchorSpan(Ljava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract insertHTML(Ljava/lang/String;)V
.end method

.method public abstract insertHTMLString(Ljava/lang/String;)V
.end method

.method public abstract insertHtmlContainsAnchorSpan(Ljava/lang/String;)V
.end method

.method public abstract insertHtmlToTheEnd(Ljava/lang/String;)V
.end method

.method public abstract insertImage(Ljava/lang/String;II)V
.end method

.method public abstract onCheckIsTextEditor()Z
.end method

.method public abstract onCommitCompletion(Landroid/view/inputmethod/CompletionInfo;)V
.end method

.method public abstract onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
.end method

.method public abstract onDraw(Landroid/graphics/Canvas;)V
.end method

.method public abstract onEditorAction(I)V
.end method

.method public abstract onEndSelect()V
.end method

.method public abstract onEndSelect(Z)V
.end method

.method public abstract onKeyDown(ILandroid/view/KeyEvent;)Z
.end method

.method public abstract onKeyShortcut(ILandroid/view/KeyEvent;)Z
.end method

.method public abstract onKeyUp(ILandroid/view/KeyEvent;)Z
.end method

.method public abstract onPreDraw()Z
.end method

.method public abstract onPrivateIMECommand(Ljava/lang/String;Landroid/os/Bundle;)Z
.end method

.method public abstract onTextContextMenuItem(I)Z
.end method

.method public abstract onWindowFocusChanged(Z)V
.end method

.method public abstract overScrollBy(IIIIIIIIZ)Z
.end method

.method public abstract pasteLatestContentFromClipboard()V
.end method

.method public abstract pastePlainText()V
.end method

.method public abstract pasteWithStyle()V
.end method

.method public abstract pauseTextReflow(I)V
.end method

.method public abstract performLongClick()Z
.end method

.method public abstract resumeTextReflow()V
.end method

.method public abstract setAllowVerticalBouncing(ZILandroid/webkit/EditableWebView$OnOverScrollListener;)V
.end method

.method public abstract setCaretPos(II)V
.end method

.method public abstract setComposingText(Ljava/lang/CharSequence;I)Z
.end method

.method public abstract setEditable(Z)V
.end method

.method public abstract setOnContentChangedListener(Landroid/webkit/EditableWebView$OnContentChangedListener;)V
.end method

.method public abstract setOnImageSelectedListener(Landroid/webkit/EditableWebView$OnImageSelectedListener;)V
.end method

.method public abstract setPrivateImeOptions(Ljava/lang/String;)V
.end method

.method public abstract setScaleWithoutCheck(Z)V
.end method

.method public abstract setWillDrawFind(Z)V
.end method

.method public abstract setZoomLowerBound(F)V
.end method

.method public abstract setZoomUpperBound(F)V
.end method

.method public abstract showSingleTapQuickActions()V
.end method

.method public abstract toggleBold()V
.end method

.method public abstract toggleItalic()V
.end method

.method public abstract toggleStrikethrough()V
.end method

.method public abstract toggleUnderline()V
.end method

.method public abstract transferDimension(Landroid/graphics/Point;Z)Landroid/graphics/Point;
.end method

.method public abstract transferDimension(Landroid/graphics/Rect;Z)Landroid/graphics/Rect;
.end method
