Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A96F231C98
	for <linux-kernel-announce@vger.kernel.org>; Mon, 14 Oct 2024 03:20:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728876014; cv=none; b=dkGoUW2VtHRnFwk218NuSbvAKw8FtfOCP+cx0P+F8orNhsweCt9j8C4isMytDqiRKEol4SSDl1+ZZil4qlxx+30v/TiUWf0cZJRaUJmEKGUorz/NDq6cHNdVFrRth7EovwXa+HQVwwFtTdVV805ulx/q8BUEOMpYBWH52YCjpSA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728876014; c=relaxed/simple;
	bh=OEHmwBYw5U3G6KOwgLT5mEEzhzAmbUlE0uU1XCR+VS8=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=VgXcIyI4bA+FtIDBhDyTsW54YK2JvMR7vEYzzfuhagGKsdD6VQKPkyMcw5w42hsNAHoo9BQA9pXcBdBd1Z3Tuqp7s5yC7fZFWTFSQ9nRBqgwRs9n3w4Wz6hb1oYVkaHCiy7qLcQqqLmOaVi1WdEW/8ecuhtMf2Rr7oL4UIZsM/s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1728876014;
	bh=OEHmwBYw5U3G6KOwgLT5mEEzhzAmbUlE0uU1XCR+VS8=;
	h=Subject:From:To:Date:From;
	b=vIUWnWf9+PQpIG/Ld6g2BRuPvr77REc/VZsF/dI4Qok0dC/l9JLzc/5GDFoB2PACd
	 byAZeSMJQjbcvHBg5Q6e48aaK7lupwWurzKDq+CJUEuoXopAYS3PKrTIT7yoeUQO2u
	 wCEBE+PXGe1GLASDcpIyFOiVowT3PfQkQW5Yj+xE=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A5573C4CEC3
	for <linux-kernel-announce@vger.kernel.org>; Mon, 14 Oct 2024 03:20:13 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id B6FA83806656
	for <linux-kernel-announce@vger.kernel.org>; Mon, 14 Oct 2024 03:20:19 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.12-rc3 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Mon, 14 Oct 2024 03:20:18 +0000
Message-Id: <20241014032018.release-6.12-rc3@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.12-rc3
X-Linux-Kernel-Full-URL: https://git.kernel.org/torvalds/t/linux-6.12-rc3.tar.gz
X-Linux-Kernel-Patch-URL: https://git.kernel.org/torvalds/p/v6.12-rc3/v6.11

Linux kernel version 6.12-rc3 is now available:

Full source:    https://git.kernel.org/torvalds/t/linux-6.12-rc3.tar.gz
Patch:          https://git.kernel.org/torvalds/p/v6.12-rc3/v6.11

You can view the summary of the changes at the following URL:
https://git.kernel.org/torvalds/ds/v6.12-rc3/v6.12-rc2

