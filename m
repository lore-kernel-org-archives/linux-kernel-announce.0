Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E1B2757F3
	for <linux-kernel-announce@vger.kernel.org>; Thu, 10 Apr 2025 13:25:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744291506; cv=none; b=B7aSNeCtD6CJCnxJzgfes1T65J8E3OD9vbDnXBbIIldp/RmgPCE47FQOHcws3QGa3ScUrqqz1dyaoQ5pdg8Vx9mIa/fZtsKLpHxGE5budBwAePhOw184PTLeYB+XUUh5TWZwynK47k1AjbD4RtvBUJ5eXIZnWe54f6lEkwSq2ro=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744291506; c=relaxed/simple;
	bh=5HsNt8MPPCPkhUjw+/HrhCgDjc53Mj0aHKR3G1zKNFA=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=B/hZgXpkdaaFOIJv1iJR6Or7YRbcPtR7YKzDtvLhYS+3fIVw81bvPksaAMo1AIDlY/dDkecIRToQM1zm0HiBSUYBwsjMu1tmr38EuAbWCZK8alZpJ03L564nsAA6Whey7TMXjcU4oBo5mBqBqPsUH3GZeOK4XdhFkvANFjImxUE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1744291506;
	bh=5HsNt8MPPCPkhUjw+/HrhCgDjc53Mj0aHKR3G1zKNFA=;
	h=Subject:From:To:Date:From;
	b=aq9cogve+qaV8rGrTqLV9XAgU7lZfGneh4Yv8pM0vQbelxRnFAH9yQIIA3FiOuEa2
	 AK0P2OF3kt6VPe1NNbTZ7vHlUHcx1cD+DTQ4055A7PZ1muI82xBWOhvpV6ZWKGpk+x
	 RxVb64W0BSkZovdpL5hRiP+lGJxj7JlFJSASPs5M=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DCDBDC4CEE8
	for <linux-kernel-announce@vger.kernel.org>; Thu, 10 Apr 2025 13:25:05 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id 778A1380CEF4
	for <linux-kernel-announce@vger.kernel.org>; Thu, 10 Apr 2025 13:25:44 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.14.2 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Thu, 10 Apr 2025 13:25:43 +0000
Message-Id: <20250410132543.release-6.14.2@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.14.2
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.14.2.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.14.2.xz

Linux kernel version 6.14.2 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.14.2.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.14.2.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.14.2.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.14.2/v6.14.1

