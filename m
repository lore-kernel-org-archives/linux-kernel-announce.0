Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58D7931D39E
	for <linux-kernel-announce@vger.kernel.org>; Tue,  9 Sep 2025 17:15:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757438146; cv=none; b=jfKX61mLFmjYtkz2y2dkyBJPfZEKLEen40CxvIf1YleUFCXmHXuL0q1a5PvakkEIr+1BAbVMDCs5/mIKemrExfauFruSNR0NfB7D1KcsrVSQwsJ0k5Bb/WQTn7LdQnfJ2DLAhKQkWZDr16FXhF+3SvQviM+/BbH8btKHtt/jRTc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757438146; c=relaxed/simple;
	bh=3AkXIdB9zu1C7xRiKquSX8UyE+INWHErQvKcDNYborQ=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=q6xy1C7eq3FG2Zw6HIwfFAItnWNRF8Qu0q2DHzKZjxKSWLsoivD1nGFs6vEH6H8RZHHDMaaB+krEUV7F+toMH5IxLRgnLV//wvJLXmXafs181FGvExom8QD62rZyK1019bWAM4HXV9A8BQQL7Ydo6iZA1BP4w0YZPx300P+CmYM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1757438146;
	bh=3AkXIdB9zu1C7xRiKquSX8UyE+INWHErQvKcDNYborQ=;
	h=Subject:From:To:Date:From;
	b=VjwLPX5piZU1MVEBhe/gsBzBOIWPpnNDeW76zgkWzUz5XOzodnMEAQZcaN4cekXDp
	 Ou+o/uYGJkufDxA8zjLY74oei0vbtbe7vcFy5/QVZwnhrT4omUv8J/VfwCq+yCYj+z
	 rCtIEmGEB13ZPNLz1hr+Gu47YKnuUaxadJSWuPHw=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D2B3EC4CEF4
	for <linux-kernel-announce@vger.kernel.org>; Tue,  9 Sep 2025 17:15:45 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id 37EF7383BF69
	for <linux-kernel-announce@vger.kernel.org>; Tue,  9 Sep 2025 17:15:50 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.6.105 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Tue, 09 Sep 2025 17:15:48 +0000
Message-Id: <20250909171548.release-6.6.105@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.6.105
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.6.105.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.6.105.xz

Linux kernel version 6.6.105 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.6.105.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.6.105.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.6.105.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.6.105/v6.6.104

