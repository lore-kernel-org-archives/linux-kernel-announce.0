Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B514E573
	for <linux-kernel-announce@vger.kernel.org>; Sat, 11 Apr 2026 12:40:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775911246; cv=none; b=nMIzL0m9REmT5AELTvVegyaHcJz8rgOaBpASk7q4UVUdZNJBGsUuy5L/McUVoLvDR5tPxjFP8TW8Pu7UWIffrJhwRaBwsS7ifzG9H53hg5g6Mh9O/+WfvxXoLPsZMyKEUqEi6bSl9HVb+hna8CHYZVc8CHBzaO3wkWu8vBDGGmw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775911246; c=relaxed/simple;
	bh=TsyNYYIT8kx1zw7RIcorpS3/k57Yv9d0JfIyMiFpvM8=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=oIwIBKXcX3nQZgg/Bpw574OZvIxTfYr4tNYhwuuh4HH+aElBeFgBuKkBX5fz/TNke8XCzA1K2yXpopwLA3jLGjtIHeyLd8g8U+byfiSNLfLXLnUIPDorbsNm+Yp3ww1aOFOxfGuPxDZIiOMwCly/EPE4FOoSZn4kCjm1y5lVLO4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1775911246;
	bh=TsyNYYIT8kx1zw7RIcorpS3/k57Yv9d0JfIyMiFpvM8=;
	h=Subject:From:To:Date:From;
	b=Y952s+jfyKNiruI97BnZt8t1MXi1ZatC9EB+YLpQVIYoZ97wAjfc2u2oDM/wRcdWm
	 YqI0M+s7pUg+79ip3I15StfPbQJW+HUnrPzJw2KfUYpshIdp9YPHwbLVvqxiiHUSu7
	 wJ0FF9/RoO5N++U9P+3N6l32YyFuzvomrmulUV34=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DEA7EC4CEF7
	for <linux-kernel-announce@vger.kernel.org>; Sat, 11 Apr 2026 12:40:45 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id BD9873809A8A
	for <linux-kernel-announce@vger.kernel.org>; Sat, 11 Apr 2026 12:40:20 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.6.134 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Sat, 11 Apr 2026 12:40:19 +0000
Message-Id: <20260411124019.release-6.6.134@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.6.134
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.6.134.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.6.134.xz

Linux kernel version 6.6.134 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.6.134.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.6.134.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.6.134.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.6.134/v6.6.133

