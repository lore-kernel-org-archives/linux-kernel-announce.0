Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9EC47361DD1
	for <linux-kernel-announce@vger.kernel.org>; Fri, 27 Mar 2026 10:05:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774605934; cv=none; b=ifVJt2LWRdtiqW1ddmCH885yOL/u99rynLQlTGxAOBX435HN9xWZYQXHRxie6zYcLuKaEcrIhSQs71ivY5J63QGO+rTP/yCfgZ95o41PXhcdT/n3W6vrz8ZUwtr5wqCUQo5DdESrOAyy/DzTa5UugRryVz42gZEPgzH+IpCS7nY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774605934; c=relaxed/simple;
	bh=Dy7oxNKIXTSTdWnek6nEnnMOYzOT/9oll24wuB5HyGg=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=BPUrOI+wQc+0gtJk2WiREUeF4LknId+pSQ85Yes2t5CT2x6grg4u4xskTI26X8k0kpB1Dgij8lcmjoNmoEULU/Wsb6Crj3bFhmu3dpco595C4Qc+mTZt4K+6h6JWg+7DYqVb/UD84VWkX8kcqegvoX3PpqOJPBDYEHrCu5LYuLI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1774605934;
	bh=Dy7oxNKIXTSTdWnek6nEnnMOYzOT/9oll24wuB5HyGg=;
	h=Subject:From:To:Date:From;
	b=umcUcUGIXDlr+I5xIPvxFxuVGMKz3A9474GLQ1IT2At4bYT+TAL6/COJtUDaiyvRP
	 S5hbWcaARRYJQkDjqjHWh5M3C/ny8zkzOLWgMCIgFvjZ5kBocFsT+bNYCKoTIeRrrU
	 RnZlWi29uUBSYukoQlzA8/CkaXjmSbk0//EuvFrM=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 466D7C19423
	for <linux-kernel-announce@vger.kernel.org>; Fri, 27 Mar 2026 10:05:34 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id 7FB1B3930212
	for <linux-kernel-announce@vger.kernel.org>; Fri, 27 Mar 2026 10:05:21 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.12.79 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Fri, 27 Mar 2026 10:05:20 +0000
Message-Id: <20260327100520.release-6.12.79@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.12.79
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.12.79.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.12.79.xz

Linux kernel version 6.12.79 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.12.79.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.12.79.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.12.79.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.12.79/v6.12.78

