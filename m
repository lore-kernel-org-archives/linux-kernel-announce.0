Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 852DE1FA6
	for <linux-kernel-announce@vger.kernel.org>; Mon, 26 Feb 2024 00:28:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708907306; cv=none; b=n05CCDOK79EpYSCd4mBN4e2bqPerYpqsP01OaaSvY7MmJWKlHeRvT1aH7zoZyOyb1qCWijuYsssVoQrelenKYPKzm6UsoF4L2FI9usvtnsxn6aeRe2WOPf8HcFgiW8VMZChuT9kgEzH/KP2Bst9Oq5nEU2zrwj/hxNJu+K0pn7o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708907306; c=relaxed/simple;
	bh=hxI25poT3wjgImbaVXPsJDR0YkyoQVoUF5AC0yRqaz0=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=Mq7kkxsTxNZp5yDtGxw3039Nn0MjBRBzbJpBPSd6V2SNky6Qk6wRNaXkL3tuhxk6eCMHwF0zVB9PESrAed10Hy5qp7Tsq8DANaR0fmotFchdlwsjSquIpMN7KdFKZOeM9QWY7MhpfLIEhh9HqIVccLCcTkKjjLBUXhAkkUKWhnw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1708907306;
	bh=hxI25poT3wjgImbaVXPsJDR0YkyoQVoUF5AC0yRqaz0=;
	h=Subject:From:To:Date:From;
	b=e/bpGfazApgkRN1XTqX9avocBw0wiUlUdXnGLZivok1X9pY1W9chfIt2H72M+I0hz
	 X3rEIiFXgxERTm5C1Ixo5sS7MEKH2wt/wpBKO3d9Wl5jNN5QvLDh0NA3VhgSnjFIUE
	 UJkjSTe3BeZRDxwkytnWt5RwbD/27MsCCereKdjk=
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC696C433F1
	for <linux-kernel-announce@vger.kernel.org>; Mon, 26 Feb 2024 00:28:25 +0000 (UTC)
Received: from aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (localhost.localdomain [127.0.0.1])
	by aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (Postfix) with ESMTP id A4FB5D88FAF
	for <linux-kernel-announce@vger.kernel.org>; Mon, 26 Feb 2024 00:28:25 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.8-rc6 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Mon, 26 Feb 2024 00:28:25 +0000
Message-Id: <20240226002825.release-6.8-rc6@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.8-rc6
X-Linux-Kernel-Full-URL: https://git.kernel.org/torvalds/t/linux-6.8-rc6.tar.gz
X-Linux-Kernel-Patch-URL: https://git.kernel.org/torvalds/p/v6.8-rc6/v6.7

Linux kernel version 6.8-rc6 is now available:

Full source:    https://git.kernel.org/torvalds/t/linux-6.8-rc6.tar.gz
Patch:          https://git.kernel.org/torvalds/p/v6.8-rc6/v6.7

You can view the summary of the changes at the following URL:
https://git.kernel.org/torvalds/ds/v6.8-rc6/v6.8-rc5

