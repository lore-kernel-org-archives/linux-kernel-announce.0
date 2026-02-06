Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BF8CC2FE59C
	for <linux-kernel-announce@vger.kernel.org>; Fri,  6 Feb 2026 16:00:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770393626; cv=none; b=cZP1SV4/Oz/PwLAaUJHIYgk1QUMh/l5kv8aydm8ICBQsWXHV2PmBEB5aa8/il7uJOTWQz46/uhJvFmgvoYB+IY6jWM3YWVNB0rkaPgn/lEMNse4cjpdjayNbX/RNuxIKWU8QLekZYMbDwDcAJgrpKLmjwCqc/k+fXatI1G10TYo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770393626; c=relaxed/simple;
	bh=qUuRYHIYhWKRWdBFyn9gyThcE5wuoS6i6cw/IkQl2bQ=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=bE7dmjosjdhkoVlUgR75fvz7X0fOXDkRP/6hT0cCfL79KpxWUndCAJoLq/wcxqsv4a2B873BS5Lz2oWmtE2l1VoPp+oGf4obV012efNDRsmXYN0jcpHeg2RJeYfxbHiuC1aZgjhCbmGTxzTnQuHcA6EWxTcIn55alYRhstDfxQw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1770393626;
	bh=qUuRYHIYhWKRWdBFyn9gyThcE5wuoS6i6cw/IkQl2bQ=;
	h=Subject:From:To:Date:From;
	b=VTDFRusrT+hByQq2MZjx7N1HMGoDYs153dQzAigZUThl7PGd5XFzg+vyUurdYbkx0
	 p/kQta9otByz7mB8MI21ewtQnpZug78VSPlFm2DXcPCRHvOhY91HDOUrprVaTbU4hi
	 LVRcrOUBpZAwMmzegP7qTyJJ/D8hcXdGrKGM/tM0=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5F34CC116C6
	for <linux-kernel-announce@vger.kernel.org>; Fri,  6 Feb 2026 16:00:26 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id C4FB13809A02
	for <linux-kernel-announce@vger.kernel.org>; Fri,  6 Feb 2026 16:00:24 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.1.162 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Fri, 06 Feb 2026 16:00:23 +0000
Message-Id: <20260206160023.release-6.1.162@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.1.162
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.1.162.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.1.162.xz

Linux kernel version 6.1.162 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.1.162.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.1.162.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.1.162.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.1.162/v6.1.161

