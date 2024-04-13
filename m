Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A58220B33
	for <linux-kernel-announce@vger.kernel.org>; Sat, 13 Apr 2024 11:35:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713008140; cv=none; b=a3Sr/Aos1fj3rXBlsaarGcV3puTtle2DVRsNyCTGwykbaTbUET2ci2J9OWFK6waMrqvJx3h0+5ApffP22gzXV7jVrd5pe/1mSqji0fNlvCtL8bkjCbwWW+StxEqLbm5WqZ+vZy26jne7cAWcjrHHUe+rfkDAshoIWqI+Q4uHOsM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713008140; c=relaxed/simple;
	bh=V1IXkBhHR393jTu04a86Tk+cUl/QIS4bauBFBhkIGvM=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=vAzK2nknHEzfxJpqpDl5FIY2BF/BVPrjIDh9kXTtZyIF1a52fS00GLU1/0YTqGRJDycSsawwK+UGuj4WO9vA02G1qN+tZxbt+m2FZu0xWYOmBxJKsWXFnDOWhXZDewyX3eWCSlBfCGEe6k/8h9vfhmn5yC8SpjPR9bhm3r6UkQU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1713008140;
	bh=V1IXkBhHR393jTu04a86Tk+cUl/QIS4bauBFBhkIGvM=;
	h=Subject:From:To:Date:From;
	b=qEs5EHsoceDx1QaQ1F3fK3KSZSHM18xSA58yExj+msI2NvlnKozqtTAuyiLRD72Xh
	 DJ3peCeZ24Pn7b0hoGcHqlUX0Zn8LZYPpy6cm5/D3mkLBbfliGzyfFjl+qRC61g1qh
	 KScLo+VT+aNAFFKK89mrD2oy2KVzQtaKMTuSXqIA=
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0309CC113CD
	for <linux-kernel-announce@vger.kernel.org>; Sat, 13 Apr 2024 11:35:40 +0000 (UTC)
Received: from aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (localhost.localdomain [127.0.0.1])
	by aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (Postfix) with ESMTP id E6049C43140
	for <linux-kernel-announce@vger.kernel.org>; Sat, 13 Apr 2024 11:35:39 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.8.6 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Sat, 13 Apr 2024 11:35:39 +0000
Message-Id: <20240413113539.release-6.8.6@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.8.6
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.8.6.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.8.6.xz

Linux kernel version 6.8.6 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.8.6.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.8.6.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.8.6.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.8.6/v6.8.5

