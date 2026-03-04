Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41D96372674
	for <linux-kernel-announce@vger.kernel.org>; Wed,  4 Mar 2026 13:30:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772631020; cv=none; b=spHHc9o5fBVxyU1rb0imSJ72l0IanGoVxqp/4iv5OyUVZ/ewPwS5qcQlj58DAmD+MsGL8nNpSOZG7BIZDzYeVr/QoC6AcrvV1ndYCdviaEbIASzjZHSGgD5mbZzszPWqulcJ44VpNDuejjtvQWvPP0rx2bV1DB6nL9n28/8lmcY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772631020; c=relaxed/simple;
	bh=4qH/EymbbzqVCkC/FGk09h7u+iyLAMbAp7zGFNLLVgs=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=rkI1QAPV4MH/6kVz0+7RHJYmrlnZQmAw7Vu3AKCXn8fk5wx/krasuSI8chmrY3s5IY0RHgPbE/cp8f3fWK7TE2M5GmIggS7xhz2bf6C94Ze3Sh9Fys0zfCdW1/7orSIvotOAD+/RbK9U+xLfRbBkyPH3spGGsM0P3LYOmBJ9gRU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1772631020;
	bh=4qH/EymbbzqVCkC/FGk09h7u+iyLAMbAp7zGFNLLVgs=;
	h=Subject:From:To:Date:From;
	b=cwjm+iu1upfvrM18a5dZKDQdWhs2nbh19v5zY49fzQLumK+9ah4k/0x9oY/2n7dzk
	 VUnlAJsuDC/Su3R6qU4Qn8WZbOeqA8VC6dyHWjXLLJpxK89HxBbv5d4/OMjVknV+g8
	 7J5n2PWD90+SS93wLGOwRiJCZZFZdjnQTkvV5Y18=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E99B5C19423
	for <linux-kernel-announce@vger.kernel.org>; Wed,  4 Mar 2026 13:30:19 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id BCB8E3808200
	for <linux-kernel-announce@vger.kernel.org>; Wed,  4 Mar 2026 13:30:21 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.12.75 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Wed, 04 Mar 2026 13:30:20 +0000
Message-Id: <20260304133020.release-6.12.75@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.12.75
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.12.75.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.12.75.xz

Linux kernel version 6.12.75 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.12.75.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.12.75.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.12.75.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.12.75/v6.12.74

