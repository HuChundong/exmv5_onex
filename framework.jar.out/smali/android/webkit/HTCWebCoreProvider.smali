.class interface abstract Landroid/webkit/HTCWebCoreProvider;
.super Ljava/lang/Object;
.source "HTCWebCoreProvider.java"


# virtual methods
.method public abstract drawContentPicture(Landroid/graphics/Canvas;IZZ)V
.end method

.method public abstract dumpHeap()Z
.end method

.method public abstract enableGifAnimation(Z)V
.end method

.method public abstract findNextTableNode(I)I
.end method

.method public abstract findNextTableNode(IZ)I
.end method

.method public abstract findNextTextNode(I)I
.end method

.method public abstract findParagraphBound(IIZLandroid/graphics/Rect;)I
.end method

.method public abstract findParagraphBoundByNode(IZLandroid/graphics/Rect;)V
.end method

.method public abstract findTextBound(IILandroid/webkit/SelectionUnitInfo;Z)I
.end method

.method public abstract forceStopGifAnimation(Z)V
.end method

.method public abstract getBodyNode(ILandroid/graphics/Rect;)I
.end method

.method public abstract getCacheFile(Ljava/lang/String;)Landroid/webkit/CacheManager$CacheResult;
.end method

.method public abstract getCharRect(IILandroid/graphics/Rect;)Z
.end method

.method public abstract getCopiedStyleText()Ljava/lang/String;
.end method

.method public abstract getCursorPos(IILandroid/graphics/Rect;)Z
.end method

.method public abstract getFontPixelSizeOfTextNode(I)I
.end method

.method public abstract getFontPixelSizeOfTextNodes(Landroid/os/Message;)V
.end method

.method public abstract getHREF(I)Ljava/lang/String;
.end method

.method public abstract getImageAttr()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getMaxCPUFreq()J
.end method

.method public abstract getNodeCapture(III)Landroid/graphics/Bitmap;
.end method

.method public abstract getNodeRect(IZI)Landroid/graphics/Rect;
.end method

.method public abstract getRssFeed()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getScopeNode(I)I
.end method

.method public abstract getSurfaceViewBitmap(Landroid/view/Surface;Landroid/graphics/Canvas;Landroid/graphics/Rect;)Z
.end method

.method public abstract getTextBetween(IIII)Ljava/lang/String;
.end method

.method public abstract hasRssFeed()Z
.end method

.method public abstract isDocumentParsing()Z
.end method

.method public abstract isIgnorePictureAfterFirstLayout()Z
.end method

.method public abstract isImageNode(I)Z
.end method

.method public abstract isSkipClipboardChang()Z
.end method

.method public abstract isSupportGifAnimUISetting()Z
.end method

.method public abstract isTextNode(II)I
.end method

.method public abstract isTextNode(I)Z
.end method

.method public abstract isThisWebCoreBlocked()Z
.end method

.method public abstract isWebCoreBlocked()Z
.end method

.method public abstract isWebCoreBusy()Z
.end method

.method public abstract saveImage(IILjava/lang/String;Z)Ljava/lang/String;
.end method

.method public abstract selectParagraphText(IILandroid/graphics/Rect;)Ljava/lang/String;
.end method

.method public abstract setCopiedStyleText(Ljava/lang/String;)V
.end method

.method public abstract setIgnorePictureAfterFirstLayout(Z)V
.end method

.method public abstract setImageAttr(Ljava/lang/String;Ljava/lang/String;I)V
.end method

.method public abstract setInterruptDraw(Z)V
.end method

.method public abstract setSkiaFontCacheSize(J)V
.end method

.method public abstract setSkipClipboardChang(Z)V
.end method

.method public abstract smartTouchUp(II)I
.end method

.method public abstract trimMemory()V
.end method
