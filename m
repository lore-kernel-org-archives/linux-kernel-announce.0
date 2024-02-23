Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AB3791401D
	for <linux-kernel-announce@vger.kernel.org>; Fri, 23 Feb 2024 07:40:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708674043; cv=none; b=NmYEICwt8aHcFzkSj47PbsEtNsHPZAQVdYV+K1GB4A632nK2pZGwttWTltkk1SJWZD/a/VI8XQ9YRt61mFZSsQ0N+9J9KhXRmHkDJii5NTsvfFmG3iT3YvQILWuyZiYLPIIdsNapjkwP1VxWvwPfzOmw98Rz0sGsfAMWPfAnvjg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708674043; c=relaxed/simple;
	bh=x7OIr6cswIKk5WNM813udyzDm1RKQOQ2ow4hcC1sAmY=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=YUO0QPSJEoEa7XppNRXYYpw/BCw/J5I765Ncb45yKdVRAgblj17GK3+LHM6FCEnyIIUyJKkRev4weMMNnmm/vi22rvohvwk2uYIAm+kW/rUGhX6vDBPNgB2XV5RDGoMjY2RuqdmIjHD6hrfCPbzZahtIGjF9QmIh8tR3UtSwo5A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1708674043;
	bh=x7OIr6cswIKk5WNM813udyzDm1RKQOQ2ow4hcC1sAmY=;
	h=Subject:From:To:Date:From;
	b=KwY6ph4SFtbpgg5+LqykTaRS5RWVSVuByw/8U3gLoqImRrBWsiGihMrufl/hTx2W+
	 WQxu8J7IIN+oHSOJWbuRxJUTWTRI+HGX3jxR+YDGYCYLeuJzxLKDaAqOozcthhQ5fg
	 U/SwtQtzayaP5F1kXkhHsCUSWXnPd+8Ci3fNuAH8=
Received: by smtp.kernel.org (Postfix) with ESMTPS id 2F832C433C7
	for <linux-kernel-announce@vger.kernel.org>; Fri, 23 Feb 2024 07:40:43 +0000 (UTC)
Received: from aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (localhost.localdomain [127.0.0.1])
	by aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (Postfix) with ESMTP id 08BD6D990CB
	for <linux-kernel-announce@vger.kernel.org>; Fri, 23 Feb 2024 07:40:43 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 5.4.269 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Fri, 23 Feb 2024 07:40:42 +0000
Message-Id: <20240223074042.release-5.4.269@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 5.4.269
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.4.269.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v5.x/patch-5.4.269.xz

Linux kernel version 5.4.269 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.4.269.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v5.x/patch-5.4.269.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.4.269.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v5.4.269/v5.4.268

