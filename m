Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 03F6B1C36
	for <linux-kernel-announce@vger.kernel.org>; Mon, 28 Jul 2025 04:20:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753676420; cv=none; b=O/XlUt8yb4PbcvIjjhBsVXyIGzxfztWJU3ofUVJXHThV02ptoGjuOQLToSMp73+kZMUJpLFa2d/43hDcLh/U+ZnlUWofMhcBQEbKWx8eFXvxseQhXKSlP/ep3AtI0T7JPv7tbVj8VCOPg3fhn1SECSJGVJ9Spphiaj1HlMwTlcg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753676420; c=relaxed/simple;
	bh=vY8Pz4M6jXxnYBi52qmW29az94JTl75X95OznGLEX/E=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=mehg+bU5qvS141BNzmwN4DAWG1KrfePxMxDCJyou8uYQHt4M++xjPuYqdhOs530XG7fpKHNTQlNu02sI/YpvYpeMrVOI6yzmjmUeXbQSxG2N/OW0K10DqivuNNbvpocYoD7cp7G+FqZJgwrcJjRHP5RpNUPftMp5bgBAuqtYSQA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1753676420;
	bh=vY8Pz4M6jXxnYBi52qmW29az94JTl75X95OznGLEX/E=;
	h=Subject:From:To:Date:From;
	b=ZIxv6MjRT/7fCxZ9gX9i/9A5Qw6QeFEZYotKJgss4RgqRQlQ4iPK0ZT8qZ9GbeG1u
	 djAs0S/PHWwpSNJkl31Uo3HFpKxCG2/lg7Szgz0+9pZA2smxst0E8iPvN7aoLW5Fu6
	 QD4AxESlwiIUiXuQHyDqKR8YIOiTiwPfXBXriyiU=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CFE9FC4CEE7
	for <linux-kernel-announce@vger.kernel.org>; Mon, 28 Jul 2025 04:20:19 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id B1501383BF62
	for <linux-kernel-announce@vger.kernel.org>; Mon, 28 Jul 2025 04:20:37 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.16 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Mon, 28 Jul 2025 04:20:36 +0000
Message-Id: <20250728042036.release-6.16@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.16
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.16.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.16.xz

Linux kernel version 6.16 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.16.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.16.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.16.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/torvalds/ds/v6.16/v6.15

