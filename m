Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47F8C19DFAB
	for <linux-kernel-announce@vger.kernel.org>; Mon,  1 Dec 2025 05:43:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764567817; cv=none; b=d6lzoPwYlZIwZBZcQA0k9daD19+a3OS6fvg3Gb4wnxZIjnzDCz9kRKZyhsBbBaepCS7GZlMW+9L3vJKZ4fdQvhgorOorQuC8hm+9jb7WeWbMCcHT3sxRSDQnRCo6HVqJy4Za0OO1JDxV5B0l7wKK+ZKUyXR3/D1wW2YZ90n4UsU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764567817; c=relaxed/simple;
	bh=eOliihdQNnG9jH3vlJ7TNxsvgxtkB/SBp5fL9jLQnRE=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=EHOyrbMyJhZKA+atFrlTcjj8kOeClq2tyht2vcLIYHo15QKwm48fVhKiLIMH3UfH9BQHPiUUkDPUDKw0sulVFzFV7xMg/l/Nt+qwNsFC619bS0FnZElJiO78o4q4sBWGdoCAr5mvGYwcom7/PN+VvXFzv3jrIcxKzlpGm35ozNc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1764567817;
	bh=eOliihdQNnG9jH3vlJ7TNxsvgxtkB/SBp5fL9jLQnRE=;
	h=Subject:From:To:Date:From;
	b=XPgBwHFcJj82q/kpm9HxSKYYDGbNZMSIvyp64xeHLh6D8YP6A7G9bgdDNUy9qZL2B
	 j9sZKgM2f/Vc89xCVzMKx/6148CLKFJ6ugd2KqfvDgvmOKOseWzKaq3GcroDyoITf5
	 BKSwBSbul+oCxy7OaVx0KO+mZK5nbUuVNzgsUaBQ=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0E817C4CEF1
	for <linux-kernel-announce@vger.kernel.org>; Mon,  1 Dec 2025 05:43:37 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id 7D6DF380693D
	for <linux-kernel-announce@vger.kernel.org>; Mon,  1 Dec 2025 05:40:38 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.18 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Mon, 01 Dec 2025 05:40:36 +0000
Message-Id: <20251201054036.release-6.18@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.18
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.18.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.18.xz

Linux kernel version 6.18 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.18.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.18.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.18.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/torvalds/ds/v6.18/v6.17

