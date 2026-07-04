Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52A2D245031
	for <linux-kernel-announce@vger.kernel.org>; Sat,  4 Jul 2026 20:00:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783195239; cv=none; b=DGZmXt+b+8lvnVFu4oaK111GujOjJ8WCvRDffMFkBFbih4NEDM/1OcFxFu4P4Ru1eXEmig+OlAZlZR5NAWD5tJQeQPXFE6WVP/7UYPckFsR80PmWRBILZ0yAc/VXVJfTf85jWyIVrxeZ3PlvbVFpAKn6psGHiu8un+bpNL/J2as=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783195239; c=relaxed/simple;
	bh=cb9wfw+PZjRtI/fYCaTH6RRO/zixfAX8BQEd/FR2MYg=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=mp0pEgDndEwNwxxxlr+VNZyYu7efchFHAKcs4zahzjcK6JOjLIbNwFMWSIrw6i9mDReKd/nk0oEjAMIB5SacXyWauGCI2V8pDl3Kiqn2WYaqgSJ3Dx1l+nHxu0f611RsMMUZPp48oAJnPmnmnqkZFerVYvw/MXmaVsKlRnNoY7k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1783195239;
	bh=cb9wfw+PZjRtI/fYCaTH6RRO/zixfAX8BQEd/FR2MYg=;
	h=Subject:From:To:Date:From;
	b=OW+qiK+WapiuXEw0bVmvqNtsCfLdeNibRXTHJQZVcAhvi849H/DNKZkkKskp6PNcK
	 Kfl0Kq5tji91RbKRhw3EzWI99VqjlFLLgZl/Wi2laaCpD8XgkFBjMgqNSKAdPHD9E4
	 /GdzU9kBVLmOLf456YFkIdQVqwN/AKrZNH40IY0s=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0CBBB1F000E9
	for <linux-kernel-announce@vger.kernel.org>; Sat,  4 Jul 2026 20:00:38 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id D24B7393A573
	for <linux-kernel-announce@vger.kernel.org>; Sat,  4 Jul 2026 20:00:20 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 7.1.3 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Sat, 04 Jul 2026 20:00:19 +0000
Message-Id: <20260704200019.release-7.1.3@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 7.1.3
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v7.x/linux-7.1.3.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v7.x/patch-7.1.3.xz

Linux kernel version 7.1.3 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v7.x/linux-7.1.3.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v7.x/patch-7.1.3.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v7.x/linux-7.1.3.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v7.1.3/v7.1.2

