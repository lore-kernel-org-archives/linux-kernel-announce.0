Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0347D163
	for <linux-kernel-announce@vger.kernel.org>; Sun,  2 Nov 2025 13:31:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762090270; cv=none; b=A8pEXFqBtlYFSNfdODR6SUuT5ZZBDf3f8h3/5Zqie8x7/p/8icMyIXwqpSRE0BeqYkXFWYkNvww/q9ltfNz6I83g3q1tzDAbhZiUppCdytUZOPRchg5PufKMqCNQnyd+AafEIhY/kISQP77NY29X9rBS3zcDSh5TrYsp7R+xhsY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762090270; c=relaxed/simple;
	bh=+RgoCmQFRcD8q7Wh9Bj1TYTr4N517UQO/M+K0klGGU4=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=ClivXxHBGTsvVN+mpP6d6x+sps2Asj+4orO5WkRK4cM/IHxG4YH8fOkJHouMtZwmYsoWczs3L1X5pv6GP1YMynGcGjtoEJhQGDxvU4ZFihNqpv78VfouwnNd95Z3qrqR5FWhm0BcIXVmyzhJ3Hy26AFE3Magj9lHFKs/8fJbN0E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1762090270;
	bh=+RgoCmQFRcD8q7Wh9Bj1TYTr4N517UQO/M+K0klGGU4=;
	h=Subject:From:To:Date:From;
	b=k/7X0ZdoOHaMMIwX74nbHHp7orwmwONe33eDrDn2dnRBAWVDEHKQWVzz0u9IJ5+dw
	 QfVUvW2jIf/yt9OzhAdqKSJGh8/3yggKx2y0Q0luHmYpPpRF5ICuGIDZcjSolCHpUj
	 HhMTxX2IwbovHkLPWBCPk342dYf3YeKdx7qflAp4=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6AFE1C4CEF7
	for <linux-kernel-announce@vger.kernel.org>; Sun,  2 Nov 2025 13:31:04 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id B20333809A00
	for <linux-kernel-announce@vger.kernel.org>; Sun,  2 Nov 2025 13:30:40 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.12.57 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Sun, 02 Nov 2025 13:30:39 +0000
Message-Id: <20251102133039.release-6.12.57@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.12.57
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.12.57.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.12.57.xz

Linux kernel version 6.12.57 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.12.57.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.12.57.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.12.57.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.12.57/v6.12.56

