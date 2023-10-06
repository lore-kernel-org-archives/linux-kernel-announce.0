Return-Path: <linux-kernel-announce-owner@vger.kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C5084E81DF4
	for <linux-kernel-announce@archiver.kernel.org>; Fri,  6 Oct 2023 13:10:56 +0000 (UTC)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232295AbjJFNKv (ORCPT
        <rfc822;linux-kernel-announce@archiver.kernel.org>);
        Fri, 6 Oct 2023 09:10:51 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57442 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232000AbjJFNKu (ORCPT
        <rfc822;linux-kernel-announce@vger.kernel.org>);
        Fri, 6 Oct 2023 09:10:50 -0400
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F1C4593
        for <linux-kernel-announce@vger.kernel.org>; Fri,  6 Oct 2023 06:10:46 -0700 (PDT)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 91F69C433C8
        for <linux-kernel-announce@vger.kernel.org>; Fri,  6 Oct 2023 13:10:46 +0000 (UTC)
Received: from aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (localhost.localdomain [127.0.0.1])
        by aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (Postfix) with ESMTP id 6F715E632D2
        for <linux-kernel-announce@vger.kernel.org>; Fri,  6 Oct 2023 13:10:46 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.1.56 released
From:   Linux Kernel Distribution System <kdist@linux.kernel.org>
To:     linux-kernel-announce@vger.kernel.org
Date:   Fri, 06 Oct 2023 13:10:46 +0000
Message-Id: <20231006131046.release-6.1.56@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.1.56
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.1.56.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.1.56.xz
Precedence: bulk
List-ID: <linux-kernel-announce.vger.kernel.org>
X-Mailing-List: linux-kernel-announce@vger.kernel.org

Linux kernel version 6.1.56 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.1.56.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.1.56.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.1.56.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.1.56/v6.1.55

